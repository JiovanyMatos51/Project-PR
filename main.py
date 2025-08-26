import os
import json
import base64
import sqlite3
import shutil
from Cryptodome.Cipher import AES
import win32crypt  # parte do pywin32, só funciona no Windows

# --- CONFIGURAÇÃO ---
# Caminhos padrão do Chrome no Windows
chrome_user_data = os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\User Data\Default")
login_db_path = os.path.join(chrome_user_data, "Login Data")
local_state_path = os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\User Data\Local State")

# Criar cópia temporária do Login Data
temp_login_db = "LoginDataCopy.db"
shutil.copy2(login_db_path, temp_login_db)

# --- PASSO 1: extrair chave AES do Local State ---
with open(local_state_path, "r", encoding="utf-8") as f:
    local_state = json.load(f)

encrypted_key_b64 = local_state["os_crypt"]["encrypted_key"]
encrypted_key = base64.b64decode(encrypted_key_b64)

# Remover prefixo DPAPI
if encrypted_key[:5] == b"DPAPI":
    encrypted_key = encrypted_key[5:]

# Descriptografar chave AES via DPAPI
key = win32crypt.CryptUnprotectData(encrypted_key, None, None, None, 0)[1]

# --- PASSO 2: abrir SQLite e ler senhas ---
conn = sqlite3.connect(temp_login_db)
cursor = conn.cursor()

cursor.execute("SELECT origin_url, username_value, password_value FROM logins")
for row in cursor.fetchall():
    url = row[0]
    username = row[1]
    encrypted_password = row[2]
    
    try:
        # Certificar que é bytes
        if isinstance(encrypted_password, memoryview):
            encrypted_password = encrypted_password.tobytes()
        elif isinstance(encrypted_password, str):
            encrypted_password = encrypted_password.encode('utf-8')

        # Detectar se é v10/v11 (AES-GCM)
        if encrypted_password[:3] == b'v10' or encrypted_password[:3] == b'v11':
            iv = encrypted_password[3:15]  # 12 bytes
            ciphertext = encrypted_password[15:-16]
            tag = encrypted_password[-16:]

            cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
            password = cipher.decrypt_and_verify(ciphertext, tag).decode()
        else:
            # Formato legado DPAPI
            password = win32crypt.CryptUnprotectData(encrypted_password, None, None, None, 0)[1].decode()
    except Exception as e:
        password = f"[ERRO] {str(e)}"

    print(f"URL: {url}\nUsername: {username}\nPassword: {password}\n{'-'*30}")

# --- LIMPEZA ---
conn.close()
os.remove(temp_login_db)

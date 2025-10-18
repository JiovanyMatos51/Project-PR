-- Information
local title = "Kofu SAB Hacks"
local versao = "v1.5.0"
local logotitle = "KF"
local canvasy = 1.5

-- Variables
local plr = game.Players.LocalPlayer
local Character = plr.Character or plr.CharacterAdded:Wait()
local plrgui = plr:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera

-- Tabelas
local Services = {
	game:GetService("Workspace"),
	game:GetService("ReplicatedStorage"),
	game:GetService("ReplicatedFirst"),
	game:GetService("Lighting"),
	plr,
	game:GetService("StarterGui")
}

local IgnoreList = {
	"Side 1",
	"Side 2",
	"Side 3",
	"PointLight",
	"Attachment",
	"Beam",
	"UIGradient",
	"UIStroke",
	"UIListLayout"
}

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
ScreenGui.IgnoreGuiInset = true

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.1982836, 0, 0.4438471, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.1
Frame.Position = UDim2.new(0.409114, 0, 0.2076206, 0)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 0.775, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 0.95
ScrollingFrame.Position = UDim2.new(0, 0, 0.1565079, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, canvasy, 0)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.ScrollBarImageTransparency = 1
ScrollingFrame.Parent = Frame

local ZListins = Instance.new("TextButton")
ZListins.Name = "ZListins"
ZListins.Size = UDim2.new(0, 200, 0, 50)
ZListins.BorderColor3 = Color3.fromRGB(255, 255, 255)
ZListins.BackgroundTransparency = 0.1
ZListins.BorderSizePixel = 0
ZListins.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
ZListins.FontSize = Enum.FontSize.Size14
ZListins.TextStrokeTransparency = 0
ZListins.TextSize = 14
ZListins.TextColor3 = Color3.fromRGB(255, 255, 255)
ZListins.Text = "List Ativos"
ZListins.TextWrapped = true
ZListins.TextWrap = true
ZListins.Font = Enum.Font.FredokaOne
ZListins.TextScaled = true
ZListins.Parent = ScrollingFrame

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0, 12)
UICorner1.Parent = ZListins

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Parent = ZListins

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIGridLayout.CellSize = UDim2.new(0.9, 0, 0.1, 0)
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 20)
UIGridLayout.Parent = ScrollingFrame

local ADash = Instance.new("TextButton")
ADash.Name = "ADash"
ADash.Size = UDim2.new(0, 200, 0, 50)
ADash.BorderColor3 = Color3.fromRGB(255, 255, 255)
ADash.BackgroundTransparency = 0.1
ADash.BorderSizePixel = 0
ADash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ADash.FontSize = Enum.FontSize.Size14
ADash.TextStrokeTransparency = 0
ADash.TextSize = 14
ADash.TextColor3 = Color3.fromRGB(255, 255, 255)
ADash.Text = "Atravessar"
ADash.TextWrapped = true
ADash.TextWrap = true
ADash.Font = Enum.Font.FredokaOne
ADash.TextScaled = true
ADash.Parent = ScrollingFrame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 12)
UICorner2.Parent = ADash

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.Color = Color3.fromRGB(255, 255, 255)
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Thickness = 2
UIStroke1.Parent = ADash

local ESalto = Instance.new("TextButton")
ESalto.Name = "ESalto"
ESalto.Size = UDim2.new(0, 200, 0, 50)
ESalto.BorderColor3 = Color3.fromRGB(255, 255, 255)
ESalto.BackgroundTransparency = 0.1
ESalto.BorderSizePixel = 0
ESalto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ESalto.FontSize = Enum.FontSize.Size14
ESalto.TextStrokeTransparency = 0
ESalto.TextSize = 14
ESalto.TextColor3 = Color3.fromRGB(255, 255, 255)
ESalto.Text = "Salto"
ESalto.TextWrapped = true
ESalto.TextWrap = true
ESalto.Font = Enum.Font.FredokaOne
ESalto.TextScaled = true
ESalto.Parent = ScrollingFrame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 12)
UICorner3.Parent = ESalto

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = ESalto

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 1.0215054
UIAspectRatioConstraint.Parent = ScrollingFrame

local DVelocidade = Instance.new("TextButton")
DVelocidade.Name = "DVelocidade"
DVelocidade.Size = UDim2.new(0, 200, 0, 50)
DVelocidade.BorderColor3 = Color3.fromRGB(255, 255, 255)
DVelocidade.BackgroundTransparency = 0.1
DVelocidade.BorderSizePixel = 0
DVelocidade.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DVelocidade.FontSize = Enum.FontSize.Size14
DVelocidade.TextStrokeTransparency = 0
DVelocidade.TextSize = 14
DVelocidade.TextColor3 = Color3.fromRGB(255, 255, 255)
DVelocidade.Text = "Velocidade"
DVelocidade.TextWrapped = true
DVelocidade.TextWrap = true
DVelocidade.Font = Enum.Font.FredokaOne
DVelocidade.TextScaled = true
DVelocidade.Parent = ScrollingFrame

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 12)
UICorner4.Parent = DVelocidade

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = Color3.fromRGB(255, 255, 255)
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Thickness = 2
UIStroke3.Parent = DVelocidade

local CTeleportBase = Instance.new("TextButton")
CTeleportBase.Name = "CTeleportBase"
CTeleportBase.Size = UDim2.new(0, 200, 0, 50)
CTeleportBase.BorderColor3 = Color3.fromRGB(255, 255, 255)
CTeleportBase.BackgroundTransparency = 0.1
CTeleportBase.BorderSizePixel = 0
CTeleportBase.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CTeleportBase.FontSize = Enum.FontSize.Size14
CTeleportBase.TextStrokeTransparency = 0
CTeleportBase.TextSize = 14
CTeleportBase.TextColor3 = Color3.fromRGB(255, 255, 255)
CTeleportBase.Text = "Fast TP"
CTeleportBase.TextWrapped = true
CTeleportBase.TextWrap = true
CTeleportBase.Font = Enum.Font.FredokaOne
CTeleportBase.TextScaled = true
CTeleportBase.Parent = ScrollingFrame

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 12)
UICorner5.Parent = CTeleportBase

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = Color3.fromRGB(255, 255, 255)
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Thickness = 2
UIStroke4.Parent = CTeleportBase

local BElevation = Instance.new("TextButton")
BElevation.Name = "BElevation"
BElevation.Size = UDim2.new(0, 200, 0, 50)
BElevation.BorderColor3 = Color3.fromRGB(255, 255, 255)
BElevation.BackgroundTransparency = 0.1
BElevation.BorderSizePixel = 0
BElevation.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BElevation.FontSize = Enum.FontSize.Size14
BElevation.TextStrokeTransparency = 0
BElevation.TextSize = 14
BElevation.TextColor3 = Color3.fromRGB(255, 255, 255)
BElevation.Text = "Elevation"
BElevation.TextWrapped = true
BElevation.TextWrap = true
BElevation.Font = Enum.Font.FredokaOne
BElevation.TextScaled = true
BElevation.Parent = ScrollingFrame

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 12)
UICorner6.Parent = BElevation

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = Color3.fromRGB(255, 255, 255)
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Thickness = 2
UIStroke5.Parent = BElevation

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.6842105, 0, 0.1555556, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0284874, 0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 14
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Text = title
TextLabel.TextWrapped = true
TextLabel.TextWrap = true
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.TextScaled = true
TextLabel.Parent = Frame

local UIAspectRatioConstraint1 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint1.AspectRatio = 3.4821424
UIAspectRatioConstraint1.Parent = TextLabel

local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Color = Color3.fromRGB(255, 255, 255)
UIStroke6.Thickness = 2
UIStroke6.Parent = Frame

local TextLabel1 = Instance.new("TextLabel")
TextLabel1.Size = UDim2.new(0.3052632, 0, 0.0638889, 0)
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.7095547, 0, 0.9293122, 0)
TextLabel1.BorderSizePixel = 0
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.FontSize = Enum.FontSize.Size14
TextLabel1.TextStrokeTransparency = 0
TextLabel1.TextSize = 14
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.Text = versao
TextLabel1.TextWrapped = true
TextLabel1.TextWrap = true
TextLabel1.Font = Enum.Font.FredokaOne
TextLabel1.TextScaled = true
TextLabel1.Parent = Frame

local UIAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint2.AspectRatio = 3.782608
UIAspectRatioConstraint2.Parent = TextLabel1

local reduce = Instance.new("TextButton")
reduce.Name = "reduce"
reduce.Size = UDim2.new(0.1052632, 0, 0.0833333, 0)
reduce.BorderColor3 = Color3.fromRGB(0, 0, 0)
reduce.Position = UDim2.new(0.867189, 0, 0.0361111, 0)
reduce.BorderSizePixel = 0
reduce.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
reduce.FontSize = Enum.FontSize.Size14
reduce.TextSize = 14
reduce.TextColor3 = Color3.fromRGB(0, 0, 0)
reduce.Text = "X"
reduce.TextWrapped = true
reduce.TextWrap = true
reduce.Font = Enum.Font.SourceSansBold
reduce.TextScaled = true
reduce.Parent = Frame

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(1, 0)
UICorner7.Parent = reduce

local UIAspectRatioConstraint3 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint3.AspectRatio = 0.9999999
UIAspectRatioConstraint3.Parent = reduce

local UIDragDetector = Instance.new("UIDragDetector")
UIDragDetector.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Visible = false
TextBox.Size = UDim2.new(0.7017544, 0, 0.9888889, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 0.2
TextBox.Position = UDim2.new(-0.7789474, 0, 0.0083333, 0)
TextBox.BorderSizePixel = 0
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.FontSize = Enum.FontSize.Size14
TextBox.TextSize = 14
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.Font = Enum.Font.FredokaOne
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true
TextBox.Parent = Frame

local UICorner8 = Instance.new("UICorner")
UICorner8.CornerRadius = UDim.new(0, 12)
UICorner8.Parent = TextBox

local UIAspectRatioConstraint4 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint4.AspectRatio = 0.5617977
UIAspectRatioConstraint4.Parent = TextBox

local UIAspectRatioConstraint5 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint5.AspectRatio = 0.7916666
UIAspectRatioConstraint5.Parent = Frame

local Value = Instance.new("TextBox")
Value.Name = "Value"
Value.Size = UDim2.new(0.2576399, 0, 0.1568961, 0)
Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value.BackgroundTransparency = 0.1
Value.Position = UDim2.new(1.0561657, 0, 0.29893, 0)
Value.BorderSizePixel = 0
Value.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Value.FontSize = Enum.FontSize.Size14
Value.TextWrapped = true
Value.TextWrap = true
Value.TextSize = 14
Value.TextColor3 = Color3.fromRGB(255, 99, 0)
Value.PlaceholderText = "Value"
Value.Text = ""
Value.CursorPosition = -1
Value.Font = Enum.Font.FredokaOne
Value.Parent = Frame
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true

local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(0, 12)
UICorner9.Parent = Value

local open = Instance.new("TextButton")
open.Name = "open"
open.Visible = false
open.Size = UDim2.new(0.0422544, 0, 0.0739076, 0)
open.BorderColor3 = Color3.fromRGB(0, 0, 0)
open.Position = UDim2.new(0.128125, 0, 0.1629526, 0)
open.BorderSizePixel = 0
open.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
open.FontSize = Enum.FontSize.Size48
open.TextSize = 40
open.TextColor3 = Color3.fromRGB(255, 255, 255)
open.Text = logotitle
open.TextWrapped = true
open.TextWrap = true
open.Font = Enum.Font.FredokaOne
open.Parent = ScreenGui

local UICorner10 = Instance.new("UICorner")
UICorner10.CornerRadius = UDim.new(1, 0)
UICorner10.Parent = open

local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Color = Color3.fromRGB(255, 255, 255)
UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke7.Thickness = 2
UIStroke7.Parent = open

local UIAspectRatioConstraint6 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint6.Parent = open

-- UI Funcionalitty
ScreenGui.Parent = plrgui

reduce.MouseButton1Click:Connect(function()
	Frame.Visible = false
	open.Visible = true
end)

open.MouseButton1Click:Connect(function()
	Frame.Visible = true
	open.Visible = false
end)

local function getNumericValue()
	local val = tonumber(Value.Text)
	if val == nil then
		return nil
	end
	return val
end

-- Função que verifica se o nome contém uma das palavras da lista
local function shouldIgnore(name)
	local lowerName = string.lower(name)
	for _, word in ipairs(IgnoreList) do
		if string.find(lowerName, string.lower(word)) then
			return true
		end
	end
	return false
end

-- Função recursiva para montar lista hierárquica
local function listInstances(parent, depth)
	local lines = {}
	local prefix = string.rep("-", depth)

	for _, obj in ipairs(parent:GetChildren()) do
		if not shouldIgnore(obj.Name) then
			table.insert(lines, string.format("%s %s (%s)", prefix, obj.Name, obj.ClassName))
			-- recursão só acontece se o item não foi ignorado
			local descendants = listInstances(obj, depth + 1)
			for _, line in ipairs(descendants) do
				table.insert(lines, line)
			end
		end
	end

	return lines
end

-- Função principal
local function listAllInstances()
	local lines = {}
	table.insert(lines, "=== Lista de instâncias acessíveis ===\n")

	for _, service in ipairs(Services) do
		if not shouldIgnore(service.Name) then
			table.insert(lines, string.format("(%s)", service.Name))
			local descendants = listInstances(service, 1)
			for _, line in ipairs(descendants) do
				table.insert(lines, line)
			end
			table.insert(lines, "")
		end
	end

	return table.concat(lines, "\n")
end


-- NO CLIP
local function teleportForward()
	-- Atualiza as referências (caso o personagem tenha respawnado)
	Character = plr.Character or plr.CharacterAdded:Wait()
	local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
	if not HumanoidRootPart then return end
	-- Pega a direção da câmera (onde o player está olhando)
	local lookVector = Camera.CFrame.LookVector
	-- Calcula a nova posição
	local val = getNumericValue()
	if not val then return end
	local newPosition = HumanoidRootPart.Position + (lookVector * val)
	-- Move o player pra lá
	HumanoidRootPart.CFrame = CFrame.new(newPosition, newPosition + lookVector)
end


-- Buttons

ZListins.MouseButton1Click:Connect(function()
	if TextBox.Visible == false then
	TextBox.Visible = true
	local output = listAllInstances()
		TextBox.Text = output
		
	else
		TextBox.Visible = false
	end
end)

ADash.MouseButton1Click:Connect(function()
		teleportForward()
end)

DVelocidade.MouseButton1Click:Connect(function()
	Character = plr.Character or plr.CharacterAdded:Wait()
	local Humanoid = Character:WaitForChild("Humanoid")
	local val = getNumericValue()
	if not val then return end
	Humanoid.WalkSpeed = val
end)

-- Altera altura do pulo
ESalto.MouseButton1Click:Connect(function()
	Character = plr.Character or plr.CharacterAdded:Wait()
	local Humanoid = Character:WaitForChild("Humanoid")
	local val = getNumericValue()
	if not val then return end
	if Humanoid.JumpHeight then
		Humanoid.JumpHeight = val
	else
		Humanoid.JumpPower = val
	end
end)

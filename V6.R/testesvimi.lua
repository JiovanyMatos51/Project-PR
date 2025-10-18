-- version 1.7.1
local plr = game.Players.LocalPlayer
local plrgui = plr:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.1720094, 0, 0.1388889, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.1
Frame.Position = UDim2.new(0.3018006, 0, 0.2284123, 0)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.Parent = ScreenGui

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.9090909, 0, 0.5, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.0409563, 0, 0.2480501, 0)
TextButton.BorderSizePixel = 0
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.FontSize = Enum.FontSize.Size14
TextButton.TextSize = 14
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Text = "Depurar"
TextButton.TextWrapped = true
TextButton.TextWrap = true
TextButton.Font = Enum.Font.FredokaOne
TextButton.TextScaled = true
TextButton.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.9545454, 0, 3.9999998, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 0.1
TextBox.Position = UDim2.new(1.1972729, 0, -0.05, 0)
TextBox.BorderSizePixel = 0
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.FontSize = Enum.FontSize.Size14
TextBox.TextSize = 14
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Text = ""
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false
TextBox.CursorPosition = -1
TextBox.Font = Enum.Font.SourceSans
TextBox.Parent = Frame

local UIDragDetector = Instance.new("UIDragDetector")
UIDragDetector.Parent = Frame

ScreenGui.Parent = plrgui

-- Serviços que o cliente pode acessar
local Services = {
	--game:GetService("Workspace"),
	game:GetService("ReplicatedStorage"),
	game:GetService("ReplicatedFirst"),
	game:GetService("Lighting"),
}

-- Função recursiva para montar lista hierárquica
local function listInstances(parent, depth)
	local lines = {}
	local prefix = string.rep("-", depth)
	for _, obj in ipairs(parent:GetChildren()) do
		table.insert(lines, string.format("%s %s (%s)", prefix, obj.Name, obj.ClassName))
		local descendants = listInstances(obj, depth + 1)
		for _, line in ipairs(descendants) do
			table.insert(lines, line)
		end
	end
	return lines
end

-- Função principal que lista todos os serviços e objetos
local function listAllInstances()
	local lines = {}
	--table.insert(lines, "=== Lista de instâncias acessíveis ===\n")

	for _, service in ipairs(Services) do
		table.insert(lines, string.format("(%s)", service.Name))
		local descendants = listInstances(service, 1)
		for _, line in ipairs(descendants) do
			table.insert(lines, line)
		end
		table.insert(lines, "")
	end

	return table.concat(lines, "\n")
end

TextButton.MouseButton1Click:Connect(function()
	local output = listAllInstances()
	TextBox.Text = output
end)

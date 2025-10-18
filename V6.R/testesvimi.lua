-- Information
local title = "Kofu SAB Hacks"
local versao = "v0.1.0"
local logotitle = "KF"
local canvasy = 1.5

-- Variables
local plr = game.Players.LocalPlayer
local plrgui = plr:WaitForChild("PlayerGui")

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
UIGridLayout.CellSize = UDim2.new(0.83, 0, 0.1, 0)
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 20)
UIGridLayout.Parent = ScrollingFrame

local BTeleportBase = Instance.new("TextButton")
BTeleportBase.Name = "BTeleportBase"
BTeleportBase.Size = UDim2.new(0, 200, 0, 50)
BTeleportBase.BorderColor3 = Color3.fromRGB(255, 255, 255)
BTeleportBase.BackgroundTransparency = 0.1
BTeleportBase.BorderSizePixel = 0
BTeleportBase.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BTeleportBase.FontSize = Enum.FontSize.Size14
BTeleportBase.TextStrokeTransparency = 0
BTeleportBase.TextSize = 14
BTeleportBase.TextColor3 = Color3.fromRGB(255, 255, 255)
BTeleportBase.Text = "Fast TP"
BTeleportBase.TextWrapped = true
BTeleportBase.TextWrap = true
BTeleportBase.Font = Enum.Font.FredokaOne
BTeleportBase.TextScaled = true
BTeleportBase.Parent = ScrollingFrame

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 12)
UICorner2.Parent = BTeleportBase

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.Color = Color3.fromRGB(255, 255, 255)
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Thickness = 2
UIStroke1.Parent = BTeleportBase

local CNoClip = Instance.new("TextButton")
CNoClip.Name = "CNoClip"
CNoClip.Size = UDim2.new(0, 200, 0, 50)
CNoClip.BorderColor3 = Color3.fromRGB(255, 255, 255)
CNoClip.BackgroundTransparency = 0.1
CNoClip.BorderSizePixel = 0
CNoClip.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CNoClip.FontSize = Enum.FontSize.Size14
CNoClip.TextStrokeTransparency = 0
CNoClip.TextSize = 14
CNoClip.TextColor3 = Color3.fromRGB(255, 255, 255)
CNoClip.Text = "No Clip"
CNoClip.TextWrapped = true
CNoClip.TextWrap = true
CNoClip.Font = Enum.Font.FredokaOne
CNoClip.TextScaled = true
CNoClip.Parent = ScrollingFrame

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 12)
UICorner3.Parent = CNoClip

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Thickness = 2
UIStroke2.Parent = CNoClip

local DInvencible = Instance.new("TextButton")
DInvencible.Name = "DInvencible"
DInvencible.Size = UDim2.new(0, 200, 0, 50)
DInvencible.BorderColor3 = Color3.fromRGB(255, 255, 255)
DInvencible.BackgroundTransparency = 0.1
DInvencible.BorderSizePixel = 0
DInvencible.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DInvencible.FontSize = Enum.FontSize.Size14
DInvencible.TextStrokeTransparency = 0
DInvencible.TextSize = 14
DInvencible.TextColor3 = Color3.fromRGB(255, 255, 255)
DInvencible.Text = "Invencible"
DInvencible.TextWrapped = true
DInvencible.TextWrap = true
DInvencible.Font = Enum.Font.FredokaOne
DInvencible.TextScaled = true
DInvencible.Parent = ScrollingFrame

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 12)
UICorner4.Parent = DInvencible

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = Color3.fromRGB(255, 255, 255)
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Thickness = 2
UIStroke3.Parent = DInvencible

local AElevation = Instance.new("TextButton")
AElevation.Name = "AElevation"
AElevation.Size = UDim2.new(0, 200, 0, 50)
AElevation.BorderColor3 = Color3.fromRGB(255, 255, 255)
AElevation.BackgroundTransparency = 0.1
AElevation.BorderSizePixel = 0
AElevation.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AElevation.FontSize = Enum.FontSize.Size14
AElevation.TextStrokeTransparency = 0
AElevation.TextSize = 14
AElevation.TextColor3 = Color3.fromRGB(255, 255, 255)
AElevation.Text = "Elevation"
AElevation.TextWrapped = true
AElevation.TextWrap = true
AElevation.Font = Enum.Font.FredokaOne
AElevation.TextScaled = true
AElevation.Parent = ScrollingFrame

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 12)
UICorner5.Parent = AElevation

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = Color3.fromRGB(255, 255, 255)
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Thickness = 2
UIStroke4.Parent = AElevation

local XListBR = Instance.new("TextButton")
XListBR.Name = "XListBR"
XListBR.Size = UDim2.new(0, 200, 0, 50)
XListBR.BorderColor3 = Color3.fromRGB(255, 255, 255)
XListBR.BackgroundTransparency = 0.1
XListBR.BorderSizePixel = 0
XListBR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
XListBR.FontSize = Enum.FontSize.Size14
XListBR.TextStrokeTransparency = 0
XListBR.TextSize = 14
XListBR.TextColor3 = Color3.fromRGB(255, 255, 255)
XListBR.Text = "List BRoots"
XListBR.TextWrapped = true
XListBR.TextWrap = true
XListBR.Font = Enum.Font.FredokaOne
XListBR.TextScaled = true
XListBR.Parent = ScrollingFrame

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 12)
UICorner6.Parent = XListBR

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = Color3.fromRGB(255, 255, 255)
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Thickness = 2
UIStroke5.Parent = XListBR

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 1.0215054
UIAspectRatioConstraint.Parent = ScrollingFrame

local TextLabel = Instance.new("TextLabel") -- UI TITLE
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

local TextLabel1 = Instance.new("TextLabel") -- VERSION TITLE
TextLabel1.Size = UDim2.new(0.3052632, 0, 0.0638889, 0)
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.7382423, 0, 0.9338543, 0)
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
TextBox.CursorPosition = -1
TextBox.Font = Enum.Font.FredokaOne
TextBox.ClearTextOnFocus = false
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

local open = Instance.new("TextButton") -- BUTTON TITLE
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

local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(1, 0)
UICorner9.Parent = open

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

-- Main Functions

local Services = {
	game:GetService("Workspace"),
	game:GetService("ReplicatedStorage"),
	game:GetService("ReplicatedFirst"),
	game:GetService("Lighting"),
	game:GetService("Players"),
	game:GetService("StarterGui")
}

local function listAllInstances()
	local lines = {}
	table.insert(lines, "=== Lista de instâncias acessíveis ===\n")

	for _, service in ipairs(Services) do
		table.insert(lines, string.format("[%s]", service.Name))
		for _, descendant in ipairs(service:GetDescendants()) do
			table.insert(lines, string.format(" - %s (%s)", descendant.Name, descendant.ClassName))
		end
		table.insert(lines, "") -- linha em branco pra separar serviços
	end

	return table.concat(lines, "\n")
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

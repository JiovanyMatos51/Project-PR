local plr = game.Players.LocalPlayer
local plrgui = plr:WaitForChild("PlayerGui")

local newgui = Instance.new("ScreenGui")
newgui.Parent = plrgui
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0,200,0,100)
frame.Position = UDim2.new(0.5,-100,0.3,0)
frame.Parent = newgui
frame.BackgroundColor3 = Color3.new(255,255,255)
local text1 = Instance.new("TextLabel")
text1.Size = UDim2.new(0,180,0,50)
text1.Position = UDim2.new(0,0,0,20)
text1.Parent = frame
text1.BackgroundTransparency = 1
text1.Text = "O Kotoko é gay"
wait(1)
local part = Instance.new("Part")
part.Size = Vector3.new(4,4,4)
part.Parent = workspace
part.Anchored = true
part.Position = plr.Character.HumanoidRootPart.Position
local spmesh = Instance.new("SpecialMesh")
spmesh.Parent = part
spmesh.MeshId = "rbxassetid://14579252063"
spmesh.TextureId = "rbxassetid://14579294286"
spmesh.Scale = Vector3.new(3,3,3)

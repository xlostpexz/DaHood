local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NiceBBMBThai12/NBTScript/main/UI-Library-Robloxx"))()
local window = library:Win()
local tap1 = window:addtap("Main")
local page1 = tap1:addpage()
local Tab2 = tap1:addpage()
local tap2 = window:addtap("Players")
local page2 = tap2:addpage()
local tap3 = window:addtap("Misc")
local page3 = tap3:addpage()
page1:Ti("Winnable Hub")

page1:Button("Fake Headless", function(value)
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Head.face:Destroy()
end)

page1:Button("Force Reset", function(value)
game.Players.LocalPlayer.Character.RagdollConstraints:Destroy()
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.UpperTorso:Destroy()
game.Players.LocalPlayer.Character.LowerTorso:Destroy()
game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
game.Players.LocalPlayer.Character.LeftFoot:Destroy()
game.Players.LocalPlayer.Character.RightFoot:Destroy()
game.Players.LocalPlayer.Character.RightHand:Destroy()
game.Players.LocalPlayer.Character.LeftHand:Destroy()
game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
end)

page1:Toggle("Anti Stomp",_G.AntiStomp, function(value)
_G.AntiStomp = value

while _G.AntiStomp do wait()

if game.Players.LocalPlayer.Character.Humanoid.Health <= 10 then

game.Players.LocalPlayer.Character.RagdollConstraints:Destroy()
game.Players.LocalPlayer.Character.Head:Destroy()
game.Players.LocalPlayer.Character.UpperTorso:Destroy()
game.Players.LocalPlayer.Character.LowerTorso:Destroy()
game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
game.Players.LocalPlayer.Character.LeftFoot:Destroy()
game.Players.LocalPlayer.Character.RightFoot:Destroy()
game.Players.LocalPlayer.Character.RightHand:Destroy()
game.Players.LocalPlayer.Character.LeftHand:Destroy()
game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()

end
end
end)

page1:Toggle("NoClip",_G.NoClip, function(value)
    _G.NoClip = value
end)



Tab2:Ti("Teleport")

Tab2:Button("Bank",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-442.753174, 38.9685211, -284.028503, -0.0448685288, -5.26922932e-08, -0.99899292, -1.57060143e-08, 1, -5.20399972e-08, 0.99899292, 1.33552396e-08, -0.0448685288)
end)

Tab2:Button("Revolver",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-639.467468, 21.7239666, -119.111534, 0.954152107, 2.84265109e-08, -0.299322098, -2.07233857e-08, 1, 2.89094881e-08, 0.299322098, -2.13810818e-08, 0.954152107)
end)

Tab2:Button("Double Barrel SG",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1040.97473, 21.7239666, -256.924622, -0.501451194, -5.60000437e-08, -0.865185916, 1.93043403e-09, 1, -6.58448798e-08, 0.865185916, -3.46881777e-08, -0.501451194)
end)

Tab2:Button("Armor 1",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.00769, 10.323658, -788.567139, 0.48220554, 1.43717732e-10, 0.876058102, 3.64347379e-08, 1, -2.02186943e-08, -0.876058102, 4.1668514e-08, 0.48220554)
end)

Tab2:Button("Armor 2",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(529.551819, 50.3012276, -634.800781, 0.380402684, 3.53776635e-08, 0.92482096, -9.95104621e-09, 1, -3.41604043e-08, -0.92482096, 3.79177356e-09, 0.380402684)
end)

Tab2:Button("Admin Base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-797.03009, -39.6752396, -885.911011, -0.0961981341, 3.61472949e-08, -0.995362222, 5.18819157e-08, 1, 3.13015214e-08, 0.995362222, -4.86301488e-08, -0.0961981341)
end)

players = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end


local getdrop = page2:DropDown("Select Players","Name",players, function(value)
    Select = value
end)

page2:Button("Refresh",function()
        table.clear(players)
for i,v in pairs(game:GetService("Players"):GetChildren()) do
   table.insert(players,v.Name)
end
end)

page2:Button("Teleport Players", function(value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0)
end)

page2:Toggle("Auto Players",_G.FA,function(value)
    _G.FA = value
    while _G.FA do wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Select].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0)
    end
end)

page2:Toggle("Spectate",Sp,function(bool)
                                        Sp = bool
                                    local plr1 = game.Players.LocalPlayer.Character.Humanoid
                                    local plr2 = game.Players:FindFirstChild(Select)
                                    repeat wait(.1)
                                        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
                                    until Sp == false 
                                    game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end)

page3:Button("Script Fling", function(value)
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and _G.NoClip then
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end)
end)

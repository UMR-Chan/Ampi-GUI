-- Import necessary services and define constants
local Players = game:GetService("Players")
local ampiId = 9107148594

-- Create the main GUI elements
local ampi = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local killAll = Instance.new("TextButton")
local skybox = Instance.new("TextButton")
local warn = Instance.new("TextButton")
local speed = Instance.new("TextButton")
local hint = Instance.new("TextButton")
local decalSpam = Instance.new("TextButton")
local spookySkeletons = Instance.new("TextButton")
local rickRoll = Instance.new("TextButton")
local sans = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local esp = Instance.new("TextButton")
local aimbot = Instance.new("TextButton")
local infiniteJump = Instance.new("TextButton")

-- Set properties for the main GUI
ampi.Name = "ampi"
ampi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ampi.Enabled = true
ampi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ampi
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(85, 0, 127)
Frame.BorderSizePixel = 5
Frame.Size = UDim2.new(0, 179, 0, 550)
Frame.Position = UDim2.new(0.5, -89.5, 0.5, -275) -- Center the window

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 179, 0, 20)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "AMPI GUI"
TextLabel.TextColor3 = Color3.fromRGB(85, 0, 127)
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(85, 0, 127)

-- Create and configure buttons with their respective functions

-- Kill All Button
killAll.Name = "killAll"
killAll.Parent = Frame
killAll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
killAll.BorderColor3 = Color3.fromRGB(85, 0, 127)
killAll.BorderSizePixel = 3
killAll.Position = UDim2.new(0, 0, 0.0413223132, 0)
killAll.Size = UDim2.new(0, 179, 0, 50)
killAll.Font = Enum.Font.SourceSans
killAll.Text = "Kill All"
killAll.TextColor3 = Color3.fromRGB(85, 0, 127)
killAll.TextSize = 14.000

killAll.MouseButton1Click:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.Health = 0
        end
    end
end)

-- Skybox Button
skybox.Name = "skybox"
skybox.Parent = Frame
skybox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
skybox.BorderColor3 = Color3.fromRGB(85, 0, 127)
skybox.BorderSizePixel = 3
skybox.Position = UDim2.new(0, 0, 0.157024801, 0)
skybox.Size = UDim2.new(0, 80, 0, 50)
skybox.Font = Enum.Font.SourceSans
skybox.Text = "Set Skybox"
skybox.TextColor3 = Color3.fromRGB(85, 0, 127)
skybox.TextSize = 14.000

skybox.MouseButton1Click:Connect(function()
    if game.Lighting:FindFirstChildOfClass("Sky") then
        game.Lighting:FindFirstChildOfClass("Sky"):Destroy()
    end
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "rbxassetid://101675974762577"
    sky.SkyboxDn = "rbxassetid://101675974762577"
    sky.SkyboxFt = "rbxassetid://101675974762577"
    sky.SkyboxRt = "rbxassetid://101675974762577"
    sky.SkyboxUp = "rbxassetid://101675974762577"
    sky.SkyboxLf = "rbxassetid://101675974762577"
    sky.Parent = game.Lighting
end)

-- Warning Button
warn.Name = "warn"
warn.Parent = Frame
warn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
warn.BorderColor3 = Color3.fromRGB(85, 0, 127)
warn.BorderSizePixel = 3
warn.Position = UDim2.new(0.446927369, 0, 0.157024801, 0)
warn.Size = UDim2.new(0, 99, 0, 50)
warn.Font = Enum.Font.SourceSans
warn.Text = "Send Warning"
warn.TextColor3 = Color3.fromRGB(85, 0, 127)
warn.TextSize = 14.000

warn.MouseButton1Click:Connect(function()
    local msg = Instance.new("Message")
    msg.Text = "THIS SERVER HAS BEEN HACKED BY AMPI. ACCEPT YOUR DEMISE"
    msg.Parent = game.Workspace
    task.wait(3.25)
    msg:Destroy()
end)

-- Speed Button
speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
speed.BorderColor3 = Color3.fromRGB(85, 0, 127)
speed.BorderSizePixel = 3
speed.Position = UDim2.new(-0.0502793305, 0, 0.272727281, 0)
speed.Size = UDim2.new(0, 89, 0, 44)
speed.Font = Enum.Font.SourceSans
speed.Text = "GOTTA GO FAST"
speed.TextColor3 = Color3.fromRGB(85, 0, 127)
speed.TextSize = 14.000

speed.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = 89
    end
end)

-- Hint Button
hint.Name = "hint"
hint.Parent = Frame
hint.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hint.BorderColor3 = Color3.fromRGB(85, 0, 127)
hint.BorderSizePixel = 3
hint.Position = UDim2.new(0.446927369, 0, 0.266528934, 0)
hint.Size = UDim2.new(0, 99, 0, 50)
hint.Font = Enum.Font.SourceSans
hint.Text = "Send Hint"
hint.TextColor3 = Color3.fromRGB(85, 0, 127)
hint.TextSize = 14.000

hint.MouseButton1Click:Connect(function()
    local msg = Instance.new("Hint")
    msg.Text = "THIS SERVER HAS BEEN HACKED BY AMPI. ACCEPT YOUR DEMISE"
    msg.Parent = game.Workspace
    task.wait(3.25)
    msg:Destroy()
end)

-- Decal Spam Button
decalSpam.Name = "decalSpam"
decalSpam.Parent = Frame
decalSpam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
decalSpam.BorderColor3 = Color3.fromRGB(85, 0, 127)
decalSpam.BorderSizePixel = 3
decalSpam.Position = UDim2.new(-0.078212373, 0, 0.363636374, 0)
decalSpam.Size = UDim2.new(0, 193, 0, 50)
decalSpam.Font = Enum.Font.SourceSans
decalSpam.Text = "Decal Spam"
decalSpam.TextColor3 = Color3.fromRGB(85, 0, 127)
decalSpam.TextSize = 14.000

decalSpam.MouseButton1Click:Connect(function()
    local ID = 101675974762577 -- ID for the decal texture
    local function spamDecal(v)
        if v:IsA("Part") then
            for i = 0, 5 do
                local D = Instance.new("Decal")
                D.Name = "MYDECALHUE"
                D.Face = i
                D.Parent = v
                D.Texture = ("http://www.roblox.com/asset/?id=" .. ID)
            end
        else
            if v:IsA("Model") then
                for a, b in pairs(v:GetChildren()) do
                    spamDecal(b)
                end
            end
        end
    end
    local function decalspam(id)
        ID = id
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Part") then
                for i = 0, 5 do
                    local D = Instance.new("Decal")
                    D.Name = "MYDECALHUE"
                    D.Face = i
                    D.Parent = v
                    D.Texture = ("http://www.roblox.com/asset/?id=" .. id)
                end
            else
                if v:IsA("Model") then
                    for a, b in pairs(v:GetChildren()) do
                        spamDecal(b)
                    end
                end
            end
        end
    end

    decalspam(101675974762577)
end)

-- Spooky Skeletons Button
spookySkeletons.Name = "spookySkeletons"
spookySkeletons.Parent = Frame
spookySkeletons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
spookySkeletons.BorderColor3 = Color3.fromRGB(85, 0, 127)
spookySkeletons.BorderSizePixel = 3
spookySkeletons.Position = UDim2.new(-0.078212291, 0, 0.473140508, 0)
spookySkeletons.Size = UDim2.new(0, 94, 0, 50)
spookySkeletons.Font = Enum.Font.SourceSans
spookySkeletons.Text = "Spooky Scary Skeletons"
spookySkeletons.TextColor3 = Color3.fromRGB(85, 0, 127)
spookySkeletons.TextSize = 14.000

spookySkeletons.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://95156028272944"
    sound.PlaybackSpeed = 0.2
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game.Workspace
    sound:Play()
end)

-- Rick Roll Button
rickRoll.Name = "rickRoll"
rickRoll.Parent = Frame
rickRoll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rickRoll.BorderColor3 = Color3.fromRGB(85, 0, 127)
rickRoll.BorderSizePixel = 3
rickRoll.Position = UDim2.new(0.47486034, 0, 0.473140508, 0)
rickRoll.Size = UDim2.new(0, 94, 0, 50)
rickRoll.Font = Enum.Font.SourceSans
rickRoll.Text = "rickroll"
rickRoll.TextColor3 = Color3.fromRGB(85, 0, 127)
rickRoll.TextSize = 14.000

rickRoll.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://118759837130012"
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game.Workspace
    sound:Play()
end)

-- Sans Button
sans.Name = "sans"
sans.Parent = Frame
sans.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sans.BorderColor3 = Color3.fromRGB(85, 0, 127)
sans.BorderSizePixel = 3
sans.Position = UDim2.new(-0.0837988853, 0, 0.576446295, 0)
sans.Size = UDim2.new(0, 94, 0, 50)
sans.Font = Enum.Font.SourceSans
sans.Text = "sans"
sans.TextColor3 = Color3.fromRGB(85, 0, 127)
sans.TextSize = 14.000

sans.MouseButton1Click:Connect(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://79583063289850"
    sound.Volume = 5
    sound.Looped = true
    sound.Parent = game.Workspace
    sound:Play()
end)

-- Fly Button
fly.Name = "fly"
fly.Parent = Frame
fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fly.BorderColor3 = Color3.fromRGB(85, 0, 127)
fly.BorderSizePixel = 3
fly.Position = UDim2.new(-0.0837988853, 0, 0.676446295, 0)
fly.Size = UDim2.new(0, 94, 0, 50)
fly.Font = Enum.Font.SourceSans
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(85, 0, 127)
fly.TextSize = 14.000

-- ESP Button
esp.Name = "esp"
esp.Parent = Frame
esp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
esp.BorderColor3 = Color3.fromRGB(85, 0, 127)
esp.BorderSizePixel = 3
esp.Position = UDim2.new(0.47486034, 0, 0.673140508, 0)
esp.Size = UDim2.new(0, 94, 0, 50)
esp.Font = Enum.Font.SourceSans
esp.Text = "ESP"
esp.TextColor3 = Color3.fromRGB(85, 0, 127)
esp.TextSize = 14.000

-- Aimbot Button
aimbot.Name = "aimbot"
aimbot.Parent = Frame
aimbot.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
aimbot.BorderColor3 = Color3.fromRGB(85, 0, 127)
aimbot.BorderSizePixel = 3
aimbot.Position = UDim2.new(-0.0837988853, 0, 0.776446295, 0)
aimbot.Size = UDim2.new(0, 94, 0, 50)
aimbot.Font = Enum.Font.SourceSans
aimbot.Text = "Aimbot"
aimbot.TextColor3 = Color3.fromRGB(85, 0, 127)
aimbot.TextSize = 14.000

-- Infinite Jump Button
infiniteJump.Name = "infiniteJump"
infiniteJump.Parent = Frame
infiniteJump.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
infiniteJump.BorderColor3 = Color3.fromRGB(85, 0, 127)
infiniteJump.BorderSizePixel = 3
infiniteJump.Position = UDim2.new(0.47486034, 0, 0.773140508, 0)
infiniteJump.Size = UDim2.new(0, 94, 0, 50)
infiniteJump.Font = Enum.Font.SourceSans
infiniteJump.Text = "Infinite Jump"
infiniteJump.TextColor3 = Color3.fromRGB(85, 0, 127)
infiniteJump.TextSize = 14.000

-- Ensure
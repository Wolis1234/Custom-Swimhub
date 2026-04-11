-- Jenya777pro MODE 7.7.7 - Полная сборка с Silent Aim, Visual, Zone ESP, Fast Drill, Boat Boost, Hitbox
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Jenya777pro MODE 7.7.7',
    Center = false,
    Position = UDim2.new(1, -10, 0.5, 0),
    AutoShow = true,
})

local Tabs = {
    Combat = Window:AddTab('Combat'),
    Visual = Window:AddTab('Visual'),
    Exploits = Window:AddTab('Exploits'),
    Misc = Window:AddTab('Misc'),
}

-- ==================== ЗАГРУЗКА SILENT AIM ====================
local silentAimUrl = 'https://raw.githubusercontent.com/Wolis1234/Custom-Swimhub/refs/heads/main/Silent%20aim.lua'
local success, err = pcall(function()
    loadstring(game:HttpGet(silentAimUrl))()
end)
if not success then
    Tabs.Combat:AddLeftGroupbox('Error'):AddLabel('Silent Aim failed to load')
end

-- ==================== HITBOX EXPANDER (в правой части Combat) ====================
local HitboxGroup = Tabs.Combat:AddRightGroupbox('Hitbox Expander')

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local HitboxSettings = {
    Enabled = false,
    Part = "Head",
    SizeX = 5,
    SizeY = 5,
    Transparency = 0.5,
    TeamCheck = false,
    SleeperCheck = false,
    CanCollide = false
}

local HitboxParts = {}

local function getTeam(player)
    if player.Team then return player.Team end
    if player:FindFirstChild("Team") then return player.Team.Value end
    return nil
end

local function isEnemy(player)
    if not HitboxSettings.TeamCheck then return true end
    return getTeam(LocalPlayer) ~= getTeam(player)
end

local function isSleeping(player)
    if not HitboxSettings.SleeperCheck then return false end
    local char = player.Character
    if not char then return false end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    return hrp.Velocity.Magnitude < 0.5 and hrp.RotVelocity.Magnitude < 0.5
end

local function getTargetPart(character)
    if HitboxSettings.Part == "Head" then
        return character:FindFirstChild("Head")
    else
        return character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Torso")
    end
end

local function ApplyHitboxSettings()
    for _, hitbox in pairs(HitboxParts) do hitbox:Destroy() end
    HitboxParts = {}
    if not HitboxSettings.Enabled then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local char = player.Character
        if not char then continue end
        local part = getTargetPart(char)
        if not part then continue end
        if not isEnemy(player) then continue end
        if isSleeping(player) then continue end
        local hitbox = Instance.new("Part")
        hitbox.Name = "HitboxExpander"
        hitbox.Size = Vector3.new(HitboxSettings.SizeX, HitboxSettings.SizeY, HitboxSettings.SizeX)
        hitbox.Transparency = HitboxSettings.Transparency
        hitbox.CanCollide = HitboxSettings.CanCollide
        hitbox.Anchored = true
        hitbox.Color = Color3.new(1,0,0)
        hitbox.Material = Enum.Material.Neon
        hitbox.Parent = workspace
        hitbox.CFrame = part.CFrame
        HitboxParts[player] = hitbox
    end
end

RunService.RenderStepped:Connect(function()
    if not HitboxSettings.Enabled then return end
    for player, hitbox in pairs(HitboxParts) do
        local char = player.Character
        if char and char.Parent then
            local part = getTargetPart(char)
            if part then hitbox.CFrame = part.CFrame end
        else
            hitbox:Destroy()
            HitboxParts[player] = nil
        end
    end
end)

Players.PlayerAdded:Connect(ApplyHitboxSettings)
Players.PlayerRemoving:Connect(function(p)
    if HitboxParts[p] then HitboxParts[p]:Destroy(); HitboxParts[p] = nil end
end)

-- UI
HitboxGroup:AddToggle('HitboxEnabled', {
    Text = 'Enabled',
    Default = false,
    Callback = function(v) HitboxSettings.Enabled = v; ApplyHitboxSettings() end
})

HitboxGroup:AddDropdown('HitboxPart', {
    Text = 'Body Part',
    Values = {'Head', 'Torso'},
    Default = 'Head',
    Callback = function(v) HitboxSettings.Part = v; ApplyHitboxSettings() end
})

HitboxGroup:AddSlider('HitboxSizeX', {
    Text = 'Size X',
    Default = 5, Min = 1, Max = 20, Rounding = 1,
    Callback = function(v) HitboxSettings.SizeX = v; ApplyHitboxSettings() end
})

HitboxGroup:AddSlider('HitboxSizeY', {
    Text = 'Size Y',
    Default = 5, Min = 1, Max = 20, Rounding = 1,
    Callback = function(v) HitboxSettings.SizeY = v; ApplyHitboxSettings() end
})

HitboxGroup:AddSlider('HitboxTransparency', {
    Text = 'Transparency',
    Default = 0.5, Min = 0, Max = 1, Rounding = 2,
    Callback = function(v) HitboxSettings.Transparency = v; ApplyHitboxSettings() end
})

HitboxGroup:AddToggle('HitboxTeamCheck', {
    Text = 'Team Check',
    Default = false,
    Callback = function(v) HitboxSettings.TeamCheck = v; ApplyHitboxSettings() end
})

HitboxGroup:AddToggle('HitboxSleeperCheck', {
    Text = 'Sleeper Check',
    Default = false,
    Callback = function(v) HitboxSettings.SleeperCheck = v; ApplyHitboxSettings() end
})

HitboxGroup:AddToggle('HitboxCanCollide', {
    Text = 'Can Collide',
    Default = false,
    Callback = function(v) HitboxSettings.CanCollide = v; ApplyHitboxSettings() end
})

-- ==================== ЗАГРУЗКА VISUAL ====================
local visualUrl = 'https://raw.githubusercontent.com/Wolis1234/Custom-Swimhub/refs/heads/main/Visual.lua'
local success2, err2 = pcall(function()
    loadstring(game:HttpGet(visualUrl))()
end)
if not success2 then
    Tabs.Visual:AddLeftGroupbox('Error'):AddLabel('Visual failed to load')
end

-- ==================== ZONE ESP ====================
local ZoneGroup = Tabs.Visual:AddLeftGroupbox('Zone ESP')
local Workspace = game:GetService("Workspace")
local function GetSafeZone()
    local success, zone = pcall(function()
        return Workspace.World.Zones.SafeZones["SAFEZONE_Town"]
    end)
    return success and zone or nil
end
local ZoneESP = { Enabled = false, Transparency = 0.97, DefaultTransparency = 1 }
local function UpdateZone()
    local zone = GetSafeZone()
    if zone then zone.Transparency = ZoneESP.Enabled and ZoneESP.Transparency or ZoneESP.DefaultTransparency end
end
ZoneGroup:AddToggle('ZoneESPEnabled', {
    Text = 'Enable Zone ESP (Town)',
    Default = false,
    Callback = function(v) ZoneESP.Enabled = v; UpdateZone() end
})
if GetSafeZone() then UpdateZone() else ZoneGroup:AddLabel('SAFEZONE_Town не найдена') end

-- ==================== EXPLOITS (Fast Drill + Boat Boost) ====================
local ExploitsGroup = Tabs.Exploits:AddLeftGroupbox('Mining Exploits')
ExploitsGroup:AddButton('Enable Fast Drill', function()
    local success = false
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "AttackCooldown") and v.type == "MiningDrill" then
            v.AttackCooldown = -math.huge
            success = true
        end
    end
    Library:Notify(success and 'Fast Drill activated' or 'MiningDrill not found', 3)
end)
ExploitsGroup:AddLabel('Click to set drill cooldown to -inf')

local BoatGroup = Tabs.Exploits:AddRightGroupbox('Boat Boost')
local UserInputService = game:GetService("UserInputService")
local NEXT = _G.NEXT
local CUSTOM_SPEED, UPSPEED, ACCEL, YAW_RATE, MAX_FORCE = 250, 30, 200, 0.5, 20000

if hookmetamethod then
    local mt = getrawmetatable(game)
    local old = hookmetamethod(game, "__newindex", function(t, k, v)
        if (k == "CFrame" or k == "AssemblyLinearVelocity") and checkcaller() then return end
        return old(t, k, v)
    end)
end

local boat, buildup, lastdir, yaw = nil, 0, Vector3.new(0,0,1), 0
local isBoostOn = false
local connection = nil

local function findBoat()
    boat = nil
    local ws = workspace:GetChildren()
    if ws[381] and ws[381]:FindFirstChild("Hull") then
        boat = ws[381]
        boat.PrimaryPart = boat.Hull
    elseif NEXT and NEXT.model and NEXT.model:FindFirstChild("Hull") then
        boat = NEXT.model
        boat.PrimaryPart = boat.Hull
    else
        for _, v in ipairs(ws) do
            if v:IsA("Model") and v:FindFirstChild("Hull") then
                boat = v
                boat.PrimaryPart = v.Hull
                break
            end
        end
    end
end

local function applyBoost()
    if not boat or not boat:FindFirstChild("Hull") then return end
    local hull = boat.Hull
    if connection then connection:Disconnect() end
    if isBoostOn then
        connection = RunService.Heartbeat:Connect(function(delta)
            if not boat or not boat.Parent or not boat:FindFirstChild("Hull") then
                connection:Disconnect()
                findBoat()
                return
            end
            local camLook = workspace.CurrentCamera.CFrame.LookVector
            camLook = Vector3.new(camLook.X, 0, camLook.Z).Unit
            local dir = Vector3.zero
            local moving = false
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir += camLook; moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir -= camLook; moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir += Vector3.new(-camLook.Z, 0, camLook.X); moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir += Vector3.new(camLook.Z, 0, -camLook.X); moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.V) then dir += Vector3.yAxis; moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.B) then dir -= Vector3.yAxis; moving = true end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then yaw += YAW_RATE * delta end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then yaw -= YAW_RATE * delta end
            if moving and dir ~= Vector3.zero then
                dir = dir.Unit
                if dir ~= Vector3.yAxis and dir ~= -Vector3.yAxis then
                    buildup = math.clamp(buildup + delta * ACCEL, 0, CUSTOM_SPEED)
                    lastdir = dir
                end
            else
                buildup = 0
                dir = Vector3.zero
            end
            local waterLevel = workspace:GetAttribute("WaterLevel") or 0
            local newPos = hull.CFrame.Position + dir * buildup * delta
            newPos = Vector3.new(newPos.X, math.max(newPos.Y, waterLevel + 2), newPos.Z)
            local newCF = CFrame.new(newPos) * CFrame.Angles(0, yaw, 0)
            boat:PivotTo(newCF)
            for _, v in pairs(boat:GetChildren()) do
                if v:IsA("BasePart") then
                    v.AssemblyLinearVelocity = Vector3.new(dir.X * buildup, dir.Y * UPSPEED, dir.Z * buildup)
                end
            end
            if hull:FindFirstChild("LinearVelocity") then
                hull.LinearVelocity.Enabled = true
                hull.LinearVelocity.MaxForce = MAX_FORCE
                hull.LinearVelocity.VectorVelocity = Vector3.new(dir.X * buildup, dir.Y * UPSPEED, dir.Z * buildup)
            end
            if NEXT and NEXT.Move then
                NEXT:Move(hull.Position + dir * buildup * 0.15, Vector3.new(0, yaw, 0), 0, 1)
            end
            if NEXT and NEXT.ApplyVelocity then
                NEXT:ApplyVelocity(Vector3.new(dir.X * buildup, dir.Y * UPSPEED, dir.Z * buildup), nil)
            end
            if hull:FindFirstChild("MotorSound") then
                hull.MotorSound:Stop()
                hull.MotorSound.PlaybackSpeed = 0
                hull.MotorSound.Volume = 0
            end
            if hull:FindFirstChild("Steer") and hull.Steer:FindFirstChild("AngularVelocity") then
                hull.Steer.AngularVelocity.AngularVelocity = Vector3.zero
                hull.Steer.AngularVelocity.MaxTorque = Vector3.zero
            end
            if hull:FindFirstChild("AlignPosition") then
                hull.AlignPosition.Enabled = false
                hull.AlignPosition.MaxForce = 0
            end
        end)
    else
        for _, v in pairs(boat:GetChildren()) do
            if v:IsA("BasePart") then v.AssemblyLinearVelocity = Vector3.zero end
        end
        if hull:FindFirstChild("LinearVelocity") then
            hull.LinearVelocity.Enabled = false
            hull.LinearVelocity.MaxForce = 0
            hull.LinearVelocity.VectorVelocity = Vector3.zero
        end
        if NEXT and NEXT.ApplyVelocity then NEXT:ApplyVelocity(Vector3.zero, nil) end
        if hull:FindFirstChild("MotorSound") then
            hull.MotorSound:Stop()
            hull.MotorSound.PlaybackSpeed = 0
            hull.MotorSound.Volume = 0
        end
        if hull:FindFirstChild("Steer") and hull.Steer:FindFirstChild("AngularVelocity") then
            hull.Steer.AngularVelocity.AngularVelocity = Vector3.zero
            hull.Steer.AngularVelocity.MaxTorque = Vector3.zero
        end
        if hull:FindFirstChild("AlignPosition") then
            hull.AlignPosition.Enabled = true
            hull.AlignPosition.MaxForce = math.huge
        end
        yaw = 0
    end
end

findBoat()
RunService.Heartbeat:Connect(function()
    if not boat or not boat.Parent or not boat:FindFirstChild("Hull") then
        findBoat()
        if boat and isBoostOn then applyBoost() end
    end
end)

BoatGroup:AddToggle('BoatBoostEnabled', {
    Text = 'Enable Boat Boost',
    Default = false,
    Callback = function(v)
        isBoostOn = v
        if not boat then findBoat() end
        applyBoost()
        Library:Notify(v and (boat and 'Boat Boost activated' or 'Лодка не найдена!') or 'Boat Boost disabled', 2)
    end
}):AddKeyPicker('BoatBoostKey', {
    Default = Enum.KeyCode.None,
    Mode = 'Toggle',
    Text = 'Boat Boost Key',
    NoUI = false,
})

-- ==================== MISC ====================
local MiscSettings = Tabs.Misc:AddLeftGroupbox('Menu Settings')
local KeybindsListGroup = Tabs.Misc:AddRightGroupbox('Active Keybinds')
local MenuKeybind = Enum.KeyCode.RightShift
local function UpdateKeybindsList()
    KeybindsListGroup:Clear()
    for name, option in pairs(Library.Options) do
        if option.Type == 'KeyPicker' then
            KeybindsListGroup:AddLabel(string.format('%s: %s', name, tostring(option.Value)))
        end
    end
end
MiscSettings:AddKeyPicker('MenuToggleKey', {
    Default = MenuKeybind, Mode = 'Toggle', Text = 'Open/Close Menu', NoUI = false,
    Callback = function(Key) MenuKeybind = Key; UpdateKeybindsList() end
})
MiscSettings:AddButton('Refresh Keybinds List', UpdateKeybindsList)
UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == MenuKeybind then Window:SetVisible(not Window.Visible) end
end)

-- ==================== SAVE MANAGER ====================
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetFolder('Jenya777pro')
ThemeManager:SetFolder('Jenya777pro')
SaveManager:BuildConfigSection(Tabs.Misc)
ThemeManager:ApplyToTab(Tabs.Misc)
SaveManager:LoadAutoloadConfig()
UpdateKeybindsList()
Library.KeybindFrame.Visible = true
print('[Jenya777pro MODE 7.7.7] Полная сборка загружена.')

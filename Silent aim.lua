-- ==================== COMBAT - SILENT AIM ====================
local CombatGroup = Tabs.Combat:AddLeftGroupbox('Silent Aim')

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Настройки
local SilentAim = {
    Enabled = false,
    FOV = 200,
    TeamCheck = false,
    ShowFOV = false,
    ShowSnapline = false,
    Keybind = Enum.KeyCode.F,
    KeybindMode = 'Toggle',
    Target = nil
}

-- Drawing objects
local FOVCircle = Drawing.new("Circle")
local Snapline = Drawing.new("Line")
local function UpdateDrawings()
    FOVCircle.Visible = SilentAim.Enabled and SilentAim.ShowFOV
    FOVCircle.Radius = SilentAim.FOV
    FOVCircle.Color = Color3.new(1, 1, 1)
    FOVCircle.Thickness = 2
    FOVCircle.Filled = false
    
    Snapline.Visible = SilentAim.Enabled and SilentAim.ShowSnapline
    Snapline.Color = Color3.new(1, 1, 1)
    Snapline.Thickness = 1
end
UpdateDrawings()

-- UI элементы
CombatGroup:AddToggle('SilentAimEnabled', {
    Text = 'Enabled',
    Default = false,
    Tooltip = 'Включить/выключить Silent Aim',
    Callback = function(Value)
        SilentAim.Enabled = Value
        UpdateDrawings()
    end
}):AddKeyPicker('SilentAimKey', {
    Default = SilentAim.Keybind,
    Mode = SilentAim.KeybindMode,
    Text = 'Silent Aim Key',
    NoUI = false,
    ChangedCallback = function(Key)
        SilentAim.Keybind = Key
    end
})

CombatGroup:AddToggle('SilentAimToggle', {
    Text = 'Toggle Mode',
    Default = true,
    Tooltip = 'Toggle (вкл/выкл) или Hold (удерживать)',
    Callback = function(Value)
        SilentAim.KeybindMode = Value and 'Toggle' or 'Hold'
        Library.Options.SilentAimKey.Mode = SilentAim.KeybindMode
    end
})

CombatGroup:AddSlider('SilentAimFOV', {
    Text = 'FOV Radius',
    Default = 200,
    Min = 5,
    Max = 1000,
    Rounding = 0,
    Compact = false,
    Callback = function(Value)
        SilentAim.FOV = Value
        FOVCircle.Radius = Value
    end
})

CombatGroup:AddToggle('SilentAimShowFOV', {
    Text = 'Show FOV Circle',
    Default = false,
    Tooltip = 'Показывать круг FOV',
    Callback = function(Value)
        SilentAim.ShowFOV = Value
        FOVCircle.Visible = SilentAim.Enabled and Value
    end
})

CombatGroup:AddToggle('SilentAimShowSnapline', {
    Text = 'Show Snapline',
    Default = false,
    Tooltip = 'Показывать линию до цели',
    Callback = function(Value)
        SilentAim.ShowSnapline = Value
        Snapline.Visible = SilentAim.Enabled and Value
    end
})

CombatGroup:AddToggle('SilentAimTeamCheck', {
    Text = 'Team Check',
    Default = false,
    Tooltip = 'Игнорировать игроков своей команды',
    Callback = function(Value)
        SilentAim.TeamCheck = Value
    end
})

-- Вспомогательные функции
local function getTeam(player)
    if player.Team then return player.Team end
    if player:FindFirstChild("Team") then return player.Team.Value end
    return nil
end

local function isEnemy(player)
    if not SilentAim.TeamCheck then return true end
    local myTeam = getTeam(LocalPlayer)
    local theirTeam = getTeam(player)
    return myTeam ~= theirTeam
end

local function getClosestTarget()
    local mousePos = UserInputService:GetMouseLocation()
    local closestDist = SilentAim.FOV
    local closestChar = nil
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and isEnemy(player) then
            local root = player.Character:FindFirstChild("HumanoidRootPart")
            if root then
                local screenPos, onScreen = Camera:WorldToViewportPoint(root.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closestChar = player.Character
                    end
                end
            end
        end
    end
    
    return closestChar
end

-- Хук FindPartOnRay
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if SilentAim.Enabled and method == "FindPartOnRay" and self == workspace then
        local target = getClosestTarget()
        if target and target:FindFirstChild("Head") then
            local head = target.Head
            local origin = args[2].Origin
            local direction = (head.Position - origin).Unit * 1000
            args[2] = Ray.new(origin, direction)
            return oldNamecall(self, unpack(args))
        end
    end
    
    return oldNamecall(self, ...)
end)

-- Отрисовка FOV круга и снайплайна
RunService.RenderStepped:Connect(function()
    if not SilentAim.Enabled then return end
    
    local mousePos = UserInputService:GetMouseLocation()
    FOVCircle.Position = mousePos
    
    local target = getClosestTarget()
    if target and target:FindFirstChild("HumanoidRootPart") then
        local rootPos, onScreen = Camera:WorldToViewportPoint(target.HumanoidRootPart.Position)
        if onScreen then
            Snapline.From = mousePos
            Snapline.To = Vector2.new(rootPos.X, rootPos.Y)
        else
            Snapline.Visible = false
        end
    else
        Snapline.Visible = false
    end
end)

-- Keybind обработка (Toggle/Hold)
local keyHeld = false
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == SilentAim.Keybind then
        if SilentAim.KeybindMode == 'Toggle' then
            SilentAim.Enabled = not SilentAim.Enabled
            UpdateDrawings()
        else
            SilentAim.Enabled = true
            UpdateDrawings()
            keyHeld = true
        end
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == SilentAim.Keybind and SilentAim.KeybindMode == 'Hold' then
        SilentAim.Enabled = false
        UpdateDrawings()
        keyHeld = false
    end
end)

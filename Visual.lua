-- ==================== VISUAL - ESP/WALLHACK ====================
local VisualGroup = Tabs.Visual:AddLeftGroupbox('ESP Settings')
local ColorGroup = Tabs.Visual:AddRightGroupbox('Colors')

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

-- Списки оружия и брони
local WeaponList = {
    "PipeSMG", "SCAR", "M4A1", "HMAR", "UZI", "C9", "USP9", "SVD", "GaussRifle",
    "PipePistol", "PumpShotgun", "LeverActionRifle", "Blunderbuss", "Bow",
    "Crossbow", "RPG", "AR15", "Magnum", "Crowbar", "ClimbingPick", "Minigun",
    "MiningDrill", "WoodHammer", "StoneHammer", "IronHammer", "SteelHammer",
    "Dinamite", "HandMadeCharge", "C4"
}

local ArmorList = {
    "IronHelmet", "IronChestplate", "IronLeggings", "WoodHelmet", "WoodChestplate",
    "WoodLeggings", "Boots", "CamoPants", "CamoShirt", "Flippers", "PolicePants",
    "PoliceShirt", "RiotChestplate", "RiotHelmet", "RiotLeggings", "SteelChestplate",
    "SteelHelmet", "SteelLeggings", "CombatHelmet", "GasMask", "JetPack", "KevlarVest",
    "Rebreather", "ShoulderLight", "Sling", "SmallBackpack"
}

-- Настройки ESP
local ESP = {
    Enabled = false,
    Box = false,
    Name = false,
    Tool = false,
    Armor = false,
    Chams = false,
    Distance = false,
    TeamCheck = false,
    SleeperCheck = false,
    MaxDistance = 1000,
    BoxColor = Color3.new(1, 0, 0),
    NameColor = Color3.new(1, 1, 1),
    ToolColor = Color3.new(0, 1, 0),
    ArmorColor = Color3.new(0, 0.5, 1),
    ChamsColor = Color3.new(1, 0, 1),
    DistanceColor = Color3.new(1, 1, 1)
}

-- Хранилище отрисовок
local Drawings = {}

-- Функция создания/обновления отрисовки
local function CreateDrawing(player, dtype, ...)
    if not Drawings[player] then Drawings[player] = {} end
    if Drawings[player][dtype] then
        Drawings[player][dtype]:Remove()
    end
    Drawings[player][dtype] = Drawing.new(dtype)
    local obj = Drawings[player][dtype]
    obj.Visible = false
    return obj
end

-- Вспомогательные функции
local function getTeam(player)
    if player.Team then return player.Team end
    if player:FindFirstChild("Team") then return player.Team.Value end
    return nil
end

local function isEnemy(player)
    if not ESP.TeamCheck then return true end
    local myTeam = getTeam(LocalPlayer)
    local theirTeam = getTeam(player)
    return myTeam ~= theirTeam
end

local function isSleeping(player)
    if not ESP.SleeperCheck then return false end
    local char = player.Character
    if not char then return false end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    return hrp.Velocity.Magnitude < 0.5 and hrp.RotVelocity.Magnitude < 0.5
end

local function getToolName(player)
    local char = player.Character
    if not char then return "" end
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Tool") then
            for _, weapon in ipairs(WeaponList) do
                if child.Name:lower():find(weapon:lower()) then return weapon end
            end
            return child.Name
        end
    end
    return ""
end

local function getArmorList(player)
    local char = player.Character
    if not char then return {} end
    local armor = {}
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Accessory") or child:IsA("Clothing") then
            for _, item in ipairs(ArmorList) do
                if child.Name:lower():find(item:lower()) then
                    table.insert(armor, item)
                end
            end
        end
    end
    return armor
end

-- Chams через Highlight
local function updateChams(player, visible)
    local char = player.Character
    if not char then return end
    local highlight = char:FindFirstChild("ESP_Chams")
    if visible then
        if not highlight then
            highlight = Instance.new("Highlight")
            highlight.Name = "ESP_Chams"
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.Parent = char
        end
        highlight.Enabled = true
        highlight.FillColor = ESP.ChamsColor
        highlight.OutlineColor = ESP.ChamsColor
    else
        if highlight then highlight.Enabled = false end
    end
end

-- Основной цикл отрисовки
RunService.RenderStepped:Connect(function()
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local char = player.Character
        if not char then
            if Drawings[player] then
                for _, d in pairs(Drawings[player]) do d.Visible = false end
                Drawings[player] = nil
            end
            continue
        end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        local head = char:FindFirstChild("Head")
        if not hrp or not head then continue end

        local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
        local distance = (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and (LocalPlayer.Character.HumanoidRootPart.Position - hrp.Position).Magnitude) or 0

        -- Проверки видимости
        local valid = ESP.Enabled and onScreen and distance <= ESP.MaxDistance
        if valid then
            if ESP.TeamCheck and not isEnemy(player) then valid = false end
            if ESP.SleeperCheck and isSleeping(player) then valid = false end
        end

        -- Очистка если невалидный
        if not valid then
            if Drawings[player] then
                for _, d in pairs(Drawings[player]) do d.Visible = false end
            end
            if ESP.Chams then updateChams(player, false) end
            continue
        end

        -- Инициализация отрисовок
        if not Drawings[player] then Drawings[player] = {} end

        -- Box ESP (2D)
        if ESP.Box then
            local box = Drawings[player]["Box"] or CreateDrawing(player, "Square")
            local headPos = Camera:WorldToViewportPoint((head.Position + Vector3.new(0, 1.5, 0)))
            local legPos = Camera:WorldToViewportPoint((hrp.Position - Vector3.new(0, 3, 0)))
            if headPos and legPos then
                local size = Vector2.new(math.abs(headPos.X - legPos.X) * 1.5, math.abs(headPos.Y - legPos.Y))
                box.Position = Vector2.new(headPos.X - size.X/2, headPos.Y)
                box.Size = size
                box.Color = ESP.BoxColor
                box.Thickness = 2
                box.Filled = false
                box.Visible = true
            else
                box.Visible = false
            end
            Drawings[player]["Box"] = box
        end

        -- Name ESP
        if ESP.Name then
            local name = Drawings[player]["Name"] or CreateDrawing(player, "Text")
            name.Text = player.Name
            name.Position = Vector2.new(screenPos.X, screenPos.Y + 40)
            name.Color = ESP.NameColor
            name.Size = 13
            name.Center = true
            name.Outline = true
            name.Visible = true
            Drawings[player]["Name"] = name
        end

        -- Tool ESP
        if ESP.Tool then
            local tool = Drawings[player]["Tool"] or CreateDrawing(player, "Text")
            local toolName = getToolName(player)
            if toolName ~= "" then
                tool.Text = toolName
                tool.Position = Vector2.new(screenPos.X, screenPos.Y - 40)
                tool.Color = ESP.ToolColor
                tool.Size = 13
                tool.Center = true
                tool.Outline = true
                tool.Visible = true
            else
                tool.Visible = false
            end
            Drawings[player]["Tool"] = tool
        end

        -- Armor ESP
        if ESP.Armor then
            local armor = Drawings[player]["Armor"] or CreateDrawing(player, "Text")
            local armorList = getArmorList(player)
            if #armorList > 0 then
                armor.Text = table.concat(armorList, ", ")
                armor.Position = Vector2.new(screenPos.X, screenPos.Y - 55)
                armor.Color = ESP.ArmorColor
                armor.Size = 13
                armor.Center = true
                armor.Outline = true
                armor.Visible = true
            else
                armor.Visible = false
            end
            Drawings[player]["Armor"] = armor
        end

        -- Distance ESP
        if ESP.Distance then
            local distText = Drawings[player]["Distance"] or CreateDrawing(player, "Text")
            distText.Text = string.format("%.0f studs", distance)
            distText.Position = Vector2.new(screenPos.X, screenPos.Y + 55)
            distText.Color = ESP.DistanceColor
            distText.Size = 13
            distText.Center = true
            distText.Outline = true
            distText.Visible = true
            Drawings[player]["Distance"] = distText
        end

        -- Chams
        if ESP.Chams then
            updateChams(player, true)
        end
    end
end)

-- ==================== UI ====================
VisualGroup:AddToggle('ESPEnabled', {
    Text = 'ESP Enabled',
    Default = false,
    Tooltip = 'Включить/выключить ESP',
    Callback = function(Value) ESP.Enabled = Value end
})

VisualGroup:AddToggle('ESPBox', {
    Text = 'Box ESP',
    Default = false,
    Callback = function(Value) ESP.Box = Value end
})

VisualGroup:AddToggle('ESPName', {
    Text = 'Name ESP',
    Default = false,
    Callback = function(Value) ESP.Name = Value end
})

VisualGroup:AddToggle('ESPTool', {
    Text = 'Tool ESP',
    Default = false,
    Callback = function(Value) ESP.Tool = Value end
})

VisualGroup:AddToggle('ESPArmor', {
    Text = 'Armor ESP',
    Default = false,
    Callback = function(Value) ESP.Armor = Value end
})

VisualGroup:AddToggle('ESPChams', {
    Text = 'Chams ESP',
    Default = false,
    Callback = function(Value) ESP.Chams = Value end
})

VisualGroup:AddToggle('ESPDistance', {
    Text = 'Distance ESP',
    Default = false,
    Callback = function(Value) ESP.Distance = Value end
})

VisualGroup:AddToggle('ESPTeamCheck', {
    Text = 'Team Check',
    Default = false,
    Callback = function(Value) ESP.TeamCheck = Value end
})

VisualGroup:AddToggle('ESPSleeperCheck', {
    Text = 'Sleeper Check',
    Default = false,
    Callback = function(Value) ESP.SleeperCheck = Value end
})

VisualGroup:AddSlider('ESPMaxDistance', {
    Text = 'Max Distance',
    Default = 1000,
    Min = 100,
    Max = 5000,
    Rounding = 0,
    Callback = function(Value) ESP.MaxDistance = Value end
})

-- Color Pickers
ColorGroup:AddLabel('Box Color'):AddColorPicker('ESPBoxColor', {
    Default = ESP.BoxColor,
    Callback = function(Value) ESP.BoxColor = Value end
})

ColorGroup:AddLabel('Name Color'):AddColorPicker('ESPNameColor', {
    Default = ESP.NameColor,
    Callback = function(Value) ESP.NameColor = Value end
})

ColorGroup:AddLabel('Tool Color'):AddColorPicker('ESPToolColor', {
    Default = ESP.ToolColor,
    Callback = function(Value) ESP.ToolColor = Value end
})

ColorGroup:AddLabel('Armor Color'):AddColorPicker('ESPArmorColor', {
    Default = ESP.ArmorColor,
    Callback = function(Value) ESP.ArmorColor = Value end
})

ColorGroup:AddLabel('Chams Color'):AddColorPicker('ESPChamsColor', {
    Default = ESP.ChamsColor,
    Callback = function(Value) ESP.ChamsColor = Value end
})

ColorGroup:AddLabel('Distance Color'):AddColorPicker('ESPDistanceColor', {
    Default = ESP.DistanceColor,
    Callback = function(Value) ESP.DistanceColor = Value end
})

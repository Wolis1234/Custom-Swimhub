-- This file was generated at discord.gg/syncrypt

local t1 = {}
local v2 = unpack or table.unpack
t1.value1 = getgenv and getgenv() or _G
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Players = game:GetService("Players")

t1.value2 = game:GetService("HttpService")
t1.value3 = game:GetService("RbxAnalyticsService")

local __G = _G
t1.value4 = Players.LocalPlayer
while not t1.value4 do
    task.wait()
    t1.value4 = Players.LocalPlayer
end

local v7 = true -- Устанавливаем в true, чтобы обойти проверку ключа
if v7 then
    -- Убрано: v5("Run Project Delta-KeySystem.lua first")
    -- return -- Убираем return, чтобы скрипт продолжал работу
end

local t2 = {
	value1 = { t1.value1 }
}

if __G ~= t1.value1 then
    table.insert(t2.value1, __G)
end
local v9 = t1.value1.getrenv or __G.getrenv
if type(v9) == "function" then
    local ok, result = pcall(v9)

    if ok then
        ok = type(result) == "table"
    end

    if ok then
        table.insert(t2.value1, result)
    end
end
function t2.value2()
    for _, v in ipairs(t2.value1) do

        for v109, v110 in ipairs({
			"request",
			"http_request",
			"httpRequest",
			"httprequest"
		}) do

            local v111 = v[v110]

            if type(v111) == "function" then
                return v111
            end
        end
        for _, v3 in ipairs({
			"syn",
			"http",
			"fluxus",
			"krnl"
		}) do
            local v114 = v[v3]

            if type(v114) == "table" and type(v114.request) == "function" then
                return v114.request
            end
        end
    end

    return nil
end
function t2.value3(p2)
    if type(p2) == "string" then
        return 200, p2
    end

    if type(p2) ~= "table" then
        error("No HTTP response")
    end

    local _tonumber = tonumber
    local StatusCode = p2.StatusCode

    if not StatusCode then
        StatusCode = p2.Status or (p2.status_code or (p2.status or p2.Code))
    end

    local v118 = _tonumber(StatusCode) or (p2.Success ~= true and 0 or 200)
    local Body = p2.Body

    if not Body then
        Body = p2.body or (p2.ResponseBody or (p2.responseBody or p2.Data))
    end

    if type(Body) ~= "string" or Body == "" then
        error("Empty HTTP response")
    end

    return v118, Body
end
local v12 = (function()
    local g127
    local g136
    for _, v in ipairs(t2.value1) do
        for _, v4 in ipairs({
			"gethwid",
			"get_hwid",
			"getdeviceid",
			"getdeviceidentifier",
			"getclientid"
		}) do
            local v124 = v[v4]

            if type(v124) ~= "function" then
                continue
            end

            local ok, result = pcall(v124)
            local v128

            repeat
                if not g127 and ok then
                    if type(result) ~= "string" then
                        v128 = nil
                    else
                        local v129 = result:gsub("[%c]", ""):sub(1, 256)

                        v128 = #v129 >= 8 and v129 or nil
                    end

                    if not v128 then
                        g127 = true
                    end
                else
                    g127 = false
                    v128 = nil
                end
            until not g127

            if v128 then
                return v128
            end
        end

        for _, v6 in ipairs({
			"syn",
			"fluxus",
			"krnl"
		}) do
            local v132 = v[v6]
            local v133 = type(v132) == "table" and v132.gethwid or nil

            if type(v133) ~= "function" then
                continue
            end

            local ok, result = pcall(v133)
            local v137

            repeat
                if not g136 and ok then
                    if type(result) ~= "string" then
                        v137 = nil
                    else
                        local v138 = result:gsub("[%c]", ""):sub(1, 256)

                        v137 = #v138 >= 8 and v138 or nil
                    end

                    if not v137 then
                        g136 = true
                    end
                else
                    g136 = false
                    v137 = nil
                end
            until not g136

            if v137 then
                return v137
            end
        end
    end
    local ok, result = pcall(t1.value3.GetClientId, t1.value3)
    if ok then
        if type(result) ~= "string" then
            ok = nil
        else
            local v141 = result:gsub("[%c]", ""):sub(1, 256)

            ok = #v141 >= 8 and v141 or nil
        end
    end

    return ok or nil
end)()

-- Удален блок проверки ключа
-- Вместо этого, устанавливаем переменные вручную
t1.value1.WorkinkKeyValid = true
t1.value1.WorkinkKeyInfo = {
    valid = true,
    auth_schema = 3,
    message = "Key bypassed"
}
t1.value1.WCheatzKeyValid = true
t1.value1.WCheatzKeyInfo = {
    valid = true,
    auth_schema = 3,
    message = "Key bypassed"
}

if t1.value1.PD_VISUAL_CLEANUP then
    pcall(t1.value1.PD_VISUAL_CLEANUP)
    t1.value1.PD_VISUAL_CLEANUP = nil
end
if t1.value1.ProjectDeltaVisualsUI and t1.value1.ProjectDeltaVisualsUI.Library then
    pcall(function()
        t1.value1.ProjectDeltaVisualsUI.Library:Unload()
    end)
    t1.value1.ProjectDeltaVisualsUI = nil
end
if not Drawing or type(Drawing.new) ~= "function" then
    return
end
local t4 = {
	value1 = game:GetService("Players"),
	value2 = game:GetService("RunService"),
	value3 = game:GetService("UserInputService"),
	value4 = game:GetService("Workspace"),
	value5 = game:GetService("ReplicatedStorage"),
	value6 = game:GetService("CoreGui"),
	value7 = game:GetService("ContextActionService"),
	value8 = game:GetService("Lighting"),
	value9 = require
}
pcall(function()
    for _, v in ipairs({
		"WCheatz_ProjectDelta_Aim",
		"WCheatz_ProjectDelta_Visuals",
		"WCheatz_ProjectDelta_ThirdPre",
		"WCheatz_ProjectDelta_ThirdPost",
		"WCheatz_ProjectDelta_FreeCam",
		"WCheatz_ProjectDelta_NoVisor"
	}) do
        t4.value2:UnbindFromRenderStep(v)
    end

    t4.value7:UnbindAction("WCheatz_ProjectDelta_FreeCamInput")
end)
t4.value10 = t4.value1.LocalPlayer
while not t4.value10 do
    task.wait()
    t4.value10 = t4.value1.LocalPlayer
end
t4.value11 = "https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/"
local ok3, result3 = pcall(function()
    return loadstring(game:HttpGet(t4.value11 .. "Library.lua"))()
end)

t4.value12 = result3
local v28 = not ok3
if not v28 then
    v28 = not t4.value12
end
if v28 then
    return
end
local t5 = {}
t1.value1.ProjectDeltaVisualsUI = {
	Library = t4.value12
}
local v30 = t4.value12:CreateWindow({
	Title = "WCheatz | Project Delta",
	Center = true,
	AutoShow = true,
	TabPadding = 8,
	MenuFadeTime = 0.15
})
local v31 = v30:AddTab("WCheatz")
local v32 = v30:AddTab("Visual")
local v33 = v30:AddTab("Inventory View")
local v34 = v30:AddTab("Aimbot")
local v35 = v30:AddTab("Misc")
local v36 = v30:AddTab("Settings")

t5.value1 = {
	WCheatz = v31,
	Visual = v32,
	Inventory = v33,
	Aimbot = v34,
	Misc = v35,
	Settings = v36
}
t5.value2 = {}
function t5.value2.value(p5, p6)
    local v159 = t5.value2[p5]

    if v159 and v159.Value ~= nil then
        return v159.Value
    end

    return p6
end;
(function()
    t5.value1.WCheatz:AddLeftGroupbox("Join Our Comminity"):AddButton({
		Text = "Discord",
		Func = function()
        local v1008 = rawget(t1.value1, "setclipboard")

        if v1008 == nil and t1.value1 ~= _G then
            v1008 = rawget(_G, "setclipboard")
        end

        if not v1008 then
            v1008 = rawget(t1.value1, "toclipboard")

            if v1008 == nil and t1.value1 ~= _G then
                v1008 = rawget(_G, "toclipboard")
            end
        end

        if type(v1008) == "function" then
            pcall(v1008, "https://discord.gg/cjn9kwQjY3")
        end
    end
	})
end)()
t5.value3 = false
t5.value4 = "WCheatz_ProjectDelta_Aim"
local color3 = Color3.fromRGB(255, 255, 255)
local color3_2 = Color3.fromRGB(255, 80, 80)

t5.value5 = {
	enabled = false,
	targetPlayers = true,
	targetBots = false,
	targetPart = "Head",
	teamCheck = false,
	visibleCheck = false,
	maxDistance = 2500,
	showFov = false,
	filledFov = false,
	fov = 120,
	smoothness = 40,
	method = "Mouse Aim",
	fovColor = color3,
	filledColor = color3_2
}
local color3_3 = Color3.fromRGB(160, 80, 255)
local color3_4 = Color3.fromRGB(255, 255, 255)
local color3_5 = Color3.fromRGB(160, 80, 255)

t5.value6 = {
	enabled = false,
	targetPlayers = true,
	targetBots = true,
	teamCheck = false,
	visibleCheck = false,
	maxDistance = 5000,
	hitChance = 100,
	origin = "Screen Center",
	showFov = false,
	fov = 600,
	hitPart = "Head",
	prediction = true,
	highlight = false,
	highlightFill = color3_3,
	highlightOutline = color3_4,
	highlightFillTransparency = 0.55,
	highlightOutlineTransparency = 0,
	highlightDepth = "Always On Top",
	targetLine = false,
	lineColor = color3_5,
	lineThickness = 1,
	lineTransparency = 0
}
t5.value7 = nil
t5.value8 = Instance.new("ScreenGui")
t5.value8.Name = "WCheatzProjectDeltaFOV"
t5.value8.IgnoreGuiInset = true
t5.value8.ResetOnSpawn = false
t5.value8.DisplayOrder = 999999;
(function(p7)
    local t6 = { t4.value6 }
    local PlayerGui = t4.value10:FindFirstChildOfClass("PlayerGui")

    if PlayerGui then
        t6[#t6 + 1] = PlayerGui
    end

    local v163 = rawget(t1.value1, "gethui")

    if v163 == nil and t1.value1 ~= _G then
        v163 = rawget(_G, "gethui")
    end

    if type(v163) == "function" then
        local ok4, result4 = pcall(v163)

        if ok4 and result4 then
            t6[#t6 + 1] = result4
        end
    end

    for i = 1, #t6 do
        if pcall(function()
            p7.Parent = t6[i]
        end) and p7.Parent == t6[i] then
            return true
        end
    end

    return false
end)(t5.value8)
t5.value9 = Instance.new("Frame")
t5.value9.AnchorPoint = Vector2.new(0.5, 0.5)
t5.value9.BackgroundTransparency = 0.65
t5.value9.BorderSizePixel = 0
t5.value9.Visible = false
t5.value9.ZIndex = 1
t5.value9.Parent = t5.value8
local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = t5.value9
t5.value10 = Instance.new("Frame")
t5.value10.AnchorPoint = Vector2.new(0.5, 0.5)
t5.value10.BackgroundTransparency = 1
t5.value10.BorderSizePixel = 0
t5.value10.Visible = false
t5.value10.ZIndex = 2
t5.value10.Parent = t5.value8
local UICorner2 = Instance.new("UICorner")

UICorner2.CornerRadius = UDim.new(1, 0)
UICorner2.Parent = t5.value10
t5.value11 = Instance.new("UIStroke")
t5.value11.Thickness = 2
t5.value11.Parent = t5.value10
t5.value12 = Instance.new("Frame")
t5.value12.AnchorPoint = Vector2.new(0.5, 0.5)
t5.value12.BackgroundTransparency = 1
t5.value12.BorderSizePixel = 0
t5.value12.Visible = false
t5.value12.ZIndex = 3
t5.value12.Parent = t5.value8
local UICorner3 = Instance.new("UICorner")

UICorner3.CornerRadius = UDim.new(1, 0)
UICorner3.Parent = t5.value12
local UIStroke = Instance.new("UIStroke")

UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(160, 80, 255)
UIStroke.Parent = t5.value12
t5.value13 = Instance.new("Highlight")
t5.value13.Name = "WCheatzSilentTarget"
t5.value13.Enabled = false
t5.value13.Parent = t4.value4
t5.value14 = Drawing.new("Line")
t5.value14.Visible = false
t5.value14.Color = t5.value6.lineColor
t5.value14.Thickness = t5.value6.lineThickness
t5.value14.Transparency = 1
local CurrentCamera = t4.value4.CurrentCamera
t5.value15 = nil
t5.value15 = CurrentCamera
function t5.value16()
    if not t5.value15 then
        return Vector2.zero
    end

    return Vector2.new(t5.value15.ViewportSize.X / 2, t5.value15.ViewportSize.Y / 2)
end
function t5.value17()
    if t5.value6.origin == "Mouse" then
        return t4.value3:GetMouseLocation()
    end

    return t5.value16()
end
local function v47()
    t5.value15 = t4.value4.CurrentCamera

    if not t5.value15 then
        t5.value10.Visible = false
        t5.value9.Visible = false
        t5.value12.Visible = false

        return
    end

    local v167 = t5.value16()
    local v168 = t5.value5.fov * 2

    t5.value9.Position = UDim2.fromOffset(v167.X, v167.Y)
    t5.value9.Size = UDim2.fromOffset(v168, v168)
    t5.value9.BackgroundColor3 = t5.value5.filledColor
    t5.value9.Visible = t5.value5.showFov and t5.value5.filledFov
    t5.value10.Position = UDim2.fromOffset(v167.X, v167.Y)
    t5.value10.Size = UDim2.fromOffset(v168, v168)
    t5.value11.Color = t5.value5.fovColor
    t5.value10.Visible = t5.value5.showFov

    local v169 = t5.value17()
    local v170 = t5.value6.fov * 2

    t5.value12.Position = UDim2.fromOffset(v169.X, v169.Y)
    t5.value12.Size = UDim2.fromOffset(v170, v170)
    t5.value12.Visible = t5.value6.enabled and t5.value6.showFov
end
t5.value18 = {
	"Mouse Aim",
	"Camera Aim"
}
t5.value19 = {
	"Head",
	"Torso",
	"Upper Torso"
}
function t5.value20(p8)
    if type(p8) == "number" then
        return t5.value18[p8] or "Mouse Aim"
    end

    if p8 == "Camera Aim" then
        return p8
    end

    return "Mouse Aim"
end
function t5.value21(p9)
    if type(p9) == "number" then
        p9 = t5.value19[p9] or "Head"
    end

    if p9 == "Torso" then
        return "HumanoidRootPart"
    end

    if p9 == "Upper Torso" then
        return "UpperTorso"
    end

    return "Head"
end
local v48 = t5.value1.Aimbot:AddLeftGroupbox("Aimbot")

t5.value2.Aimbot = v48:AddToggle("PD_AimbotEnabled", {
	Text = "Aimbot",
	Default = false,
	Callback = function(p10)
    t5.value5.enabled = p10
end
})
t5.value2.AimbotKey = t5.value2.Aimbot:AddKeyPicker("PD_AimbotKey", {
	Default = "MB2",
	Mode = "Hold",
	Text = "Aimbot",
	SyncToggleState = false
})
local AddDropdown = v48.AddDropdown
local value18 = t5.value18
AddDropdown(v48, "PD_AimbotMethod", {
	Text = "Method",
	Values = value18,
	Default = 1,
	Callback = function(p11)
    t5.value5.method = t5.value20(p11)
end
})
local value19 = t5.value19
v48:AddDropdown("PD_AimbotPart", {
	Text = "Target Part",
	Values = value19,
	Default = 1,
	Callback = function(p12)
    t5.value5.targetPart = t5.value21(p12)
end
})
v48:AddToggle("PD_AimbotPlayers", {
	Text = "Target Players",
	Default = true,
	Callback = function(p13)
    t5.value5.targetPlayers = p13
end
})
v48:AddToggle("PD_AimbotBots", {
	Text = "Target Bots",
	Default = false,
	Callback = function(p14)
    t5.value5.targetBots = p14
end
})
v48:AddToggle("PD_AimbotTeamCheck", {
	Text = "Team Check",
	Default = false,
	Callback = function(p15)
    t5.value5.teamCheck = p15
end
})
v48:AddToggle("PD_AimbotVisibleCheck", {
	Text = "Visibility Check",
	Default = false,
	Callback = function(p16)
    t5.value5.visibleCheck = p16
end
})
local AddSlider = v48.AddSlider
local maxDistance = t5.value5.maxDistance
AddSlider(v48, "PD_AimbotMaxDistance", {
	Text = "Max Distance",
	Default = maxDistance,
	Min = 1,
	Max = 5000,
	Rounding = 0,
	Callback = function(p17)
    t5.value5.maxDistance = p17
end
})
v48:AddDivider()
v48:AddToggle("PD_AimbotShowFOV", {
	Text = "Show FOV",
	Default = false,
	Callback = function(p18)
    t5.value5.showFov = p18
    v47()
end
}):AddColorPicker("PD_AimbotFOVColor", {
	Default = t5.value5.fovColor,
	Title = "FOV Color",
	Callback = function(p19)
    t5.value5.fovColor = p19
    v47()
end
})
v48:AddToggle("PD_AimbotFilledFOV", {
	Text = "Filled FOV",
	Default = false,
	Callback = function(p20)
    t5.value5.filledFov = p20
    v47()
end
}):AddColorPicker("PD_AimbotFilledFOVColor", {
	Default = t5.value5.filledColor,
	Title = "Filled FOV Color",
	Callback = function(p21)
    t5.value5.filledColor = p21
    v47()
end
})
local smoothness = t5.value5.smoothness
v48:AddSlider("PD_AimbotSmoothness", {
	Text = "Smoothness",
	Default = smoothness,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Callback = function(p22)
    t5.value5.smoothness = p22
end
})
local AddSlider2 = v48.AddSlider
local fov = t5.value5.fov
AddSlider2(v48, "PD_AimbotFOV", {
	Text = "FOV",
	Default = fov,
	Min = 1,
	Max = 360,
	Rounding = 0,
	Callback = function(p23)
    t5.value5.fov = p23
    v47()
end
})
local v57 = t5.value1.Aimbot:AddRightGroupbox("Silent Aim")

v57:AddToggle("PD_SilentEnabled", {
	Text = "Silent Aim",
	Default = false,
	Callback = function(p24)
    t5.value6.enabled = p24
end
})
local value19_2 = t5.value19
v57:AddDropdown("PD_SilentHitPart", {
	Text = "Hit Part",
	Values = value19_2,
	Default = 1,
	Callback = function(p25)
    t5.value6.hitPart = t5.value21(p25)
end
})
v57:AddDropdown("PD_SilentOrigin", {
	Text = "Target Origin",
	Values = {
		"Screen Center",
		"Mouse"
	},
	Default = 1,
	Callback = function(p26)
    t5.value6.origin = type(p26) == "number" and ({
			"Screen Center",
			"Mouse"
		})[p26] or p26
    v47()
end
})
v57:AddToggle("PD_SilentPlayers", {
	Text = "Target Players",
	Default = true,
	Callback = function(p27)
    t5.value6.targetPlayers = p27
end
})
v57:AddToggle("PD_SilentBots", {
	Text = "Target Bots",
	Default = true,
	Callback = function(p28)
    t5.value6.targetBots = p28
end
})
v57:AddToggle("PD_SilentTeamCheck", {
	Text = "Team Check",
	Default = false,
	Callback = function(p29)
    t5.value6.teamCheck = p29
end
})
v57:AddToggle("PD_SilentVisibleCheck", {
	Text = "Visibility Check",
	Default = false,
	Callback = function(p30)
    t5.value6.visibleCheck = p30
end
})
local maxDistance2 = t5.value6.maxDistance
v57:AddSlider("PD_SilentMaxDistance", {
	Text = "Max Distance",
	Default = maxDistance2,
	Min = 1,
	Max = 5000,
	Rounding = 0,
	Callback = function(p31)
    t5.value6.maxDistance = p31
end
})
local hitChance = t5.value6.hitChance
v57:AddSlider("PD_SilentHitChance", {
	Text = "Hit Chance",
	Default = hitChance,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Suffix = "%",
	Callback = function(p32)
    t5.value6.hitChance = p32
end
})
v57:AddToggle("PD_SilentPrediction", {
	Text = "Prediction",
	Default = true,
	Callback = function(p33)
    t5.value6.prediction = p33
end
})
v57:AddDivider()
v57:AddToggle("PD_SilentShowFOV", {
	Text = "Show FOV",
	Default = false,
	Callback = function(p34)
    t5.value6.showFov = p34
    v47()
end
})
local fov2 = t5.value6.fov
v57:AddSlider("PD_SilentFOV", {
	Text = "FOV Radius",
	Default = fov2,
	Min = 50,
	Max = 1200,
	Rounding = 0,
	Callback = function(p35)
    t5.value6.fov = p35
    v47()
end
})
v57:AddDivider()
v57:AddToggle("PD_SilentHighlight", {
	Text = "Target Highlight",
	Default = false,
	Callback = function(p36)
    t5.value6.highlight = p36
end
}):AddColorPicker("PD_SilentHighlightFill", {
	Default = t5.value6.highlightFill,
	Title = "Highlight Fill Color",
	Callback = function(p37)
    t5.value6.highlightFill = p37
end
})
v57:AddLabel("Outline Color"):AddColorPicker("PD_SilentHighlightOutline", {
	Default = t5.value6.highlightOutline,
	Title = "Highlight Outline Color",
	Callback = function(p38)
    t5.value6.highlightOutline = p38
end
})
local highlightFillTransparency = t5.value6.highlightFillTransparency
v57:AddSlider("PD_SilentHighlightFillTransparency", {
	Text = "Fill Transparency",
	Default = highlightFillTransparency,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Callback = function(p39)
    t5.value6.highlightFillTransparency = p39
end
})
local highlightOutlineTransparency = t5.value6.highlightOutlineTransparency
v57:AddSlider("PD_SilentHighlightOutlineTransparency", {
	Text = "Outline Transparency",
	Default = highlightOutlineTransparency,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Callback = function(p40)
    t5.value6.highlightOutlineTransparency = p40
end
})
v57:AddDropdown("PD_SilentHighlightDepth", {
	Text = "Highlight Depth",
	Values = {
		"Always On Top",
		"Occluded"
	},
	Default = 1,
	Callback = function(p41)
    t5.value6.highlightDepth = type(p41) == "number" and ({
			"Always On Top",
			"Occluded"
		})[p41] or p41
end
})
v57:AddDivider()
v57:AddToggle("PD_SilentTargetLine", {
	Text = "Target Line",
	Default = false,
	Callback = function(p42)
    t5.value6.targetLine = p42
end
}):AddColorPicker("PD_SilentLineColor", {
	Default = t5.value6.lineColor,
	Title = "Target Line Color",
	Callback = function(p43)
    t5.value6.lineColor = p43
end
})
local lineThickness = t5.value6.lineThickness
v57:AddSlider("PD_SilentLineThickness", {
	Text = "Line Thickness",
	Default = lineThickness,
	Min = 1,
	Max = 5,
	Rounding = 1,
	Callback = function(p44)
    t5.value6.lineThickness = p44
end
})
local lineTransparency = t5.value6.lineTransparency
v57:AddSlider("PD_SilentLineTransparency", {
	Text = "Line Transparency",
	Default = lineTransparency,
	Min = 0,
	Max = 1,
	Rounding = 2,
	Callback = function(p45)
    t5.value6.lineTransparency = p45
end
})
t5.value22 = RaycastParams.new()
t5.value22.FilterType = Enum.RaycastFilterType.Exclude
local function v66(p46)
    if not p46 then
        return false
    end

    local HumanoidRootPart = p46:FindFirstChild("HumanoidRootPart")
    local Humanoid = p46:FindFirstChildOfClass("Humanoid")
    local v219 = false

    if HumanoidRootPart ~= nil then
        v219 = Humanoid ~= nil and Humanoid.Health > 0
    end

    return v219
end
function t5.value23(p47, p48, p49)
    local v223 = p47 and p47:FindFirstChild(p48, true)

    if v223 and v223:IsA("BasePart") then
        return v223
    end

    if not p49 or not p47 then
        return nil
    end

    local Head = p47:FindFirstChild("Head", true)

    if not Head then
        Head = p47:FindFirstChild("HumanoidRootPart", true) or (p47:FindFirstChild("UpperTorso", true) or (p47:FindFirstChild("Torso", true) or p47:FindFirstChild("LowerTorso", true)))
    end

    return Head
end
function t5.value24(p50, p51)
    if p51 then
        if p50 then
            p50 = p50.Team ~= nil and (t4.value10.Team ~= nil and p50.Team == t4.value10.Team)
        end

        p51 = p50
    end

    return p51
end
function t5.value25(p52)
    if not t5.value15 or not p52 then
        return false
    end

    local t7 = { t5.value15 }

    if t4.value10.Character then
        t7[#t7 + 1] = t4.value10.Character
    end

    t5.value22.FilterDescendantsInstances = t7

    local CFramePosition = t5.value15.CFrame.Position
    local raycastResult = t4.value4:Raycast(CFramePosition, p52.Position - CFramePosition, t5.value22)
    local v213 = raycastResult == nil

    if not v213 then
        v213 = raycastResult.Instance:IsDescendantOf(p52.Parent)
    end

    return v213
end
function t5.value26(p53)
    local t8 = {}

    if t5.value7 then
        for k in pairs(t5.value7) do
            local v228 = k

            if v228.Parent and not t4.value1:GetPlayerFromCharacter(v228) then
                t8[v228] = true
                p53(v228)
            end
        end
    end

    local AiZones = t4.value4:FindFirstChild("AiZones")

    if AiZones then
        local GetChildren = AiZones.GetChildren

        for _, v in ipairs(GetChildren(AiZones)) do
            local GetChildren2 = v.GetChildren

            for _, v8 in ipairs(GetChildren2(v)) do
                if v8:IsA("Model") and (not t8[v8] and not t4.value1:GetPlayerFromCharacter(v8)) then
                    t8[v8] = true
                    p53(v8)
                end
            end
        end
    end
end
function t5.value27()
    if not t5.value15 then
        return nil
    end
    local u236
    local n1 = 1e999
    local v238 = t5.value16()
    local CFramePosition = t5.value15.CFrame.Position
    local v240 = math.max(t5.value5.fov, 1)
    local u241 = v240
    local function v242(p54, p55)
        if not v66(p54) or t5.value24(p55, t5.value5.teamCheck) then
            return
        end

        local v1011 = t5.value23(p54, t5.value5.targetPart, true)

        if not v1011 or (v1011.Position - CFramePosition).Magnitude > t5.value5.maxDistance then
            return
        end

        local v1012, v1013 = t5.value15:WorldToViewportPoint(v1011.Position)

        if not v1013 or v1012.Z <= 0 then
            return
        end

        local Magnitude = (Vector2.new(v1012.X, v1012.Y) - v238).Magnitude

        if Magnitude <= u241 and (Magnitude < n1 and not t5.value5.visibleCheck) or t5.value25(v1011) then
            u236 = v1011
        end
    end
    if t5.value5.targetPlayers then
        for _, player in ipairs(t4.value1:GetPlayers()) do
            if player ~= t4.value10 then
                v242(player.Character, player)
            end
        end
    end
    if t5.value5.targetBots then
        t5.value26(function(p56)
            v242(p56, nil)
        end)
    end

    return u236
end
local v67 = rawget(t1.value1, "mousemoverel")

if v67 == nil and t1.value1 ~= _G then
    v67 = rawget(_G, "mousemoverel")
end
t5.value28 = v67
if typeof(t5.value28) ~= "function" then
    for _, v in ipairs({
		"syn",
		"fluxus",
		"krnl"
	}) do
        local v70 = rawget(t1.value1, v)

        if v70 == nil and t1.value1 ~= _G then
            v70 = rawget(_G, v)
        end

        local v71 = type(v70) == "table" and rawget(v70, "mousemoverel") or nil

        if typeof(v71) == "function" then
            t5.value28 = v71

            break
        end
    end
end
if typeof(t5.value28) ~= "function" then
    t5.value28 = nil
end
t5.value29 = nil
function t5.value29(p57)
    if not t5.value15 or not p57 then
        return
    end

    local v246 = math.clamp(1 / math.clamp(t5.value5.smoothness, 1, 100) * 3, 0.08, 1)
    local cFrame = CFrame.new(t5.value15.CFrame.Position, p57.Position)

    t5.value15.CFrame = t5.value15.CFrame:Lerp(cFrame, v246)
end
function t5.value30(p58)
    if not t5.value15 or not p58 then
        return
    end

    t5.value29(p58)

    if not t5.value28 then
        return
    end

    local v249 = t5.value15:WorldToViewportPoint(p58.Position)

    if v249.Z <= 0 then
        return
    end

    local v250 = t5.value16()
    local vector2 = Vector2.new(v249.X - v250.X, v249.Y - v250.Y)

    if vector2.Magnitude < 1 then
        return
    end

    local v252 = 1 / (math.clamp(t5.value5.smoothness, 1, 100) * 1.1)

    pcall(t5.value28, math.clamp(vector2.X * v252, -18, 18), (math.clamp(vector2.Y * v252, -18, 18)))
end
t5.value31 = nil
t5.value32 = 0
t5.value33 = setmetatable({}, {
	__mode = "k"
})
function t5.value34(p59, p60)
    local v260 = p59 and p59:FindFirstAncestorOfClass("Model")

    if v260 then
        v260 = v260:FindFirstChild("HumanoidRootPart") or (v260:FindFirstChild("UpperTorso") or v260:FindFirstChild("Torso"))
    end

    if not v260 or not v260:IsA("BasePart") then
        v260 = p59
    end

    if not v260 or not v260:IsA("BasePart") then
        return Vector3.new()
    end

    local v261 = t5.value33[v260]

    if not v261 then
        local AssemblyLinearVelocity = v260.AssemblyLinearVelocity

        if AssemblyLinearVelocity.Magnitude > 450 then
            AssemblyLinearVelocity = Vector3.new()
        end

        local t9 = {
			position = v260.Position,
			time = p60,
			velocity = AssemblyLinearVelocity
		}

        t5.value33[v260] = t9

        return t9.velocity
    end

    local AssemblyLinearVelocity = v260.AssemblyLinearVelocity
    local v265 = p60 - v261.time

    if v265 >= 0.0041666666666667 and v265 <= 0.25 then
        local v266 = (v260.Position - v261.position) / v265

        if v266.Magnitude <= 450 then
            if AssemblyLinearVelocity.Magnitude <= 0.5 then
                AssemblyLinearVelocity = v266
            elseif AssemblyLinearVelocity.Magnitude <= 450 then
                AssemblyLinearVelocity = AssemblyLinearVelocity:Lerp(v266, 0.35)
            end
        end
    end

    if AssemblyLinearVelocity.Magnitude > 450 then
        AssemblyLinearVelocity = Vector3.new()
    end

    v261.velocity = v261.velocity:Lerp(AssemblyLinearVelocity, 0.9)
    v261.position = v260.Position
    v261.time = p60

    return v261.velocity
end
function t5.value35(p61)
    if not t5.value15 then
        return nil
    end
    local elapsed = os.clock()
    local v269 = not p61
    if v269 then
        v269 = elapsed - t5.value32 < 0.016666666666667
    end
    if v269 then
        return t5.value31
    end
    local u270
    local fov3 = t5.value6.fov
    local v272 = t5.value17()
    local CFramePosition = t5.value15.CFrame.Position
    local function v274(p62, p63)
        local v1018

        if not p62 then
            v1018 = false
        else
            local HumanoidRootPart = p62:FindFirstChild("HumanoidRootPart")
            local Humanoid = p62:FindFirstChildOfClass("Humanoid")

            v1018 = false

            if HumanoidRootPart ~= nil then
                v1018 = Humanoid ~= nil and Humanoid.Health > 0
            end
        end

        if not v1018 or t5.value24(p63, t5.value6.teamCheck) then
            return
        end

        local v1021 = t5.value23(p62, t5.value6.hitPart, true)

        if not v1021 or (v1021.Position - CFramePosition).Magnitude > t5.value6.maxDistance then
            return
        end

        local v1022, v1023 = t5.value15:WorldToViewportPoint(v1021.Position)

        if not v1023 or v1022.Z <= 0 then
            return
        end

        if (Vector2.new(v1022.X, v1022.Y) - v272).Magnitude < fov3 and not t5.value6.visibleCheck or t5.value25(v1021) then
            u270 = v1021
        end
    end
    if not p61 and (t5.value31 and t5.value31.Parent) then
        local Model = t5.value31:FindFirstAncestorOfClass("Model")
        local v276 = Model and t4.value1:GetPlayerFromCharacter(Model)

        if v276 and t5.value6.targetPlayers or not v276 and t5.value6.targetBots then
            v274(Model, v276)

            if u270 == t5.value31 then
                return t5.value31
            end
        end

        u270 = nil

        local _ = t5.value6.fov
    end
    if t5.value6.targetBots then
        t5.value26(function(p64)
            v274(p64, nil)
        end)
    end
    if t5.value6.targetPlayers then
        for _, player in ipairs(t4.value1:GetPlayers()) do
            if player ~= t4.value10 then
                v274(player.Character, player)
            end
        end
    end
    t5.value31 = u270

    return t5.value31
end
t5.value36 = nil
function t5.value36()
    t5.value13.Enabled = false
    t5.value13.Adornee = nil
    t5.value14.Visible = false
end
function t5.value37()
    if not t5.value6.enabled then
        t5.value36()

        return
    end

    local v294 = t5.value35(false)
    local v295 = v294 and v294:FindFirstAncestorOfClass("Model")

    if not v294 or (not v295 or not v295.Parent) then
        t5.value36()

        return
    end

    t5.value34(v294, os.clock())

    if not t5.value6.highlight and not t5.value6.targetLine then
        t5.value36()

        return
    end

    if t5.value6.highlight then
        t5.value13.Adornee = v295
        t5.value13.FillColor = t5.value6.highlightFill
        t5.value13.OutlineColor = t5.value6.highlightOutline
        t5.value13.FillTransparency = t5.value6.highlightFillTransparency
        t5.value13.OutlineTransparency = t5.value6.highlightOutlineTransparency
        t5.value13.DepthMode = t5.value6.highlightDepth == "Occluded" and Enum.HighlightDepthMode.Occluded or Enum.HighlightDepthMode.AlwaysOnTop
        t5.value13.Enabled = true
    else
        t5.value13.Enabled = false
        t5.value13.Adornee = nil
    end

    if t5.value6.targetLine and t5.value15 then
        local v296, v297 = t5.value15:WorldToViewportPoint(v294.Position)

        if v297 and v296.Z > 0 then
            t5.value14.From = t5.value17()
            t5.value14.To = Vector2.new(v296.X, v296.Y)
            t5.value14.Color = t5.value6.lineColor
            t5.value14.Thickness = t5.value6.lineThickness
            t5.value14.Transparency = math.clamp(1 - t5.value6.lineTransparency, 0, 1)
            t5.value14.Visible = true

            return
        end

        t5.value14.Visible = false

        return
    end

    t5.value14.Visible = false
end
function t5.value38(p65, p66, p67)
    if p66 <= 0 then
        return 0
    end
    local v283 = Vector3.yAxis * (math.max(p67, 0) * 2)
    local v284 = v283:Dot(v283) / 4
    local v285 = v283:Dot(p65) - p66 * p66
    local v286 = p65:Dot(p65)
    if math.abs(v284) <= 1E-06 then
        if math.abs(v285) <= 1E-06 then
            return p65.Magnitude / p66
        end

        local v287 = -v286 / v285

        return v287 > 0 and math.sqrt(v287) or p65.Magnitude / p66
    end
    local v288 = v285 * v285 - 4 * v284 * v286
    if v288 < 0 then
        return p65.Magnitude / p66
    end
    local v289 = math.sqrt(v288)
    local v290 = -v285 + v289
    local v291 = (-v285 - v289) / (2 * v284)
    local v292 = v290 / (2 * v284)
    local v293
    if v291 > 0 then
        v293 = v291
    end
    if v292 > 0 and not v293 or v292 < v293 then
        v293 = v292
    end

    return v293 and math.sqrt(v293) or p65.Magnitude / p66
end
function t5.value39(p68, p69, p70, p71)
    local p68Position = p68.Position
    if not t5.value6.prediction or p70 <= 100 then
        return p68Position
    end
    local elapsed = os.clock()
    local v304 = t5.value34(p68, elapsed)
    local vector3 = Vector3.new(v304.X, 0, v304.Z)
    local v306 = p68Position - p69
    local v307 = math.clamp(v306.Magnitude / p70 * 2 + 0.35, 0.5, 6)
    local n2 = 0.035
    local ok5, result5 = pcall(t4.value10.GetNetworkPing, t4.value10)
    if ok5 then
        ok5 = type(result5) == "number" and result5 >= 0
    end
    if ok5 then
        n2 = math.clamp(result5 * 0.5, 0, 0.12)
    end
    local u311 = math.max(tonumber(p71) or 0, 0)
    if u311 <= 0 then
        u311 = 35
    end
    local n3 = 0
    local n4 = 0
    local v314
    local v315 = p70 * p70
    local function v316(p72)
        local v1026 = v306 + vector3 * (p72 + n2) + Vector3.new(0, u311 * p72 * p72, 0)

        return v1026:Dot(v1026) - v315 * p72 * p72
    end
    local v317 = v316(0)
    for i = 1, 48 do
        local v319 = v307 * i / 48
        local v320 = v316(v319)

        if v317 >= 0 and v320 <= 0 then
            n4 = n3
            v314 = v319

            break
        end

        n3 = v319
        v317 = v320
    end
    local v323
    if v314 then
        for _ = 1, 20 do
            local v322 = (n4 + v314) * 0.5

            if v316(v322) > 0 then
                n4 = v322
            else
                v314 = v322
            end
        end

        v323 = (n4 + v314) * 0.5
    else
        v323 = math.min(t5.value38(v306, p70, u311), v307)
    end

    return p68Position + vector3 * (v323 + n2) + Vector3.new(0, u311 * v323 * v323, 0)
end
function t5.value40(p73)
    if t5.value15 and t5.value15.CFrame then
        local CFramePosition = t5.value15.CFrame.Position
        local Focus = t5.value15.Focus

        if t4.value10.Character and (Focus and (CFramePosition - Focus.Position).Magnitude > 2) then
            local Head = t4.value10.Character:FindFirstChild("Head", true)

            if Head and Head:IsA("BasePart") then
                return Head.Position
            end
        end

        return CFramePosition
    end

    if typeof(p73) == "table" then
        local p73CFrame = p73.CFrame

        if typeof(p73CFrame) == "CFrame" then
            return p73CFrame.Position
        end
    else
        if typeof(p73) == "Instance" and p73:IsA("BasePart") then
            return p73.Position
        end

        if typeof(p73) == "CFrame" then
            return p73.Position
        end

        if typeof(p73) == "Vector3" then
            return p73
        end
    end

    return nil
end
t5.value41 = {
	dead = false,
	hooked = false,
	hookRetryAt = 0
}
t1.value1.PD_PROJECT_DELTA_AIM_RUNTIME = t5.value41
function t5.value41.zeroPattern(p74, p75)
    local v326 = typeof(p74)

    if v326 == "number" then
        return 0
    end

    if v326 == "Vector2" or v326 == "Vector3" then
        return p74 * 0
    end

    if v326 == "CFrame" then
        return CFrame.new()
    end

    if v326 ~= "table" or p75 >= 5 then
        return p74
    end

    local t10 = {}

    for k, v in pairs(p74) do
        t10[k] = t5.value41.zeroPattern(v, p75 + 1)
    end

    return t10
end
function t5.value41.shoot(p76, p77, p78, p79, p80, p81, p82, p83, p84, p85)
    if not t5.value6.enabled or math.random(1, 100) > t5.value6.hitChance then
        return p76(p77, p78, p79, p80, p81, p82, p83, p84, p85)
    end
    t5.value15 = t4.value4.CurrentCamera
    local u340
    local ok6 = pcall(function()
        u340 = t5.value35(true)
    end)
    local AmmoTypes = t4.value5:FindFirstChild("AmmoTypes")
    local u343
    if AmmoTypes and p83 ~= nil then
        local ok7, result6 = pcall(function()
            if typeof(p83) == "Instance" and p83:IsDescendantOf(AmmoTypes) then
                return p83
            end

            local v1027 = type(p83) == "string" and p83 or tostring(p83)
            local v1028 = AmmoTypes:FindFirstChild(v1027)

            if not v1028 and typeof(p83) == "Instance" then
                v1028 = AmmoTypes:FindFirstChild(p83.Name)
            end

            return v1028
        end)

        if ok7 then
            u343 = result6
        end
    end
    local u346
    local ok8 = pcall(function()
        u346 = t5.value40(p81)
    end)
    local v348 = not ok6
    if not v348 then
        v348 = not u340

        if not v348 then
            v348 = not ok8

            if not v348 then
                v348 = not u346
            end
        end
    end
    if v348 then
        return p76(p77, p78, p79, p80, p81, p82, p83, p84, p85)
    end
    local v349 = u343 and tonumber(u343:GetAttribute("ProjectileDrop")) or 35
    local u350 = u343 and tonumber(u343:GetAttribute("MuzzleVelocity")) or 1000
    if u350 <= 0 then
        u350 = 1000
    end
    local u351
    if not pcall(function()
        u351 = t5.value39(u340, u346, u350, v349)
    end) or (typeof(u351) ~= "Vector3" or (u351 - u346).Magnitude <= 0.001) then
        return p76(p77, p78, p79, p80, p81, p82, p83, p84, p85)
    end
    local cFrame = CFrame.new(u346, u351)
    local LookVector = cFrame.LookVector
    local v354 = p81
    local p81CFrame
    if typeof(p81) == "Instance" and p81:IsA("BasePart") then
        p81CFrame = p81.CFrame

        if not pcall(function()
            p81.CFrame = cFrame
        end) then
            return p76(p77, p78, p79, p80, p81, p82, p83, p84, p85)
        end
    elseif typeof(p81) == "CFrame" then
        v354 = cFrame
    else
        v354 = {}

        if type(p81) == "table" then
            for k, v in pairs(p81) do
                v354[k] = v
            end
        end

        v354.CFrame = cFrame

        if typeof(v354.Position) == "Vector3" then
            v354.Position = u346
        end

        if typeof(v354.Direction) == "Vector3" then
            v354.Direction = LookVector
        end

        if typeof(v354.LookVector) == "Vector3" then
            v354.LookVector = LookVector
        end

        if typeof(v354.Target) == "Vector3" then
            v354.Target = u351
        end

        if typeof(v354.TargetPosition) == "Vector3" then
            v354.TargetPosition = u351
        end

        if typeof(v354.Velocity) == "Vector3" then
            v354.Velocity = LookVector * u350
        end
    end
    local t11 = {}
    if u343 then
        local Drag = u343:GetAttribute("Drag")

        if type(Drag) == "number" and Drag ~= 0 and pcall(function()
            u343:SetAttribute("Drag", 0)
        end) then
            t11[#t11 + 1] = {
				"Drag",
				Drag
			}
        end

        local ProjectileWidth = u343:GetAttribute("ProjectileWidth")

        if type(ProjectileWidth) == "number" and ProjectileWidth < 1 and pcall(function()
            u343:SetAttribute("ProjectileWidth", 1)
        end) then
            t11[#t11 + 1] = {
				"ProjectileWidth",
				ProjectileWidth
			}
        end

        for k, v in pairs(u343:GetAttributes()) do
            local v363 = k

            if type(v) == "number" then
                local v364 = string.lower((tostring(v363)))

                if (string.find(v364, "spread", 1, true) or (string.find(v364, "bloom", 1, true) or string.find(v364, "deviation", 1, true))) and pcall(function()
                    u343:SetAttribute(v363, 0)
                end) then
                    t11[#t11 + 1] = {
						v363,
						v
					}
                end
            end
        end
    end
    local v365 = type(p85) == "table" and t5.value41.zeroPattern(p85, 0) or p85
    local v366 = table.pack(pcall(p76, p77, p78, p79, p80, v354, p82, p83, p84, v365))
    if p81CFrame then
        pcall(function()
            p81.CFrame = p81CFrame
        end)
    end
    for i = 1, #t11 do
        local u368 = i
        pcall(function()
            u343:SetAttribute(t11[u368][1], t11[u368][2])
        end)
    end
    if not v366[1] then
        error(v366[2], 0)
    end

    return table.unpack(v366, 2, v366.n)
end
t5.value42 = nil
function t5.value41.installHook()
    if t5.value41.dead or t5.value41.hooked then
        return
    end

    if not t5.value42 then
        pcall(function()
            local Modules = t4.value5:FindFirstChild("Modules")
            local v1030 = Modules and Modules:FindFirstChild("FPS")
            local v1031 = v1030 and v1030:FindFirstChild("Bullet")

            if v1031 then
                t5.value42 = t4.value9(v1031)
            end
        end)
    end

    local v369 = rawget(t1.value1, "hookfunction")

    if v369 == nil and t1.value1 ~= _G then
        v369 = rawget(_G, "hookfunction")
    end

    local v370 = v369

    if type(t5.value42) ~= "table" or (typeof(t5.value42.CreateBullet) ~= "function" or typeof(v370) ~= "function") then
        return
    end

    local PD_PROJECT_DELTA_BULLET_HOOK = t1.value1.PD_PROJECT_DELTA_BULLET_HOOK

    if PD_PROJECT_DELTA_BULLET_HOOK and PD_PROJECT_DELTA_BULLET_HOOK.module == t5.value42 then
        t5.value41.hooked = true

        return
    end

    pcall(function()
        local u1032
        u1032 = v370(t5.value42.CreateBullet, function(...)
            local PD_PROJECT_DELTA_AIM_RUNTIME = t1.value1.PD_PROJECT_DELTA_AIM_RUNTIME

            if PD_PROJECT_DELTA_AIM_RUNTIME and (not PD_PROJECT_DELTA_AIM_RUNTIME.dead and PD_PROJECT_DELTA_AIM_RUNTIME.shoot) then
                return PD_PROJECT_DELTA_AIM_RUNTIME.shoot(u1032, ...)
            end

            return u1032(...)
        end)
        if typeof(u1032) == "function" then
            t1.value1.PD_PROJECT_DELTA_BULLET_HOOK = {
				module = t5.value42
			}
            t5.value41.hooked = true
        end
    end)
end
t5.value41.installHook()
pcall(function()
    t4.value2:UnbindFromRenderStep(t5.value4)
end)
t4.value2:BindToRenderStep(t5.value4, Enum.RenderPriority.Last.Value, function()
    if t5.value3 then
        return
    end

    if not pcall(function()
        local elapsed = os.clock()

        if not t5.value41.hooked and elapsed >= t5.value41.hookRetryAt then
            t5.value41.hookRetryAt = elapsed + 1
            t5.value41.installHook()
        end

        v47()
        t5.value37()

        if not t5.value5.enabled or not t5.value15 then
            return
        end

        local AimbotKey = t5.value2.AimbotKey

        if not if not (AimbotKey and typeof(AimbotKey.GetState) == "function") then t4.value3:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) else AimbotKey:GetState() then
            return
        end

        local v1035 = t5.value27()

        if not v1035 then
            return
        end

        if t5.value20(t5.value5.method) == "Camera Aim" then
            t5.value29(v1035)

            return
        end

        t5.value30(v1035)
    end) then
        t5.value36()
    end
end)

local function v72(p86)
    local color3_6 = Color3.fromRGB(255, 255, 255)
    local color3_7 = Color3.fromRGB(255, 255, 255)

    return {
		controls = {},
		enabled = false,
		skeleton = false,
		skeletonThickness = 1,
		skeletonColor = p86,
		box = true,
		boxThickness = 1,
		boxColor = p86,
		healthBar = false,
		healthBarThickness = 2,
		healthText = false,
		healthPercent = true,
		healthTextColor = color3_6,
		healthTextSize = 13,
		name = true,
		displayName = false,
		nameColor = p86,
		nameSize = 13,
		distance = true,
		distanceColor = color3_7,
		distanceSize = 13,
		maxDistance = 1500,
		tracers = false,
		tracerThickness = 1,
		tracerTransparency = 0,
		tracerColor = p86,
		lookDirection = false,
		directionArrow = true,
		directionThickness = 1
	}
end
t5.value43 = v72(Color3.fromRGB(255, 255, 255))
t5.value44 = v72(Color3.fromRGB(255, 95, 75))

local function v73(p87, p88, p89)
    local controls = p88.controls
    local v379 = p89 .. "Enabled"
    local AddToggle = p87.AddToggle
    local enabled = p88.enabled

    controls.enabled = AddToggle(p87, v379, {
		Text = "Enable ESP",
		Default = enabled,
		Callback = function(p90)
        p88.enabled = p90
    end
	})
    p87:AddDivider()

    local controls2 = p88.controls
    local v383 = p89 .. "Skeleton"
    local AddToggle2 = p87.AddToggle
    local skeleton = p88.skeleton

    controls2.skeleton = AddToggle2(p87, v383, {
		Text = "Skeleton",
		Default = skeleton,
		Callback = function(p91)
        p88.skeleton = p91
    end
	})

    local v386 = p89 .. "SkeletonThickness"
    local skeletonThickness = p88.skeletonThickness

    p87:AddSlider(v386, {
		Text = "Skeleton Thickness",
		Default = skeletonThickness,
		Min = 1,
		Max = 5,
		Rounding = 1,
		Callback = function(p92)
        p88.skeletonThickness = p92
    end
	})
    p87:AddLabel("Skeleton Color"):AddColorPicker(p89 .. "SkeletonColor", {
		Default = p88.skeletonColor,
		Title = "Skeleton Color",
		Callback = function(p93)
        p88.skeletonColor = p93
    end
	})
    p87:AddDivider()

    local controls3 = p88.controls
    local v389 = p89 .. "Box"
    local box = p88.box

    controls3.box = p87:AddToggle(v389, {
		Text = "Box",
		Default = box,
		Callback = function(p94)
        p88.box = p94
    end
	})

    local v391 = p89 .. "BoxThickness"
    local AddSlider3 = p87.AddSlider
    local boxThickness = p88.boxThickness

    AddSlider3(p87, v391, {
		Text = "Box Thickness",
		Default = boxThickness,
		Min = 1,
		Max = 5,
		Rounding = 1,
		Callback = function(p95)
        p88.boxThickness = p95
    end
	})
    p87:AddLabel("Box Color"):AddColorPicker(p89 .. "BoxColor", {
		Default = p88.boxColor,
		Title = "Box Color",
		Callback = function(p96)
        p88.boxColor = p96
    end
	})
    p87:AddDivider()

    local controls4 = p88.controls
    local v395 = p89 .. "HealthBar"
    local healthBar = p88.healthBar

    controls4.healthBar = p87:AddToggle(v395, {
		Text = "Health Bar",
		Default = healthBar,
		Callback = function(p97)
        p88.healthBar = p97
    end
	})

    local v397 = p89 .. "HealthBarThickness"
    local healthBarThickness = p88.healthBarThickness

    p87:AddSlider(v397, {
		Text = "Health Bar Thickness",
		Default = healthBarThickness,
		Min = 1,
		Max = 8,
		Rounding = 1,
		Callback = function(p98)
        p88.healthBarThickness = p98
    end
	})
    p87:AddDivider()

    local controls5 = p88.controls
    local v400 = p89 .. "HealthText"
    local healthText = p88.healthText

    controls5.healthText = p87:AddToggle(v400, {
		Text = "Health Text",
		Default = healthText,
		Callback = function(p99)
        p88.healthText = p99
    end
	})

    local controls6 = p88.controls
    local v403 = p89 .. "HealthPercent"
    local healthPercent = p88.healthPercent

    controls6.healthPercent = p87:AddToggle(v403, {
		Text = "Show as Percent",
		Default = healthPercent,
		Callback = function(p100)
        p88.healthPercent = p100
    end
	})
    p87:AddLabel("Text Color"):AddColorPicker(p89 .. "HealthTextColor", {
		Default = p88.healthTextColor,
		Title = "Health Text Color",
		Callback = function(p101)
        p88.healthTextColor = p101
    end
	})

    local v405 = p89 .. "HealthTextSize"
    local healthTextSize = p88.healthTextSize

    p87:AddSlider(v405, {
		Text = "Text Size",
		Default = healthTextSize,
		Min = 10,
		Max = 30,
		Rounding = 0,
		Callback = function(p102)
        p88.healthTextSize = p102
    end
	})
    p87:AddDivider()

    local controls7 = p88.controls
    local v408 = p89 .. "Name"
    local AddToggle3 = p87.AddToggle
    local name = p88.name

    controls7.name = AddToggle3(p87, v408, {
		Text = "Name",
		Default = name,
		Callback = function(p103)
        p88.name = p103
    end
	})

    local controls8 = p88.controls
    local v412 = p89 .. "DisplayName"
    local displayName = p88.displayName

    controls8.displayName = p87:AddToggle(v412, {
		Text = "Show Display Name",
		Default = displayName,
		Callback = function(p104)
        p88.displayName = p104
    end
	})
    p87:AddLabel("Name Color"):AddColorPicker(p89 .. "NameColor", {
		Default = p88.nameColor,
		Title = "Name Color",
		Callback = function(p105)
        p88.nameColor = p105
    end
	})

    local v414 = p89 .. "NameSize"
    local nameSize = p88.nameSize

    p87:AddSlider(v414, {
		Text = "Text Size",
		Default = nameSize,
		Min = 10,
		Max = 30,
		Rounding = 0,
		Callback = function(p106)
        p88.nameSize = p106
    end
	})
    p87:AddDivider()

    local controls9 = p88.controls
    local v417 = p89 .. "Distance"
    local distance = p88.distance

    controls9.distance = p87:AddToggle(v417, {
		Text = "Distance",
		Default = distance,
		Callback = function(p107)
        p88.distance = p107
    end
	})
    p87:AddLabel("Text Color"):AddColorPicker(p89 .. "DistanceColor", {
		Default = p88.distanceColor,
		Title = "Distance Text Color",
		Callback = function(p108)
        p88.distanceColor = p108
    end
	})

    local v419 = p89 .. "DistanceSize"
    local distanceSize = p88.distanceSize

    p87:AddSlider(v419, {
		Text = "Text Size",
		Default = distanceSize,
		Min = 10,
		Max = 30,
		Rounding = 0,
		Callback = function(p109)
        p88.distanceSize = p109
    end
	})

    local v421 = p89 .. "MaxDistance"
    local AddSlider4 = p87.AddSlider
    local maxDistance3 = p88.maxDistance

    AddSlider4(p87, v421, {
		Text = "Max Distance",
		Default = maxDistance3,
		Min = 1,
		Max = 5000,
		Rounding = 0,
		Callback = function(p110)
        p88.maxDistance = p110
    end
	})
    p87:AddDivider()

    local controls10 = p88.controls
    local v425 = p89 .. "Tracers"
    local AddToggle4 = p87.AddToggle
    local tracers = p88.tracers

    controls10.tracers = AddToggle4(p87, v425, {
		Text = "Tracers",
		Default = tracers,
		Callback = function(p111)
        p88.tracers = p111
    end
	})

    local v428 = p89 .. "TracerThickness"
    local tracerThickness = p88.tracerThickness

    p87:AddSlider(v428, {
		Text = "Tracers Thickness",
		Default = tracerThickness,
		Min = 1,
		Max = 5,
		Rounding = 1,
		Callback = function(p112)
        p88.tracerThickness = p112
    end
	})

    local v430 = p89 .. "TracerTransparency"
    local tracerTransparency = p88.tracerTransparency

    p87:AddSlider(v430, {
		Text = "Tracers Transparency",
		Default = tracerTransparency,
		Min = 0,
		Max = 1,
		Rounding = 2,
		Callback = function(p113)
        p88.tracerTransparency = p113
    end
	})
    p87:AddLabel("Tracers Color"):AddColorPicker(p89 .. "TracerColor", {
		Default = p88.tracerColor,
		Title = "Tracers Color",
		Callback = function(p114)
        p88.tracerColor = p114
    end
	})
    p87:AddDivider()

    local controls11 = p88.controls
    local v433 = p89 .. "LookDirection"
    local AddToggle5 = p87.AddToggle
    local lookDirection = p88.lookDirection

    controls11.lookDirection = AddToggle5(p87, v433, {
		Text = "Look Direction",
		Default = lookDirection,
		Callback = function(p115)
        p88.lookDirection = p115
    end
	})

    local controls12 = p88.controls
    local v437 = p89 .. "DirectionArrow"
    local AddToggle6 = p87.AddToggle
    local directionArrow = p88.directionArrow

    controls12.directionArrow = AddToggle6(p87, v437, {
		Text = "Show Arrow",
		Default = directionArrow,
		Callback = function(p116)
        p88.directionArrow = p116
    end
	})

    local v440 = p89 .. "DirectionThickness"
    local directionThickness = p88.directionThickness

    p87:AddSlider(v440, {
		Text = "Direction Thickness",
		Default = directionThickness,
		Min = 1,
		Max = 5,
		Rounding = 1,
		Callback = function(p117)
        p88.directionThickness = p117
    end
	})
end
local v74 = t5.value1.Visual:AddLeftGroupbox("Player ESP")
local v75 = t5.value1.Visual:AddRightGroupbox("Bot ESP")

v73(v74, t5.value43, "PD_Player_")
v73(v75, t5.value44, "PD_Bot_")

local function v76(p118)
    return {
		controls = {},
		enabled = false,
		box = true,
		name = true,
		distance = true,
		color = p118,
		textSize = 14,
		maxDistance = 1500
	}
end
t5.value45 = v76(v2({ Color3.fromRGB(72, 190, 255) }))
t5.value46 = v76(Color3.fromRGB(255, 156, 46))
t5.value47 = v76(v2({ Color3.fromRGB(255, 224, 72) }))

local function v77(p119, p120, p121)
    p120.controls.enabled = p119:AddToggle(p121 .. "Enable", {
		Text = "Enable ESP",
		Default = false,
		Callback = function(p122)
        p120.enabled = p122
    end
	})
    p120.controls.box = p119:AddToggle(p121 .. "Box", {
		Text = "Box",
		Default = true,
		Callback = function(p123)
        p120.box = p123
    end
	})
    p120.controls.name = p119:AddToggle(p121 .. "Name", {
		Text = "Name",
		Default = true,
		Callback = function(p124)
        p120.name = p124
    end
	})
    p120.controls.distance = p119:AddToggle(p121 .. "Distance", {
		Text = "Distance",
		Default = true,
		Callback = function(p125)
        p120.distance = p125
    end
	})
    p119:AddLabel("Color"):AddColorPicker(p121 .. "Color", {
		Default = p120.color,
		Title = "ESP Color",
		Callback = function(p126)
        p120.color = p126
    end
	})

    local v446 = p121 .. "TextSize"
    local textSize = p120.textSize

    p119:AddSlider(v446, {
		Text = "Text Size",
		Default = textSize,
		Min = 14,
		Max = 30,
		Rounding = 0,
		Callback = function(p127)
        p120.textSize = p127
    end
	})

    local v448 = p121 .. "MaxDistance"
    local maxDistance4 = p120.maxDistance

    p119:AddSlider(v448, {
		Text = "Max Distance",
		Default = maxDistance4,
		Min = 1,
		Max = 5000,
		Rounding = 0,
		Callback = function(p128)
        p120.maxDistance = p128
    end
	})
end
v77(t5.value1.Visual:AddLeftGroupbox("Vehicle ESP"), t5.value45, "PD_Vehicle_")
v77(t5.value1.Visual:AddRightGroupbox("Supply Drop ESP"), t5.value46, "PD_Supply_")
v77(t5.value1.Visual:AddLeftGroupbox("Quest Item ESP"), t5.value47, "PD_Quest_");
(function()
    local v450 = t5.value1.Inventory:AddLeftGroupbox("Inventory Viewer")

    t5.value2.InventoryView = v450:AddToggle("InventoryView_Enable", {
		Text = "Enable Inventory View",
		Default = false
	})

    local v451 = v450:AddDependencyBox()

    v451:SetupDependencies({{
		t5.value2.InventoryView,
		true
	}})
    t5.value2.InventorySlots = v451:AddToggle("InventoryView_Slots", {
		Text = "Slots",
		Default = true
	})
    t5.value2.InventoryGear = v451:AddToggle("InventoryView_Gear", {
		Text = "Gear",
		Default = true
	})

    local v452 = t5.value1.Inventory:AddLeftGroupbox("Slots"):AddDependencyBox()

    v452:SetupDependencies({
		{
			t5.value2.InventoryView,
			true
		},
		{
			t5.value2.InventorySlots,
			true
		}
	})
    t5.value2.InventorySlotMode = v452:AddDropdown("InventoryView_SlotMode", {
		Text = "Slot Type",
		Values = {
			"Full Inventory",
			"First Slot"
		},
		Default = 1,
		Multi = false
	})

    local v453 = t5.value1.Inventory:AddRightGroupbox("Inventory Targeting"):AddDependencyBox()

    v453:SetupDependencies({{
		t5.value2.InventoryView,
		true
	}})
    t5.value2.InventoryRadius = v453:AddSlider("InventoryView_TargetRadius", {
		Text = "Target Radius",
		Default = 120,
		Min = 10,
		Max = 400,
		Rounding = 0,
		Compact = false
	})
    t5.value2.InventoryDistance = v453:AddSlider("InventoryView_MaxDistance", {
		Text = "Max Distance",
		Default = 1000,
		Min = 10,
		Max = 5000,
		Rounding = 0,
		Compact = false
	})
end)()
t5.value48 = {
	noSpread = false,
	fireRate = false,
	fireDelay = 0.05,
	instantEquip = false,
	noRecoil = false,
	noGrass = false,
	noLeafs = false,
	noClouds = false,
	noLandmines = false,
	fullBright = false,
	noFog = false,
	xray = false,
	zoom = false,
	viewModel = false,
	noFall = false,
	skin = false,
	hitSound = false,
	thirdPerson = false,
	freeCam = false,
	fastRun = false,
	noVisor = false
}
function t5.value49()
    if t5.value2.FastRun then
        t5.value48.fastRun = t5.value2.FastRun.Value == true
    end

    if t5.value2.Zoom then
        t5.value48.zoom = t5.value2.Zoom.Value == true
    end

    if t5.value2.ViewModel then
        t5.value48.viewModel = t5.value2.ViewModel.Value == true
    end

    if t5.value2.Skin then
        t5.value48.skin = t5.value2.Skin.Value == true
    end

    if t5.value2.HitSound then
        t5.value48.hitSound = t5.value2.HitSound.Value == true
    end

    if t5.value2.ThirdPerson then
        t5.value48.thirdPerson = t5.value2.ThirdPerson.Value == true
    end

    if t5.value2.FreeCam then
        t5.value48.freeCam = t5.value2.FreeCam.Value == true
    end
end
t5.value50 = {
	"Stock",
	"Front",
	"Sight",
	"Magazine",
	"Handle",
	"Muzzle",
	"Extra",
	"ItemRoot"
}
t5.value51 = {
	Default = "rbxassetid://4585351098",
	Rust = "rbxassetid://1255040462",
	Neverlose = "rbxassetid://8726881116",
	Gamesense = "rbxassetid://4817809188",
	Bubble = "rbxassetid://198598793",
	Ding = "rbxassetid://2868331684",
	Bruh = "rbxassetid://4275842574",
	["CS 1.6"] = "rbxassetid://18362692980",
	["Windows XP"] = "rbxassetid://130840811",
	TeamFortress = "rbxassetid://296102734",
	Toilet = "rbxassetid://8430024127",
	FAAHH = "rbxassetid://72298953503422"
}
local v78 = t5.value1.Misc:AddLeftGroupbox("Weapon")

v78:AddToggle("Weapon_NoSpread", {
	Text = "No Spread",
	Default = false,
	Callback = function(p129)
    t5.value48.noSpread = p129
end
})
v78:AddToggle("Weapon_FireRate", {
	Text = "Fire Rate",
	Default = false,
	Callback = function(p130)
    t5.value48.fireRate = p130 == true
end
})
t5.value2.FireDelay = v78:AddSlider("Weapon_FireDelay", {
	Text = "Fire Delay (Lower = Faster)",
	Default = 0.05,
	Min = 0.01,
	Max = 1,
	Rounding = 2,
	Suffix = " s"
})
t5.value2.FireDelay:OnChanged(function(p131)
    t5.value48.fireDelay = math.clamp(tonumber(p131) or 0.05, 0.01, 1)
end)
v78:AddToggle("Weapon_InstantEquip", {
	Text = "Instant Equip",
	Default = false,
	Callback = function(p132)
    t5.value48.instantEquip = p132
end
})
v78:AddToggle("Weapon_NoRecoil", {
	Text = "No Recoil",
	Default = false,
	Callback = function(p133)
    t5.value48.noRecoil = p133
end
})
local v79 = t5.value1.Misc:AddLeftGroupbox("World")

v79:AddToggle("Misc_NoGrass", {
	Text = "No Grass",
	Default = false,
	Callback = function(p134)
    t5.value48.noGrass = p134
end
})
v79:AddToggle("Misc_NoLeafs", {
	Text = "No Leafs",
	Default = false,
	Callback = function(p135)
    t5.value48.noLeafs = p135
end
})
v79:AddToggle("Misc_NoClouds", {
	Text = "No Clouds",
	Default = false,
	Callback = function(p136)
    t5.value48.noClouds = p136
end
})
v79:AddToggle("Misc_NoLandmines", {
	Text = "No Landmines",
	Default = false,
	Callback = function(p137)
    t5.value48.noLandmines = p137
end
})
v79:AddToggle("Misc_FullBright", {
	Text = "Full Bright",
	Default = false,
	Callback = function(p138)
    t5.value48.fullBright = p138
end
})
v79:AddToggle("Misc_NoFog", {
	Text = "No Fog",
	Default = false,
	Callback = function(p139)
    t5.value48.noFog = p139
end
})
v79:AddToggle("Misc_Xray", {
	Text = "Xray",
	Default = false,
	Callback = function(p140)
    t5.value48.xray = p140
end
}):AddKeyPicker("Misc_XrayKey", {
	Default = "X",
	Mode = "Toggle",
	SyncToggleState = true,
	Text = "Xray Key"
})
local v80 = t5.value1.Misc:AddLeftGroupbox("Movement / Screen")

t5.value2.FastRun = v80:AddToggle("Misc_FastRun", {
	Text = "Fast Run",
	Default = false,
	Callback = function(p141)
    t5.value48.fastRun = p141

    if not p141 then
        local Character = t4.value10.Character
        local v468 = Character and Character:FindFirstChild("Humanoid")

        if v468 then
            v468.WalkSpeed = 16
        end
    end
end
})
t5.value2.FastRunKey = t5.value2.FastRun:AddKeyPicker("Misc_FastRunKey", {
	Default = "T",
	Mode = "Toggle",
	SyncToggleState = true,
	Text = "Fast Run Key"
})
v80:AddToggle("Misc_NoVisor", {
	Text = "No Visor & Flash",
	Default = false,
	Callback = function(p142)
    t5.value48.noVisor = p142
end
})
local v81 = t5.value1.Misc:AddRightGroupbox("Player / ViewModel")

t5.value2.Zoom = v81:AddToggle("Misc_Zoom", {
	Text = "Zoom",
	Default = false,
	Callback = function(p143)
    t5.value48.zoom = p143
end
})
v81:AddLabel("Zoom Key"):AddKeyPicker("Misc_ZoomKey", {
	Default = "C",
	Mode = "Hold",
	SyncToggleState = false,
	Text = "Zoom Key"
})
local value2 = t5.value2
local v83 = rawget(t1.value1, "Options")

if v83 == nil and t1.value1 ~= _G then
    v83 = rawget(_G, "Options")
end
value2.ZoomKey = (v83 or {}).Misc_ZoomKey
t5.value2.ZoomFOV = v81:AddSlider("Misc_ZoomFOV", {
	Text = "Zoom FOV",
	Default = 10,
	Min = 1,
	Max = 70,
	Rounding = 0
})
t5.value2.NormalFOV = v81:AddSlider("Misc_NormalFOV", {
	Text = "Normal FOV",
	Default = 90,
	Min = 1,
	Max = 120,
	Rounding = 0
})
v81:AddDivider()
t5.value2.ViewModel = v81:AddToggle("Misc_ViewModelChanger", {
	Text = "ViewModel Changer",
	Default = false,
	Callback = function(p144)
    t5.value48.viewModel = p144
end
})
t5.value2.ArmColor = v81:AddLabel("Arm Color"):AddColorPicker("Misc_ArmColor", {
	Default = Color3.fromRGB(79, 155, 121),
	Title = "Arm Color"
})
t5.value2.ArmTransparency = v81:AddSlider("Misc_ArmTransparency", {
	Text = "Arm Transparency",
	Default = 0,
	Min = 0,
	Max = 100,
	Suffix = "%",
	Rounding = 0
})
t5.value2.ArmX = v81:AddSlider("Misc_ArmX", {
	Text = "Arm X Pos",
	Default = 50,
	Min = 0,
	Max = 290,
	Rounding = 0
})
t5.value2.ArmY = v81:AddSlider("Misc_ArmY", {
	Text = "Arm Y Pos",
	Default = 50,
	Min = 0,
	Max = 290,
	Rounding = 0
})
t5.value2.ArmZ = v81:AddSlider("Misc_ArmZ", {
	Text = "Arm Z Pos",
	Default = 50,
	Min = 0,
	Max = 290,
	Rounding = 0
})
v81:AddToggle("Misc_NoFallDamage", {
	Text = "No Fall Damage",
	Default = false,
	Callback = function(p145)
    t5.value48.noFall = p145
end
})
local v84 = t5.value1.Misc:AddLeftGroupbox("Skin Changer")

t5.value2.Skin = v84:AddToggle("Misc_SkinChanger", {
	Text = "Skin Changer",
	Default = false,
	Callback = function(p146)
    t5.value48.skin = p146
end
})
t5.value2.SkinName = v84:AddDropdown("Misc_Skin", {
	Text = "Skin",
	Values = {
		"Anton",
		"Banana",
		"SpaceSuit",
		"Valentine",
		"Crusader",
		"Freedom",
		"Artic",
		"Nutcracker",
		"Watergun",
		"Serpant",
		"Galaxy",
		"Hunter",
		"Permafrost",
		"Thunder",
		"GiftWrap",
		"Shoreline",
		"Ancient",
		"AnodizedRed",
		"DeltaAnime",
		"PeaceWalker",
		"Anarchy",
		"Blackout",
		"Tan",
		"TigerStripe",
		"VOLK",
		"Woodland",
		"Pineapple",
		"Apollo",
		"Shark",
		"Devil",
		"Dialbo",
		"Melon",
		"WhiteDeath"
	},
	Default = 1
})
local value2_2 = t5.value2
local AddDropdown2 = v84.AddDropdown
local value50 = t5.value50
value2_2.SkinBlacklist = AddDropdown2(v84, "Misc_SkinBlacklist", {
	Text = "Blacklist Parts",
	Values = value50,
	Default = {},
	Multi = true
})
local v88 = t5.value1.Misc:AddRightGroupbox("Custom Hit Sound")

t5.value2.HitSound = v88:AddToggle("Misc_CustomHitSound", {
	Text = "Custom Hit Sound",
	Default = false,
	Callback = function(p147)
    t5.value48.hitSound = p147
end
})
t5.value2.HitSoundName = v88:AddDropdown("Misc_HitSound", {
	Text = "Hit Sound",
	Values = {
		"Default",
		"Rust",
		"Neverlose",
		"Gamesense",
		"Bubble",
		"Ding",
		"Bruh",
		"CS 1.6",
		"Windows XP",
		"TeamFortress",
		"Toilet",
		"FAAHH"
	},
	Default = 1
})
t5.value2.HitSoundVolume = v88:AddSlider("Misc_HitSoundVolume", {
	Text = "Hit Sound Volume",
	Default = 100,
	Min = 1,
	Max = 5500,
	Rounding = 0
})
v88:AddButton({
	Text = "Play HitSound",
	Func = function()
    local Sound = Instance.new("Sound")
    local v479 = t5.value2.value("HitSoundName", "Default")

    Sound.SoundId = t5.value51[v479] or t5.value51.Default
    Sound.Volume = math.clamp((tonumber(t5.value2.value("HitSoundVolume", 100)) or 100) / 100, 0.01, 55)
    Sound.Parent = t4.value4
    Sound:Play()
    task.delay(1, function()
        if Sound then
            Sound:Destroy()
        end
    end)
end
})
local v89 = t5.value1.Misc:AddRightGroupbox("Third Person")

t5.value2.ThirdPerson = v89:AddToggle("Misc_ThirdPerson", {
	Text = "Third Person",
	Default = false,
	Callback = function(p148)
    t5.value48.thirdPerson = p148
end
})
t5.value2.ThirdPersonKey = t5.value2.ThirdPerson:AddKeyPicker("Misc_ThirdPersonKey", {
	Default = "V",
	Mode = "Toggle",
	SyncToggleState = true,
	Text = "Third Person Key"
})
t5.value2.ThirdDistance = v89:AddSlider("Misc_ThirdPersonDistance", {
	Text = "Camera Distance",
	Default = 8,
	Min = 2,
	Max = 30,
	Rounding = 1
})
t5.value2.ThirdShoulder = v89:AddDropdown("Misc_ThirdPersonShoulder", {
	Text = "Shoulder",
	Values = {
		"Right",
		"Center",
		"Left"
	},
	Default = 1
})
t5.value2.ThirdShoulderOffset = v89:AddSlider("Misc_ThirdPersonShoulderOffset", {
	Text = "Shoulder Offset",
	Default = 2,
	Min = 0,
	Max = 5,
	Rounding = 1
})
t5.value2.ThirdHeight = v89:AddSlider("Misc_ThirdPersonHeight", {
	Text = "Height Offset",
	Default = 1,
	Min = -3,
	Max = 5,
	Rounding = 1
})
t5.value2.ThirdSmoothness = v89:AddSlider("Misc_ThirdPersonSmoothness", {
	Text = "Smoothness",
	Default = 14,
	Min = 1,
	Max = 30,
	Rounding = 0
})
t5.value2.ThirdShowCharacter = v89:AddToggle("Misc_ThirdPersonShowCharacter", {
	Text = "Show Character",
	Default = true
})
t5.value2.ThirdHideViewModel = v89:AddToggle("Misc_ThirdPersonHideViewModel", {
	Text = "Hide ViewModel",
	Default = true
})
local v90 = t5.value1.Misc:AddRightGroupbox("Free Cam")

t5.value2.FreeCam = v90:AddToggle("Misc_FreeCam", {
	Text = "Free Cam",
	Default = false,
	Callback = function(p149)
    t5.value48.freeCam = p149
end
})
t5.value2.FreeCamKey = t5.value2.FreeCam:AddKeyPicker("Misc_FreeCamKey", {
	Default = "P",
	Mode = "Toggle",
	SyncToggleState = true,
	Text = "Free Cam Key"
})
t5.value2.FreeCamSpeed = v90:AddSlider("Misc_FreeCamSpeed", {
	Text = "Movement Speed",
	Default = 50,
	Min = 1,
	Max = 300,
	Rounding = 0
})
t5.value2.FreeCamSensitivity = v90:AddSlider("Misc_FreeCamSensitivity", {
	Text = "Mouse Sensitivity",
	Default = 25,
	Min = 1,
	Max = 100,
	Rounding = 0
})
t5.value2.FreeCamSmoothness = v90:AddSlider("Misc_FreeCamSmoothness", {
	Text = "Smoothness",
	Default = 14,
	Min = 1,
	Max = 30,
	Rounding = 0
})
t5.value2.FreeCamFOV = v90:AddSlider("Misc_FreeCamFOV", {
	Text = "Field Of View",
	Default = 70,
	Min = 20,
	Max = 120,
	Rounding = 0
})
t4.value12:SetWatermarkVisibility(false);
(function()
    local v500 = t5.value1.Settings:AddLeftGroupbox("Menu")

    v500:AddButton({
		Text = "Unload",
		Func = function()
        t4.value12:Unload()
    end
	})
    t5.value2.MenuKeybind = v500:AddLabel("Menu Keybind"):AddKeyPicker("MenuKeybind", {
		Default = "End",
		NoUI = true,
		Text = "Menu Keybind"
	})
    t4.value12.ToggleKeybind = t5.value2.MenuKeybind

    local ok9, result7 = pcall(function()
        return loadstring(game:HttpGet(t4.value11 .. "addons/ThemeManager.lua"))()
    end)
    local ok10, result8 = pcall(function()
        return loadstring(game:HttpGet(t4.value11 .. "addons/SaveManager.lua"))()
    end)

    if ok9 then
        ok9 = ok10

        if ok9 then
            ok9 = result7 and result8
        end
    end

    if ok9 then
        result7:SetLibrary(t4.value12)
        result8:SetLibrary(t4.value12)
        result8:IgnoreThemeSettings()
        result8:SetIgnoreIndexes({ "MenuKeybind" })
        result7:SetFolder("ProjectDelta")
        result8:SetFolder("ProjectDelta/Visuals")
        result8:BuildConfigSection(t5.value1.Settings)
        result7:ApplyToTab(t5.value1.Settings)
    end
end)()
t5.value52 = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"LeftLowerArm",
	"LeftHand",
	"RightUpperArm",
	"RightLowerArm",
	"RightHand",
	"LeftUpperLeg",
	"LeftLowerLeg",
	"LeftFoot",
	"RightUpperLeg",
	"RightLowerLeg",
	"RightFoot"
}
t5.value53 = {
	{
		1,
		2
	},
	{
		2,
		3
	},
	{
		2,
		4
	},
	{
		4,
		5
	},
	{
		5,
		6
	},
	{
		2,
		7
	},
	{
		7,
		8
	},
	{
		8,
		9
	},
	{
		3,
		10
	},
	{
		10,
		11
	},
	{
		11,
		12
	},
	{
		3,
		13
	},
	{
		13,
		14
	},
	{
		14,
		15
	}
}
t5.value54 = {
	UpperTorso = "Torso",
	LowerTorso = "Torso",
	LeftUpperArm = "Left Arm",
	LeftLowerArm = "Left Arm",
	LeftHand = "Left Arm",
	RightUpperArm = "Right Arm",
	RightLowerArm = "Right Arm",
	RightHand = "Right Arm",
	LeftUpperLeg = "Left Leg",
	LeftLowerLeg = "Left Leg",
	LeftFoot = "Left Leg",
	RightUpperLeg = "Right Leg",
	RightLowerLeg = "Right Leg",
	RightFoot = "Right Leg"
}
t5.value55 = {}
t5.value7 = {}
t5.value56 = {
	Vehicle = {},
	SupplyDrop = {},
	QuestItem = {}
}
t5.value57 = {}
t5.value58 = {
	Vehicle = {},
	SupplyDrop = {},
	QuestItem = {}
}
t5.value59 = {
	Vehicle = false,
	SupplyDrop = false,
	QuestItem = false
}
t5.value60 = {}
t5.value61 = false
t5.value62 = false
t5.value63 = false
t5.value64 = "WCheatz_ProjectDelta_Visuals"
function t5.value65(p150, p151)
    local u546 = if p150 ~= "Line" then Drawing.new("Text") else Drawing.new("Line")

    for k, v in pairs(p151) do
        local v549 = v

        pcall(function()
            u546[k] = v549
        end)
    end

    pcall(function()
        u546.Visible = false
    end)

    return u546
end
t5.value66 = nil
function t5.value66(p152, p153)
    p152.all[#p152.all + 1] = p153

    return p153
end
local function v91(p154)
    return t5.value66(p154, t5.value65("Line", {
		Color = Color3.fromRGB(255, 255, 255),
		Thickness = 1,
		Transparency = 1
	}))
end
function t5.value67(p155)
    local value66 = t5.value66
    local value65 = t5.value65
    local color3_8 = Color3.fromRGB(255, 255, 255)
    local color3_9 = Color3.fromRGB(0, 0, 0)

    return value66(p155, value65("Text", {
		Color = color3_8,
		Center = true,
		Outline = true,
		OutlineColor = color3_9,
		Font = 2,
		Size = 13,
		Transparency = 1,
		Text = ""
	}))
end
t5.value68 = nil
t5.value69 = nil
function t5.value70(p156, p157)
    return {
		owner = p156,
		kind = p157,
		all = {},
		box = {},
		skeleton = {},
		parts = {},
		px = {},
		py = {},
		pz = {},
		pon = {}
	}
end
function t5.value71(p158, p159)
    if p159.box and #p158.box == 0 then
        p158.box = {
			v91(p158),
			v91(p158),
			v91(p158),
			v91(p158)
		}
    end

    if p159.healthBar and not p158.health then
        p158.healthBack = v91(p158)
        p158.health = v91(p158)
    end

    if p159.healthText and not p158.healthText then
        p158.healthText = t5.value67(p158)
    end

    if p159.name and not p158.nameText then
        p158.nameText = t5.value67(p158)
    end

    if p159.distance and not p158.distanceText then
        p158.distanceText = t5.value67(p158)
    end

    if p159.tracers and not p158.tracer then
        p158.tracer = v91(p158)
    end

    if p159.lookDirection and not p158.look then
        p158.look = v91(p158)
        p158.lookLeft = v91(p158)
        p158.lookRight = v91(p158)
    end

    if p159.skeleton and #p158.skeleton == 0 then
        for i = 1, #t5.value53 do
            p158.skeleton[i] = v91(p158)
        end
    end
end
function t5.value72(p160)
    if not p160.wasVisible then
        return
    end

    for i = 1, #p160.all do
        p160.all[i].Visible = false
    end

    p160.wasVisible = false
end
function t5.value73(p161, p162)
    local v512 = p161[p162]

    if not v512 then
        return
    end

    for i = 1, #v512.all do
        local u514 = i
        pcall(function()
            v512.all[u514]:Remove()
        end)
    end

    p161[p162] = nil
end
function t5.value74(p163)
    local t12 = {
		owner = p163,
		all = {},
		bounds = {}
	}

    t12.box = {
		v91(t12),
		v91(t12),
		v91(t12),
		v91(t12)
	}
    t12.nameText = t5.value67(t12)
    t12.distanceText = t5.value67(t12)

    return t12
end
function t5.value75(p164, p165)
    if p164 ~= "SupplyDrop" then
        return true
    end

    local v532 = string.lower(p165.Name):gsub("[%s_%-]", "")

    return string.find(v532, "supplydrop", 1, true) ~= nil
end
function t5.value76(p166)
    if p166 == "Vehicle" then
        return t5.value45
    end

    if p166 == "SupplyDrop" then
        return t5.value46
    end

    return t5.value47
end
local function v92(p167, p168)
    if not t5.value76(p167).enabled then
        t5.value59[p167] = false

        return
    end

    local v570 = t5.value56[p167]

    if v570 and (not v570[p168] and t5.value75(p167, p168)) then
        local ok11, result9 = pcall(t5.value74, p168)

        if ok11 and result9 then
            v570[p168] = result9
        end
    end
end
function t5.value77(p169)
    local v564 = t5.value56[p169]
    local t13 = {}

    for k in pairs(v564) do
        t13[#t13 + 1] = k
    end

    for i = 1, #t13 do
        t5.value73(v564, t13[i])
    end
end
function t5.value78(p170, p171)
    if p171 == t5.value57[p170] then
        return
    end
    local v575 = t5.value58[p170]
    for v578, v579 in pairs(v575) do

        local v580 = v579

        pcall(function()
            v580:Disconnect()
        end)
    end
    table.clear(v575)
    t5.value77(p170)
    t5.value57[p170] = p171
    t5.value59[p170] = false
    if not p171 then
        return
    end
    v575.added = p171.ChildAdded:Connect(function(child)
        v92(p170, child)
    end)
    v575.removed = p171.ChildRemoved:Connect(function(child)
        local v1073 = t5.value56[p170]

        t5.value73(v1073, child)
    end)
end
function t5.value79(p172)
    if t5.value59[p172] then
        return
    end

    local v582 = t5.value57[p172]

    if v582 then
        for _, child in ipairs(v582:GetChildren()) do
            v92(p172, child)
        end
    end

    t5.value59[p172] = true
end
function t5.value80()
    t5.value78("Vehicle", t4.value4:FindFirstChild("Vehicles"))
    t5.value78("SupplyDrop", t4.value4:FindFirstChild("Containers"))
    t5.value78("QuestItem", t4.value4:FindFirstChild("QuestItems"))
end
function t5.value81(p173)
    if not p173 or not p173.Parent then
        return nil
    end

    local v534 = p173
    local v535 = p173:IsA("ObjectValue")

    if v535 then
        v535 = p173.Value

        if v535 then
            v535 = p173.Value:IsDescendantOf(t4.value4)
        end
    end

    if v535 then
        v534 = p173.Value
    end

    if v534:IsA("Model") then
        local ok12, result10, v538 = pcall(v534.GetBoundingBox, v534)

        if ok12 then
            ok12 = result10 and v538
        end

        if ok12 then
            return p173.Name, result10, v538
        end
    elseif v534:IsA("BasePart") then
        return p173.Name, v534.CFrame, v534.Size
    end

    local Model = v534:FindFirstChildWhichIsA("Model", true)

    if Model then
        local ok13, result11, v542 = pcall(Model.GetBoundingBox, Model)

        if ok13 then
            ok13 = result11 and v542
        end

        if ok13 then
            return p173.Name, result11, v542
        end
    end

    local BasePart = v534:FindFirstChildWhichIsA("BasePart", true)

    if BasePart then
        return p173.Name, BasePart.CFrame, BasePart.Size
    end

    return nil
end
function t5.value82(p174, p175, p176, p177)
    if p174:WorldToViewportPoint(p175.Position).Z <= 0 then
        return nil
    end

    local v519 = p176 * 0.5
    local n5 = 1e999
    local n6 = 1e999
    local v522 = -math.huge
    local n7 = -1e999
    local n8 = 0

    for i = -1, 1, 2 do
        for j = -1, 1, 2 do
            for k = -1, 1, 2 do
                local v528 = p174:WorldToViewportPoint(p175 * Vector3.new(v519.X * i, v519.Y * j, v519.Z * k))

                if v528.Z > 0 then
                    n8 += 1
                    n6 = math.min(n6, v528.X)
                    n5 = math.min(n5, v528.Y)
                    v522 = math.max(v522, v528.X)
                    n7 = math.max(n7, v528.Y)
                end
            end
        end
    end

    if n8 < 2 then
        return nil
    end

    local ViewportSize = p174.ViewportSize

    if v522 < 0 or (n7 < 0 or (n6 > ViewportSize.X or n5 > ViewportSize.Y)) then
        return nil
    end

    p177.left = n6
    p177.top = n5
    p177.right = v522
    p177.bottom = n7
    p177.centerX = (n6 + v522) * 0.5

    return p177
end
local function v93(p178, p179, p180, p181)
    local v589, v590, v591 = t5.value81(p178.owner)

    if not v589 then
        t5.value72(p178)

        return
    end

    local Magnitude = (v590.Position - p180).Magnitude

    if Magnitude > p181.maxDistance then
        t5.value72(p178)

        return
    end

    local v593 = t5.value82(p179, v590, v591, p178.bounds)

    if not v593 then
        t5.value72(p178)

        return
    end

    if p181.box then
        local left = v593.left
        local top = v593.top
        local right = v593.right
        local bottom = v593.bottom

        t5.value68(p178.box[1], left, top, right, top, p181.color, 1.5)
        t5.value68(p178.box[2], right, top, right, bottom, p181.color, 1.5)
        t5.value68(p178.box[3], right, bottom, left, bottom, p181.color, 1.5)
        t5.value68(p178.box[4], left, bottom, left, top, p181.color, 1.5)
    else
        t5.value69(p178.box)
    end

    if p181.name then
        p178.nameText.Text = v589
        p178.nameText.Position = Vector2.new(v593.centerX, v593.top - p181.textSize - 2)
        p178.nameText.Color = p181.color
        p178.nameText.Size = p181.textSize
        p178.nameText.Visible = true
    else
        p178.nameText.Visible = false
    end

    if p181.distance then
        p178.distanceText.Text = tostring((math.floor(Magnitude + 0.5))) .. " studs"
        p178.distanceText.Position = Vector2.new(v593.centerX, v593.bottom + 2)
        p178.distanceText.Color = p181.color
        p178.distanceText.Size = p181.textSize
        p178.distanceText.Visible = true
    else
        p178.distanceText.Visible = false
    end

    p178.wasVisible = true
end
t5.value83 = nil
function t5.value83(p182)
    return p182.enabled and p182.box or (p182.name or p182.distance)
end
function t5.value84(p183, p184, p185, p186)
    local v602 = t5.value56[p183]
    if not t5.value83(p186) then
        for _, v in pairs(v602) do
            t5.value72(v)
        end

        return
    end
    t5.value79(p183)
    local v605
    for v608, v609 in pairs(v602) do

        if v608.Parent then
            if not pcall(v93, v609, p184, p185, p186) then
                t5.value72(v609)
            end
        else
            v605 = v605 or {}
            v605[#v605 + 1] = v608
        end
    end
    if v605 then
        for i = 1, #v605 do
            t5.value73(v602, v605[i])
        end
    end
end
t5.value80()
t5.value60[#t5.value60 + 1] = t4.value4.ChildAdded:Connect(function(child)
    if child.Name == "Vehicles" or (child.Name == "Containers" or child.Name == "QuestItems") then
        t5.value80()
    end
end)

local value60 = t5.value60
local v95 = #t5.value60 + 1
local value4 = t4.value4
t5.value85 = nil
value60[v95] = value4.ChildRemoved:Connect(function(child)
    if child == t5.value57.Vehicle or (child == t5.value57.SupplyDrop or child == t5.value57.QuestItem) then
        t5.value80()
    end
end)

function t5.value86(p187, p188)
    local p188_2 = p187:FindFirstChild(p188)

    if p188_2 and p188_2:IsA("BasePart") then
        return p188_2
    end

    local v661 = t5.value54[p188]

    if v661 then
        local v662 = p187:FindFirstChild(v661)

        if v662 and v662:IsA("BasePart") then
            return v662
        end
    end

    return nil
end
function t5.value87(p189, p190)
    p189.character = p190
    p189.humanoid = p190 and p190:FindFirstChildOfClass("Humanoid") or nil
    p189.root = p190 and p190:FindFirstChild("HumanoidRootPart") or nil

    for i = 1, #t5.value52 do
        local v674 = i
        local parts = p189.parts
        local v676 = p190

        if p190 then
            local v677 = t5.value52[v674]

            v676 = t5.value86(p190, v677)
        end

        parts[v674] = v676 or nil
    end
end
function t5.value88(p191, p192)
    local v680 = p192 == p191.character

    if v680 then
        v680 = p191.root

        if v680 then
            v680 = p192 == p191.root.Parent

            if v680 then
                v680 = p191.humanoid

                if v680 then
                    v680 = p192 == p191.humanoid.Parent and (p191.parts[1] and p192 == p191.parts[1].Parent)
                end
            end
        end
    end

    return v680
end
function t5.value68(p193, p194, p195, p196, p197, p198, p199, p200)
    p193.From = Vector2.new(p194, p195)
    p193.To = Vector2.new(p196, p197)
    p193.Color = p198
    p193.Thickness = p199
    p193.Transparency = p200 or 1
    p193.Visible = true
end
function t5.value69(p201)
    for i = 1, #p201 do
        p201[i].Visible = false
    end
end
function t5.value85(p202, p203)
    for i = 1, #t5.value52 do
        local v652 = i
        local v653 = p202.parts[v652]

        if v653 and v653.Parent then
            local v654, v655 = p203:WorldToViewportPoint(v653.Position)

            p202.px[v652] = v654.X
            p202.py[v652] = v654.Y
            p202.pz[v652] = v654.Z
            p202.pon[v652] = v655 and v654.Z > 0
        else
            p202.pon[v652] = false
        end
    end
end
function t5.value89(p204, p205)
    local humanoid = p204.humanoid
    local v634 = not humanoid
    local root = p204.root

    if not v634 then
        v634 = not root
    end

    if v634 then
        return nil
    end

    local v636 = ((if humanoid.RigType ~= Enum.HumanoidRigType.R6 then math.max(humanoid.HipHeight, 0) + root.Size.Y * 0.5 else 3)) + 0.1
    local v637 = if humanoid.RigType ~= Enum.HumanoidRigType.R6 then math.max(v636 * 0.9, 2.5) else 2.7
    local v638 = p205:WorldToViewportPoint(root.Position + Vector3.new(0, v637, 0))
    local v639 = p205:WorldToViewportPoint(root.Position - Vector3.new(0, v636, 0))
    local v640 = p205:WorldToViewportPoint(root.Position)

    if v638.Z <= 0 or (v639.Z <= 0 or v640.Z <= 0) then
        return nil
    end

    local v641 = math.min(v638.Y, v639.Y)
    local v642 = math.max(v638.Y, v639.Y)
    local v643 = math.max(v642 - v641, 44)
    local v644 = (v641 + v642) * 0.5
    local v645 = v643 * (humanoid.RigType ~= Enum.HumanoidRigType.R6 and 0.55 or 0.68)
    local v646 = v640.X - v645 * 0.5
    local v647 = v644 - v643 * 0.5
    local ViewportSize = p205.ViewportSize

    if v646 > ViewportSize.X or (v647 > ViewportSize.Y or (v646 + v645 < 0 or v647 + v643 < 0)) then
        return nil
    end

    return v646, v647, v645, v643
end
function t5.value90(p206, p207, p208)
    if not p208.skeleton then
        t5.value69(p206.skeleton)

        return
    end

    t5.value85(p206, p207)

    for i = 1, #t5.value53 do
        local v667 = t5.value53[i]
        local v668 = v667[1]
        local v669 = v667[2]
        local v670 = p206.skeleton[i]

        if p206.pon[v668] and p206.pon[v669] then
            t5.value68(v670, p206.px[v668], p206.py[v668], p206.px[v669], p206.py[v669], p208.skeletonColor, p208.skeletonThickness)
        else
            v670.Visible = false
        end
    end
end
function t5.value91(p209, p210, p211)
    if not p211.lookDirection then
        if p209.look then
            p209.look.Visible = false
            p209.lookLeft.Visible = false
            p209.lookRight.Visible = false
        end

        return
    end

    local v616 = p209.parts[1]

    if not v616 then
        if p209.look then
            p209.look.Visible = false
            p209.lookLeft.Visible = false
            p209.lookRight.Visible = false
        end

        return
    end

    local v617, v618 = p210:WorldToViewportPoint(v616.Position)
    local v619, v620 = p210:WorldToViewportPoint(v616.Position + v616.CFrame.LookVector * 4)

    if not v618 or (not v620 or (v617.Z <= 0 or v619.Z <= 0)) then
        if p209.look then
            p209.look.Visible = false
            p209.lookLeft.Visible = false
            p209.lookRight.Visible = false
        end

        return
    end

    t5.value68(p209.look, v617.X, v617.Y, v619.X, v619.Y, p211.skeletonColor, p211.directionThickness)

    if not p211.directionArrow then
        p209.lookLeft.Visible = false
        p209.lookRight.Visible = false

        return
    end

    local v621 = v619.X - v617.X
    local v622 = v619.Y - v617.Y
    local v623 = math.sqrt(v621 * v621 + v622 * v622)

    if v623 < 2 then
        p209.lookLeft.Visible = false
        p209.lookRight.Visible = false

        return
    end

    local v624 = v621 / v623
    local v625 = v622 / v623
    local v626 = math.clamp(v623 * 0.28, 5, 12)
    local v627 = v619.X - v624 * v626
    local v628 = v619.Y - v625 * v626
    local v629 = -v625 * v626 * 0.55
    local v630 = v624 * v626 * 0.55

    t5.value68(p209.lookLeft, v619.X, v619.Y, v627 + v629, v628 + v630, p211.skeletonColor, p211.directionThickness)
    t5.value68(p209.lookRight, v619.X, v619.Y, v627 - v629, v628 - v630, p211.skeletonColor, p211.directionThickness)
end
function t5.value92(p212)
    if p212.kind == "player" then
        return p212.owner.Character
    end

    return p212.owner
end
t5.value93 = nil
function t5.value93(p213, p214)
    if p213.kind == "player" then
        return p214.displayName and p213.owner.DisplayName or p213.owner.Name
    end

    if p214.displayName and p213.humanoid then
        local DisplayName = p213.humanoid.DisplayName

        if type(DisplayName) == "string" and DisplayName ~= "" then
            return DisplayName
        end
    end

    return p213.owner.Name
end
function t5.value94(p215, p216, p217, p218)
    local v699 = t5.value92(p215)
    local v700 = not v699

    if not v700 then
        v700 = not v699:IsDescendantOf(t4.value4)
    end

    if v700 then
        t5.value72(p215)

        return
    end

    if p215.kind == "bot" and t4.value1:GetPlayerFromCharacter(v699) then
        t5.value72(p215)

        return
    end

    if not t5.value88(p215, v699) then
        t5.value87(p215, v699)
    end

    local humanoid = p215.humanoid
    local v702 = not humanoid
    local root = p215.root

    if not v702 then
        v702 = humanoid.Health <= 0 or (not root or not root.Parent)
    end

    if v702 then
        t5.value72(p215)

        return
    end

    local Magnitude = (root.Position - p217).Magnitude

    if Magnitude > p218.maxDistance then
        t5.value72(p215)

        return
    end

    t5.value71(p215, p218)
    p215.wasVisible = true

    local box = p218.box

    if not box then
        box = p218.healthBar

        if not box then
            box = p218.healthText or (p218.name or (p218.distance or p218.tracers))
        end
    end

    if box then
        local v706, v707, v708, v709 = t5.value89(p215, p216)

        if not v706 then
            t5.value72(p215)

            return
        end

        if p218.box then
            local v710 = v706 + v708
            local v711 = v707 + v709

            t5.value68(p215.box[1], v706, v707, v710, v707, p218.boxColor, p218.boxThickness)
            t5.value68(p215.box[2], v710, v707, v710, v711, p218.boxColor, p218.boxThickness)
            t5.value68(p215.box[3], v710, v711, v706, v711, p218.boxColor, p218.boxThickness)
            t5.value68(p215.box[4], v706, v711, v706, v707, p218.boxColor, p218.boxThickness)
        else
            t5.value69(p215.box)
        end

        local v712 = math.clamp(humanoid.Health / math.max(humanoid.MaxHealth, 1), 0, 1)

        if p218.healthBar then
            local v713 = v706 - 5

            t5.value68(p215.healthBack, v713, v707 + v709 + 1, v713, v707 - 1, Color3.fromRGB(0, 0, 0), p218.healthBarThickness + 2)
            t5.value68(p215.health, v713, v707 + v709, v713, v707 + v709 * (1 - v712), Color3.fromRGB(255 * (1 - v712), 255 * v712, 60), p218.healthBarThickness)
        elseif p215.health then
            p215.healthBack.Visible = false
            p215.health.Visible = false
        end

        if p215.healthText then
            p215.healthText.Visible = p218.healthText
        end

        if p218.healthText then
            if p218.healthPercent then
                p215.healthText.Text = tostring((math.floor(v712 * 100 + 0.5))) .. "%"
            else
                p215.healthText.Text = tostring((math.floor(humanoid.Health + 0.5))) .. "/" .. tostring((math.floor(humanoid.MaxHealth + 0.5)))
            end

            local healthText = p215.healthText
            local new = Vector2.new
            local v716 = v709 * (1 - v712)

            healthText.Position = new(v706 - 31, v707 + v716 - 7)
            p215.healthText.Color = p218.healthTextColor
            p215.healthText.Size = p218.healthTextSize
        end

        if p215.nameText then
            p215.nameText.Visible = p218.name
        end

        if p218.name then
            p215.nameText.Text = t5.value93(p215, p218)
            p215.nameText.Position = Vector2.new(v706 + v708 * 0.5, v707 - p218.nameSize - 2)
            p215.nameText.Color = p218.nameColor
            p215.nameText.Size = p218.nameSize
        end

        if p215.distanceText then
            p215.distanceText.Visible = p218.distance
        end

        if p218.distance then
            p215.distanceText.Text = tostring((math.floor(Magnitude + 0.5))) .. "m"
            p215.distanceText.Position = Vector2.new(v706 + v708 * 0.5, v707 + v709 + 2)
            p215.distanceText.Color = p218.distanceColor
            p215.distanceText.Size = p218.distanceSize
        end

        if p215.tracer then
            p215.tracer.Visible = p218.tracers
        end

        if p218.tracers then
            local ViewportSize = p216.ViewportSize

            t5.value68(p215.tracer, ViewportSize.X * 0.5, ViewportSize.Y - 2, v706 + v708 * 0.5, v707 + v709, p218.tracerColor, p218.tracerThickness, 1 - p218.tracerTransparency)
        end
    else
        t5.value69(p215.box)

        if p215.health then
            p215.healthBack.Visible = false
            p215.health.Visible = false
        end

        if p215.healthText then
            p215.healthText.Visible = false
        end

        if p215.nameText then
            p215.nameText.Visible = false
        end

        if p215.distanceText then
            p215.distanceText.Visible = false
        end

        if p215.tracer then
            p215.tracer.Visible = false
        end
    end

    t5.value90(p215, p216, p218)
    t5.value91(p215, p216, p218)
end
function t5.value95(p219)
    local skeleton = p219.skeleton

    if not skeleton then
        skeleton = p219.box

        if not skeleton then
            skeleton = p219.healthBar

            if not skeleton then
                skeleton = p219.healthText

                if not skeleton then
                    skeleton = p219.name or (p219.distance or (p219.tracers or p219.lookDirection))
                end
            end
        end
    end

    return skeleton
end
function t5.value96(p220)
    for k, v in pairs(p220.controls) do
        local v498 = v

        if v then
            v498 = v.Value ~= nil
        end

        if v498 then
            p220[k] = v.Value == true
        end
    end
end
function t5.value97(p221)
    for _, v in pairs(p221) do
        t5.value72(v)
    end
end
function t5.value98(p222)
    if t5.value43.enabled and (p222 ~= t4.value10 and not t5.value55[p222]) then
        local ok14, result12 = pcall(t5.value70, p222, "player")

        if ok14 and result12 then
            t5.value55[p222] = result12
        end
    end
end
function t5.value99(p223)
    local v482 = not p223

    if not v482 then
        v482 = not p223:IsA("Model")

        if not v482 then
            v482 = not p223:IsDescendantOf(t4.value4) or t4.value1:GetPlayerFromCharacter(p223)
        end
    end

    if v482 then
        return nil
    end

    local AiZones = t4.value4:FindFirstChild("AiZones")

    if p223.Parent ~= t4.value4 and (not AiZones and p223:IsDescendantOf(AiZones)) then
        return nil
    end

    local v484 = p223

    if p223.Name == "MI24V" then
        local Pilots = p223:FindFirstChild("Pilots")
        local v486 = Pilots and Pilots:FindFirstChild("Pilot")
        local v487 = Pilots and Pilots:FindFirstChild("Gunner")

        if v486 and v486:FindFirstChild("Head") then
            v484 = v486
        elseif v487 and v487:FindFirstChild("Head") then
            v484 = v487
        end
    end

    local v488 = v484:FindFirstChildOfClass("Humanoid") or (p223:FindFirstChildOfClass("Humanoid") or p223:FindFirstChildWhichIsA("Humanoid", true))
    local v489 = v488

    if v488 then
        v489 = v488.Parent and (v488.Parent:IsA("Model") and v488.Parent:FindFirstChild("Head"))
    end

    if v489 then
        v484 = v488.Parent
    end

    local HumanoidRootPart = v484:FindFirstChild("HumanoidRootPart")

    if not HumanoidRootPart then
        HumanoidRootPart = v484:FindFirstChild("UpperTorso")

        if not HumanoidRootPart then
            HumanoidRootPart = v484:FindFirstChild("Torso") or (v484:FindFirstChild("Head") or p223:FindFirstChild("HumanoidRootPart"))
        end
    end

    if not v488 or (not HumanoidRootPart or not HumanoidRootPart:IsA("BasePart")) then
        return nil
    end

    return v484
end
function t5.value100(p224)
    if not t5.value44.enabled then
        return
    end

    local v721 = t5.value99(p224)

    if v721 and not t5.value7[v721] then
        local ok15, result13 = pcall(t5.value70, v721, "bot")

        if ok15 and result13 then
            t5.value7[v721] = result13
        end
    end
end
function t5.value101()
    for _, player in ipairs(t4.value1:GetPlayers()) do
        t5.value98(player)
    end
end
function t5.value102()
    for _, child in ipairs(t4.value4:GetChildren()) do
        t5.value100(child)
    end

    local AiZones = t4.value4:FindFirstChild("AiZones")

    if AiZones then
        for _, descendant in ipairs(AiZones:GetDescendants()) do
            if descendant:IsA("Model") then
                t5.value100(descendant)
            end
        end
    end
end
t5.value60[#t5.value60 + 1] = t4.value1.PlayerAdded:Connect(t5.value98)
t5.value60[#t5.value60 + 1] = t4.value1.PlayerRemoving:Connect(function(player)
    t5.value73(t5.value55, player)
end)
t5.value60[#t5.value60 + 1] = t4.value4.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Humanoid") then
        local descendantParent = descendant.Parent

        task.defer(function()
            t5.value100(descendantParent)
        end)

        return
    end

    if descendant:IsA("Model") then
        task.defer(function()
            t5.value100(descendant)
        end)
    end
end)
t5.value60[#t5.value60 + 1] = t4.value4.DescendantRemoving:Connect(function(descendant)
    if t5.value7[descendant] then
        t5.value73(t5.value7, descendant)
    end
end)
t5.value60[#t5.value60 + 1] = t4.value3.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.RightShift then
        t4.value12:Toggle()
    end
end)
pcall(function()
    t4.value2:UnbindFromRenderStep(t5.value64)
end)
t4.value2:BindToRenderStep(t5.value64, Enum.RenderPriority.Camera.Value + 2, function()
    if t5.value61 then
        return
    end

    t5.value96(t5.value43)
    t5.value96(t5.value44)
    t5.value96(t5.value45)
    t5.value96(t5.value46)
    t5.value96(t5.value47)

    local v735 = t5.value43.enabled and t5.value95(t5.value43)
    local v736 = t5.value44.enabled and t5.value95(t5.value44)
    local v737 = t5.value83(t5.value45)
    local v738 = not v735
    local v739 = t5.value83(t5.value46)
    local v740 = t5.value83(t5.value47)

    if v738 then
        v738 = not v736

        if v738 then
            v738 = not v737

            if v738 then
                v738 = not v739

                if v738 then
                    v738 = not v740
                end
            end
        end
    end

    if v738 then
        if t5.value62 then
            local value55 = t5.value55

            t5.value97(value55)
            t5.value62 = false
        end
        if t5.value63 then
            t5.value97(t5.value7)
            t5.value63 = false
        end
        for _, v in pairs(t5.value56.Vehicle) do
            t5.value72(v)
        end
        for v746, v747 in pairs(t5.value56.SupplyDrop) do

            t5.value72(v747)
        end
        for _, v in pairs(t5.value56.QuestItem) do
            t5.value72(v)
        end

        return
    end

    local CurrentCamera2 = t4.value4.CurrentCamera

    if not CurrentCamera2 then
        return
    end

    local Character = t4.value10.Character
    local v752 = Character and Character:FindFirstChild("HumanoidRootPart")
    local v753 = v752 and v752.Position or CurrentCamera2.CFrame.Position

    t5.value84("Vehicle", CurrentCamera2, v753, t5.value45)
    t5.value84("SupplyDrop", CurrentCamera2, v753, t5.value46)
    t5.value84("QuestItem", CurrentCamera2, v753, t5.value47)

    if v735 then
        if not t5.value62 then
            t5.value101()
        end

        t5.value62 = true

        for _, v in pairs(t5.value55) do
            if not pcall(t5.value94, v, CurrentCamera2, v753, t5.value43) then
                t5.value72(v)
            end
        end
    elseif t5.value62 then
        t5.value97(t5.value55)
    end

    if v736 then
        if not t5.value63 then
            t5.value102()
        end
        local v756
        t5.value63 = true
        for v759, v760 in pairs(t5.value7) do

            if v759.Parent and not t4.value1:GetPlayerFromCharacter(v759) then
                if not pcall(t5.value94, v760, CurrentCamera2, v753, t5.value44) then
                    t5.value72(v760)
                end
            else
                v756 = v756 or {}
                v756[#v756 + 1] = v759
            end
        end
        if v756 then
            for i = 1, #v756 do
                t5.value73(t5.value7, v756[i])
            end

            return
        end
    elseif t5.value63 then
        t5.value97(t5.value7)
    end
end)
t5.value103 = {
	dead = false,
	ammo = {},
	fireRateObjects = {},
	fireRateObjectSet = {},
	fireRateOriginals = {},
	fireRateScanned = false,
	fireRateApplied = false,
	nextFireRateScan = 0,
	equipConnections = {},
	leafOriginals = {},
	cloudOriginals = {},
	mines = {},
	fogOriginals = {},
	xrayOriginals = {},
	viewParts = {},
	viewMotors = {},
	viewHidden = {},
	skinOriginals = {},
	visorOriginals = {},
	visorSounds = {},
	connections = {},
	nextSlow = 0,
	nextLeaves = 0,
	nextMines = 0,
	grassCaptured = false,
	lightingOriginal = nil,
	zoomProfile = nil,
	zoomOriginal = nil,
	zoomCamera = nil,
	zoomCameraFov = nil,
	zoomDesired = nil,
	viewModel = nil,
	viewSignature = nil,
	skinSignature = nil,
	fastBase = 17.4,
	fastDelay = 9,
	fastSpeed = 17.4,
	fastWasOn = false
}
function t5.value104(p225)
    for _, v in pairs(p225) do
        local v765 = v

        pcall(function()
            v765:Disconnect()
        end)
    end

    table.clear(p225)
end
function t5.value105(p226, p227)
    local p227_2 = p226:GetAttribute(p227)

    return {
		exists = p227_2 ~= nil,
		value = p227_2
	}
end
function t5.value106(p228, p229, p230)
    if not p228 or not p230 then
        return
    end

    pcall(function()
        p228:SetAttribute(p229, p230.exists and p230.value or nil)
    end)
end
function t5.value107(p231)
    local v773 = t5.value103.ammo[p231]

    if not v773 then
        v773 = {}
        t5.value103.ammo[p231] = v773
    end

    return v773
end
function t5.value108()
    if not t5.value48.noRecoil and (not t5.value48.noSpread and not next(t5.value103.ammo)) then
        return
    end

    local AmmoTypes = t4.value5:FindFirstChild("AmmoTypes")

    if AmmoTypes then
        for _, child in ipairs(AmmoTypes:GetChildren()) do
            local v780 = t5.value107(child)

            if t5.value48.noRecoil then
                if not v780.recoil then
                    v780.recoil = t5.value105(child, "RecoilStrength")
                end

                child:SetAttribute("RecoilStrength", 0)
            elseif v780.recoil then
                t5.value106(child, "RecoilStrength", v780.recoil)
                v780.recoil = nil
            end

            if t5.value48.noSpread then
                if not v780.spread then
                    v780.spread = t5.value105(child, "AccuracyDeviation")
                    v780.drop = t5.value105(child, "ProjectileDrop")
                end

                if v780.spread.exists then
                    child:SetAttribute("AccuracyDeviation", 0)
                end

                child:SetAttribute("ProjectileDrop", 0)
            elseif v780.spread then
                t5.value106(child, "AccuracyDeviation", v780.spread)
                t5.value106(child, "ProjectileDrop", v780.drop)
                v780.spread = nil
                v780.drop = nil
            end

            if not v780.recoil and not v780.spread then
                t5.value103.ammo[child] = nil
            end
        end
    end

    local t14 = {}

    for k in pairs(t5.value103.ammo) do
        local v783 = k

        if not v783.Parent then
            t14[#t14 + 1] = v783
        end
    end

    for i = 1, #t14 do
        t5.value103.ammo[t14[i]] = nil
    end
end
function t5.value109()
    for k, v in pairs(t5.value103.ammo) do
        local v776 = k

        if v.recoil then
            t5.value106(v776, "RecoilStrength", v.recoil)
        end

        if v.spread then
            t5.value106(v776, "AccuracyDeviation", v.spread)
            t5.value106(v776, "ProjectileDrop", v.drop)
        end
    end

    table.clear(t5.value103.ammo)
end
local v97 = rawget(t1.value1, "setreadonly")

if v97 == nil and t1.value1 ~= _G then
    v97 = rawget(_G, "setreadonly")
end
local v98 = rawget(t1.value1, "isreadonly")

if v98 == nil and t1.value1 ~= _G then
    v98 = rawget(_G, "isreadonly")
end
t5.value110 = {
	setReadonly = v97,
	isReadonly = v98
}
function t5.value110.write(p232, p233)
    if type(p232) ~= "table" or type(p233) ~= "number" then
        return false
    end

    local v787 = false
    local v788 = false

    if type(t5.value110.isReadonly) == "function" then
        local success, result = pcall(t5.value110.isReadonly, p232)
        if success then
            v787 = true
            v788 = result == true
        end
    end

    if type(t5.value110.setReadonly) == "function" then
        pcall(t5.value110.setReadonly, p232, false)
    end

    local v791 = pcall(rawset, p232, "FireRate", p233) or pcall(function()
        p232.FireRate = p233
    end)

    if type(t5.value110.setReadonly) == "function" and v787 then
        pcall(t5.value110.setReadonly, p232, v788)
    end

    return v791
end
function t5.value110.isObject(p234)
    if type(p234) ~= "table" then
        return false
    end

    if type((rawget(p234, "FireRate"))) ~= "number" then
        return false
    end

    local v793 = type((rawget(p234, "settings"))) == "table"

    if not v793 then
        v793 = type((rawget(p234, "FireModes"))) == "table" or (type((rawget(p234, "AimInSpeed"))) == "number" or type((rawget(p234, "AmmoType"))) == "string")
    end

    return v793
end
function t5.value110.track(p235)
    if not t5.value110.isObject(p235) or t5.value103.fireRateObjectSet[p235] then
        return
    end

    t5.value103.fireRateObjectSet[p235] = true
    t5.value103.fireRateObjects[#t5.value103.fireRateObjects + 1] = p235
    t5.value103.fireRateOriginals[p235] = rawget(p235, "FireRate")
end
function t5.value110.scan()
    local v795 = rawget(t1.value1, "getgc")
    if v795 == nil and t1.value1 ~= _G then
        v795 = rawget(_G, "getgc")
    end
    if type(v795) ~= "function" then
        return false
    end
    local ok16, result14 = pcall(v795, true)
    if not ok16 or type(result14) ~= "table" then
        ok16, result14 = pcall(v795)
    end
    if not ok16 or type(result14) ~= "table" then
        return false
    end
    local _next = next
    local v799
    while true do
        local v800

        v799, v800 = _next(result14, v799)

        if not v799 then
            break
        end

        pcall(t5.value110.track, v800)
    end
    t5.value103.fireRateScanned = true

    return true
end
function t5.value110.restore()
    for k, v in pairs(t5.value103.fireRateOriginals) do
        if type(v) == "number" then
            t5.value110.write(k, v)
        end
    end

    t5.value103.fireRateApplied = false
end
function t5.value110.apply()
    if not t5.value48.fireRate then
        if t5.value103.fireRateApplied then
            t5.value110.restore()
        end

        return
    end

    local v807 = math.clamp(tonumber(t5.value48.fireDelay) or 0.05, 0.01, 1)
    local t16 = {}

    for i, v in ipairs(t5.value103.fireRateObjects) do
        if type(v) ~= "table" or not t5.value110.isObject(v) then
            t16[#t16 + 1] = i
        elseif v807 ~= rawget(v, "FireRate") then
            t5.value110.write(v, v807)
        end
    end

    for i = #t16, 1, -1 do
        local v812 = table.remove(t5.value103.fireRateObjects, t16[i])

        t5.value103.fireRateObjectSet[v812] = nil
        t5.value103.fireRateOriginals[v812] = nil
    end

    t5.value103.fireRateApplied = true
end
function t5.value110.sync(p236)
    if not t5.value48.fireRate then
        if t5.value103.fireRateApplied then
            t5.value110.restore()
        end

        return
    end

    if p236 >= t5.value103.nextFireRateScan and not t5.value103.fireRateScanned or #t5.value103.fireRateObjects == 0 then
        t5.value110.scan()
        t5.value103.nextFireRateScan = p236 + 2
    end

    t5.value110.apply()
end
t5.value111 = nil
function t5.value111(p237)
    local v826 = p237 and p237.Animation

    if (v826 and v826.Name or p237 and p237.Name) ~= "Equip" then
        return
    end

    pcall(function()
        p237:AdjustSpeed(15)

        local v1074 = tonumber(p237.Length) or 0

        if v1074 > 0 then
            p237.TimePosition = math.max(v1074 - 0.01, 0)
        end
    end)
end
function t5.value112()
    if not t5.value48.instantEquip then
        if next(t5.value103.equipConnections) then
            t5.value104(t5.value103.equipConnections)
        end

        return
    end

    local CurrentCamera3 = t4.value4.CurrentCamera

    if not CurrentCamera3 then
        return
    end

    for _, descendant in ipairs(CurrentCamera3:GetDescendants()) do
        if descendant:IsA("Animator") and not t5.value103.equipConnections[descendant] then
            t5.value103.equipConnections[descendant] = descendant.AnimationPlayed:Connect(t5.value111)

            local GetPlayingAnimationTracks = descendant.GetPlayingAnimationTracks

            for _, v in ipairs(GetPlayingAnimationTracks(descendant)) do
                t5.value111(v)
            end
        end
    end
end
function t5.value113(p238)
    local v802 = rawget(t1.value1, "sethiddenproperty")

    if v802 == nil and t1.value1 ~= _G then
        v802 = rawget(_G, "sethiddenproperty")
    end

    if type(v802) == "function" then
        return pcall(v802, t4.value4.Terrain, "Decoration", p238)
    end

    return pcall(function()
        t4.value4.Terrain.Decoration = p238
    end)
end
t5.value114 = nil
function t5.value114()
    local v813 = rawget(t1.value1, "gethiddenproperty")

    if v813 == nil and t1.value1 ~= _G then
        v813 = rawget(_G, "gethiddenproperty")
    end

    if type(v813) == "function" then
        return pcall(v813, t4.value4.Terrain, "Decoration")
    end

    return pcall(function()
        return t4.value4.Terrain.Decoration
    end)
end
function t5.value115()
    if t5.value48.noGrass then
        if not t5.value103.grassCaptured then
            local v831, v832 = t5.value114()

            t5.value103.grassCaptured = true
            t5.value103.grassOriginal = v831 and v832 or true
        end

        t5.value113(false)

        return
    end

    if t5.value103.grassCaptured then
        t5.value113(t5.value103.grassOriginal)
        t5.value103.grassCaptured = false
        t5.value103.grassOriginal = nil
    end
end
function t5.value116(p239)
    if p239:IsA("BasePart") and p239:FindFirstChildOfClass("SurfaceAppearance") then
        if t5.value103.leafOriginals[p239] == nil then
            t5.value103.leafOriginals[p239] = p239.Transparency
        end

        p239.Transparency = 1
    end
end
function t5.value117()
    local SpawnerZones = t4.value4:FindFirstChild("SpawnerZones")
    local v843 = SpawnerZones and SpawnerZones:FindFirstChild("Foliage")

    if not v843 then
        return
    end

    local GetDescendants = v843.GetDescendants

    for _, v in ipairs(GetDescendants(v843)) do
        t5.value116(v)
    end
end
function t5.value118()
    for k, v in pairs(t5.value103.leafOriginals) do
        local v830 = v

        pcall(function()
            k.Transparency = v830
        end)
    end

    table.clear(t5.value103.leafOriginals)
end
function t5.value119()
    local Clouds = t4.value4.Terrain:FindFirstChild("Clouds")

    if t5.value48.noClouds and (Clouds and Clouds:IsA("Clouds")) then
        if t5.value103.cloudOriginals[Clouds] == nil then
            t5.value103.cloudOriginals[Clouds] = Clouds.Enabled
        end

        Clouds.Enabled = false

        return
    end

    if not t5.value48.noClouds then
        for k, v in pairs(t5.value103.cloudOriginals) do
            local v817 = v

            pcall(function()
                k.Enabled = v817
            end)
        end

        table.clear(t5.value103.cloudOriginals)
    end
end
local t17 = {
	PMN2 = true,
	MON50 = true
}
t5.value120 = nil
t5.value120 = t17
function t5.value121(p240)
    local v853 = p240

    if p240 then
        v853 = p240:IsA("Model")

        if v853 then
            v853 = t5.value120[p240.Name] and (p240.Parent and not t5.value103.mines[p240])
        end
    end

    if v853 then
        t5.value103.mines[p240] = p240.Parent
        p240.Parent = nil
    end
end
local function v100()
    local AiZones = t4.value4:FindFirstChild("AiZones")

    if AiZones then
        local GetDescendants = AiZones.GetDescendants

        for _, v in ipairs(GetDescendants(AiZones)) do
            t5.value121(v)
        end
    end

    for _, child in ipairs(t4.value4:GetChildren()) do
        t5.value121(child)
    end
end
function t5.value122()
    for k, v in pairs(t5.value103.mines) do
        local v856 = v

        pcall(function()
            k.Parent = v856
        end)
    end

    table.clear(t5.value103.mines)
end
function t5.value123()
    if t5.value48.fullBright then
        if not t5.value103.lightingOriginal then
            local value103 = t5.value103
            local value8Brightness = t4.value8.Brightness
            local OutdoorAmbient = t4.value8.OutdoorAmbient
            local value8Ambient = t4.value8.Ambient

            value103.lightingOriginal = {
				brightness = value8Brightness,
				outdoor = OutdoorAmbient,
				ambient = value8Ambient
			}
        end

        t4.value8.Brightness = 10
        t4.value8.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        t4.value8.Ambient = Color3.fromRGB(255, 255, 255)
    elseif t5.value103.lightingOriginal then
        t4.value8.Brightness = t5.value103.lightingOriginal.brightness
        t4.value8.OutdoorAmbient = t5.value103.lightingOriginal.outdoor
        t4.value8.Ambient = t5.value103.lightingOriginal.ambient
        t5.value103.lightingOriginal = nil
    end

    local Atmosphere = t4.value8:FindFirstChildOfClass("Atmosphere")

    if t5.value48.noFog and Atmosphere then
        if not t5.value103.fogOriginals[Atmosphere] then
            local fogOriginals = t5.value103.fogOriginals
            local Haze = Atmosphere.Haze
            local AtmosphereDensity = Atmosphere.Density

            fogOriginals[Atmosphere] = {
				haze = Haze,
				density = AtmosphereDensity
			}
        end

        Atmosphere.Haze = 0
        Atmosphere.Density = 0

        return
    end

    if not t5.value48.noFog then
        for k, v in pairs(t5.value103.fogOriginals) do
            local v867 = v

            pcall(function()
                k.Haze = v867.haze
                k.Density = v867.density
            end)
        end

        table.clear(t5.value103.fogOriginals)
    end
end
t5.value124 = nil
function t5.value124(p241)
    if not t5.value48.xray or (not p241:IsA("BasePart") or (t5.value103.xrayOriginals[p241] ~= nil or p241.Transparency ~= 0)) then
        return
    end

    local p241Parent = p241.Parent

    if p241Parent and p241Parent:FindFirstChildOfClass("Humanoid") then
        return
    end

    local CurrentCamera4 = t4.value4.CurrentCamera
    local v851 = CurrentCamera4 and CurrentCamera4.CFrame.Position - p241.Position

    if not v851 or v851:Dot(v851) > 250000 then
        return
    end

    t5.value103.xrayOriginals[p241] = p241.Transparency
    p241.Transparency = 0.5
end
function t5.value125()
    for _, descendant in ipairs(t4.value4:GetDescendants()) do
        if descendant:IsA("BasePart") then
            t5.value124(descendant)
        end
    end
end
function t5.value126()
    for k, v in pairs(t5.value103.xrayOriginals) do
        local v876 = v

        pcall(function()
            k.Transparency = v876
        end)
    end

    table.clear(t5.value103.xrayOriginals)
end
function t5.value127()
    local Players2 = t4.value5:FindFirstChild("Players")

    if Players2 then
        Players2 = Players2:FindFirstChild(t4.value10.Name)
    end

    local v804 = Players2 and Players2:FindFirstChild("Settings")

    return v804 and v804:FindFirstChild("GameplaySettings")
end
function t5.value128()
    t5.value103.zoomDesired = nil

    local v847 = rawget(t5.value103.connections, "zoomGuard")

    if v847 then
        pcall(function()
            v847:Disconnect()
        end)
        rawset(t5.value103.connections, "zoomGuard", nil)
    end

    if t5.value103.zoomProfile and t5.value103.zoomOriginal then
        t5.value106(t5.value103.zoomProfile, "DefaultFOV", t5.value103.zoomOriginal)
    end

    t5.value103.zoomProfile = nil
    t5.value103.zoomOriginal = nil

    if t5.value103.zoomCamera and t5.value103.zoomCameraFov then
        pcall(function()
            t5.value103.zoomCamera.FieldOfView = t5.value103.zoomCameraFov
        end)
    end

    t5.value103.zoomCamera = nil
    t5.value103.zoomCameraFov = nil
end
function t5.value129()
    local ZoomKey = t5.value2.ZoomKey

    if not ZoomKey then
        return false
    end

    if typeof(ZoomKey.GetState) == "function" then
        local ok17, result15 = pcall(ZoomKey.GetState, ZoomKey)

        if ok17 and result15 then
            return true
        end
    end

    local ZoomKeyValue = ZoomKey.Value

    if typeof(ZoomKeyValue) == "EnumItem" then
        if ZoomKeyValue.EnumType == Enum.KeyCode then
            return t4.value3:IsKeyDown(ZoomKeyValue)
        end

        if ZoomKeyValue.EnumType == Enum.UserInputType then
            return t4.value3:IsMouseButtonPressed(ZoomKeyValue)
        end
    elseif type(ZoomKeyValue) == "string" then
        local MouseButton1 = Enum.UserInputType.MouseButton1
        local MouseButton2 = Enum.UserInputType.MouseButton2
        local MouseButton3 = Enum.UserInputType.MouseButton3
        local t18 = {
			MB1 = MouseButton1,
			MB2 = MouseButton2,
			MB3 = MouseButton3
		}

        if t18[ZoomKeyValue] then
            return t4.value3:IsMouseButtonPressed(t18[ZoomKeyValue])
        end

        local v841 = Enum.KeyCode[ZoomKeyValue]

        if v841 then
            return t4.value3:IsKeyDown(v841)
        end
    end

    return false
end
function t5.value130()
    if not t5.value48.zoom then
        t5.value128()

        return
    end

    local v879 = t5.value127()

    if v879 ~= t5.value103.zoomProfile then
        t5.value128()
        t5.value103.zoomProfile = v879

        if v879 then
            t5.value103.zoomOriginal = t5.value105(v879, "DefaultFOV")
        end
    end

    local v880 = t5.value129() and math.clamp(tonumber(t5.value2.value("ZoomFOV", 10)) or 10, 1, 70) or math.clamp(tonumber(t5.value2.value("NormalFOV", 90)) or 90, 1, 120)

    if v879 and v880 ~= v879:GetAttribute("DefaultFOV") then
        v879:SetAttribute("DefaultFOV", v880)
    end

    local CurrentCamera5 = t4.value4.CurrentCamera

    if CurrentCamera5 ~= t5.value103.zoomCamera then
        local v882 = rawget(t5.value103.connections, "zoomGuard")

        if v882 then
            pcall(function()
                v882:Disconnect()
            end)
            rawset(t5.value103.connections, "zoomGuard", nil)
        end

        if t5.value103.zoomCamera and t5.value103.zoomCameraFov then
            pcall(function()
                t5.value103.zoomCamera.FieldOfView = t5.value103.zoomCameraFov
            end)
        end

        t5.value103.zoomCamera = CurrentCamera5
        t5.value103.zoomCameraFov = CurrentCamera5 and CurrentCamera5.FieldOfView or nil

        if CurrentCamera5 then
            rawset(t5.value103.connections, "zoomGuard", CurrentCamera5:GetPropertyChangedSignal("FieldOfView"):Connect(function()
                local zoomDesired = t5.value103.zoomDesired
                local zoom = t5.value48.zoom

                if zoom then
                    zoom = not t5.value48.freeCam

                    if zoom then
                        zoom = CurrentCamera5 == t4.value4.CurrentCamera and (zoomDesired and math.abs(CurrentCamera5.FieldOfView - zoomDesired) > 0.01)
                    end
                end

                if zoom then
                    CurrentCamera5.FieldOfView = zoomDesired
                end
            end))
        end
    end

    t5.value103.zoomDesired = v880

    if CurrentCamera5 and not t5.value48.freeCam then
        CurrentCamera5.FieldOfView = v880
    end
end
t5.value131 = {
	"LeftHand",
	"LeftLowerArm",
	"LeftUpperArm",
	"RightHand",
	"RightLowerArm",
	"RightUpperArm"
}
t5.value132 = {
	["Body Colors"] = true,
	Clothing = true,
	Humanoid = true,
	ZoomAmount = true,
	Item = true,
	LeftHand = true,
	LeftLowerArm = true,
	LeftUpperArm = true,
	RightHand = true,
	RightLowerArm = true,
	RightUpperArm = true,
	AimPart = true,
	AimPartCanted = true,
	FakeCamera = true,
	HumanoidRootPart = true
}
t5.value133 = nil
function t5.value133()
    for k, v in pairs(t5.value103.viewParts) do
        local v889 = v

        pcall(function()
            k.Color = v889.color
            k.Transparency = v889.transparency
        end)
    end
    for v892, v893 in pairs(t5.value103.viewMotors) do

        local v894 = v892
        local v895 = v893

        pcall(function()
            v894.C0 = v895
        end)
    end
    for k, v in pairs(t5.value103.viewHidden) do
        local v898 = v

        pcall(function()
            k.Parent = v898
        end)
    end
    table.clear(t5.value103.viewParts)
    table.clear(t5.value103.viewMotors)
    table.clear(t5.value103.viewHidden)
    t5.value103.viewSignature = nil
end
function t5.value134(p242)
    if p242 == t5.value103.viewModel then
        return
    end

    t5.value133()

    for k, v in pairs(t5.value103.skinOriginals) do
        local v886 = v

        if v886.applied then
            pcall(function()
                v886.applied:Destroy()
            end)
        end

        if v886.original and (k.Parent and not k:FindFirstChildOfClass("SurfaceAppearance")) then
            pcall(function()
                v886.original:Clone().Parent = k
            end)
        end
    end

    table.clear(t5.value103.skinOriginals)
    t5.value103.skinSignature = nil
    t5.value103.viewModel = p242
end
function t5.value135()
    local CurrentCamera6 = t4.value4.CurrentCamera
    local v911 = CurrentCamera6 and CurrentCamera6:FindFirstChild("ViewModel")

    t5.value134(v911)

    if not t5.value48.viewModel or not v911 then
        if not t5.value48.viewModel then
            t5.value133()
        end

        return
    end

    local v912 = t5.value2.value("ArmColor", Color3.fromRGB(79, 155, 121))
    local v913 = math.clamp((tonumber(t5.value2.value("ArmTransparency", 0)) or 0) / 100, 0, 1)
    local v914 = table.concat({
		tostring(v912),
		tostring(v913),
		tostring(t5.value2.value("ArmX", 50)),
		tostring(t5.value2.value("ArmY", 50)),
		tostring(t5.value2.value("ArmZ", 50))
	}, "|")

    if v914 ~= t5.value103.viewSignature then
        t5.value133()
        t5.value103.viewSignature = v914
    end

    local GetChildren = v911.GetChildren

    for _, v in ipairs(GetChildren(v911)) do
        if not t5.value132[v.Name] and not t5.value103.viewHidden[v] then
            t5.value103.viewHidden[v] = v911
            v.Parent = nil
        end
    end

    for i = 1, #t5.value131 do
        local v919 = v911:FindFirstChild(t5.value131[i])

        if v919 and v919:IsA("BasePart") then
            if not t5.value103.viewParts[v919] then
                local viewParts = t5.value103.viewParts
                local Color = v919.Color
                local Transparency = v919.Transparency

                viewParts[v919] = {
					color = Color,
					transparency = Transparency
				}
            end

            v919.Color = v912
            v919.Transparency = v913
        end
    end

    local HumanoidRootPart = v911:FindFirstChild("HumanoidRootPart")
    local vector3 = Vector3.new((tonumber(t5.value2.value("ArmX", 50)) or 50) / 20 - 2.5, (tonumber(t5.value2.value("ArmY", 50)) or 50) / 20 - 2.5, (tonumber(t5.value2.value("ArmZ", 50)) or 50) / 20 - 2.5)

    if HumanoidRootPart then
        for _, v in ipairs({
			"LeftUpperArm",
			"RightUpperArm",
			"Motor6D"
		}) do
            local v10 = HumanoidRootPart:FindFirstChild(v)

            if v10 and v10:IsA("Motor6D") then
                if not t5.value103.viewMotors[v10] then
                    t5.value103.viewMotors[v10] = v10.C0
                end

                v10.C0 = t5.value103.viewMotors[v10] + vector3
            end
        end
    end
end
function t5.value136(p243)
    local Skins = t4.value5:FindFirstChild("Skins")

    if not Skins then
        return nil
    end

    for _, child in ipairs(Skins:GetChildren()) do
        local p243_2 = child:FindFirstChild(p243)
        local v904 = p243_2 and p243_2:FindFirstChild("Textures")
        local v905 = v904 and v904:FindFirstChild("Base")

        if v905 and v905:IsA("SurfaceAppearance") then
            return v905
        end
    end

    return nil
end
function t5.value137()
    for k, v in pairs(t5.value103.skinOriginals) do
        local v930 = k
        local v931 = v

        if v931.applied then
            pcall(function()
                v931.applied:Destroy()
            end)
        end

        if v931.original and (v930.Parent and not v930:FindFirstChildOfClass("SurfaceAppearance")) then
            pcall(function()
                v931.original:Clone().Parent = v930
            end)
        end
    end

    table.clear(t5.value103.skinOriginals)
    t5.value103.skinSignature = nil
end
function t5.value138(p244, p245)
    if not p244 or not p244.Parent then
        return false
    end

    local v908 = t5.value103.skinOriginals[p244]

    if not v908 then
        local SurfaceAppearance = p244:FindFirstChildOfClass("SurfaceAppearance")

        if not SurfaceAppearance then
            return false
        end

        v908 = {
			original = SurfaceAppearance:Clone()
		}
        t5.value103.skinOriginals[p244] = v908
        SurfaceAppearance:Destroy()
    elseif v908.applied then
        v908.applied:Destroy()
    end

    v908.applied = p245:Clone()
    v908.applied.Name = "WCheatz_SkinAppearance"
    v908.applied.Parent = p244

    return true
end
function t5.value139()
    if not t5.value48.skin then
        t5.value137()

        return
    end

    local viewModel = t5.value103.viewModel
    local v933 = viewModel and viewModel:FindFirstChild("Item")
    local v934 = t5.value2.value("SkinName", "Anton")
    local v935 = t5.value136(v934)
    local v936 = t5.value2.value("SkinBlacklist", {})
    local v937 = type(v936) == "table" and v936 or {}
    local v938 = v934 .. "|" .. tostring(viewModel and #viewModel:GetDescendants() or 0)

    for i = 1, #t5.value50 do
        local v940 = v937[t5.value50[i]] and "1"

        if not v940 then
            v940 = "0"
        end

        v938 ..= v940
    end

    if v938 ~= t5.value103.skinSignature then
        t5.value137()
        t5.value103.skinSignature = v938
    elseif next(t5.value103.skinOriginals) then
        return
    end

    if not v933 or not v935 then
        return
    end

    if not v937.ItemRoot then
        for _, child in ipairs(v933:GetChildren()) do
            if child:FindFirstChildOfClass("SurfaceAppearance") then
                t5.value138(child, v935)
            end
        end
    end

    local Attachments = v933:FindFirstChild("Attachments")

    if Attachments then
        for _, child in ipairs(Attachments:GetChildren()) do
            if not v937[child.Name] then
                for _, descendant in ipairs(child:GetDescendants()) do
                    if descendant:FindFirstChildOfClass("SurfaceAppearance") then
                        t5.value138(descendant, v935)
                    end
                end
            end
        end
    end
end
t5.value140 = {
	["rbxassetid://4585382589"] = true,
	["rbxassetid://4585351098"] = true,
	["rbxassetid://4585382046"] = true,
	["rbxassetid://4585364605"] = true
}
local function v101(p246)
    t5.value49()

    if not t5.value48.hitSound or (not p246:IsA("Sound") or not t5.value140[p246.SoundId]) then
        return
    end

    local v951 = t5.value2.value("HitSoundName", "Default")

    if v951 ~= "Default" then
        p246.SoundId = t5.value51[v951] or t5.value51.Default
        p246.Volume = math.clamp((tonumber(t5.value2.value("HitSoundVolume", 100)) or 100) / 100, 0.01, 55)
    end
end
function t5.value141()
    local Character = t4.value10.Character
    local v949 = Character and Character:FindFirstChildOfClass("Humanoid")

    if t5.value48.fastRun and v949 then
        t5.value103.fastWasOn = true

        if v949.WalkSpeed ~= t5.value103.fastSpeed then
            v949.WalkSpeed = t5.value103.fastSpeed

            return
        end
    elseif t5.value103.fastWasOn then
        if v949 then
            v949.WalkSpeed = 16
        end

        t5.value103.fastWasOn = false
    end
end
local spawn = task.spawn
t5.value142 = nil
spawn(function()
    while not t5.value103.dead do
        task.wait(math.random(60, 120))

        if t5.value103.dead then
            return
        end

        if t5.value48.fastRun then
            local _ = t5.value103.fastDelay

            task.wait(math.random(2, 4) / 10)
            t5.value103.fastSpeed = t5.value103.fastBase
        end
    end
end)
t5.value143 = nil
function t5.value143()

    for v955, v956 in pairs(t5.value103.visorOriginals) do

        local v957 = v955
        local v958 = v956

        pcall(function()
            v957.Visible = v958
        end)
    end
    for k in pairs(t5.value103.visorSounds) do
        pcall(function()
            k:Play()
        end)
    end
    table.clear(t5.value103.visorOriginals)
    table.clear(t5.value103.visorSounds)
end
function t5.value144()
    if not t5.value48.noVisor then
        if next(t5.value103.visorOriginals) or next(t5.value103.visorSounds) then
            t5.value143()
        end

        return
    end

    local PlayerGui = t4.value10:FindFirstChild("PlayerGui")
    local v962 = PlayerGui and PlayerGui:FindFirstChild("NoInsetGui")
    local v963 = v962 and v962:FindFirstChild("MainFrame")
    local v964 = v963 and v963:FindFirstChild("ScreenEffects")

    if not v964 then
        return
    end

    for _, v in ipairs({
		"Visor",
		"HelmetMask",
		"Mask",
		"Flashbang"
	}) do
        local v11 = v964:FindFirstChild(v)

        if v11 and v11:IsA("GuiObject") then
            if t5.value103.visorOriginals[v11] == nil then
                t5.value103.visorOriginals[v11] = v11.Visible
            end

            v11.Visible = false

            local GetDescendants = v11.GetDescendants

            for _, v13 in ipairs(GetDescendants(v11)) do
                if v13:IsA("Sound") and v13.Playing then
                    t5.value103.visorSounds[v13] = true
                    v13:Stop()
                end
            end
        end
    end
end
t5.value142 = false
function t5.value145(p247)
    t5.value108()
    t5.value110.sync(p247)
    t5.value112()
    t5.value115()

    if t5.value48.noLeafs then
        if p247 >= t5.value103.nextLeaves then
            t5.value103.nextLeaves = p247 + 10
            t5.value117()
        end
    elseif next(t5.value103.leafOriginals) then
        t5.value118()
    end

    t5.value119()

    if t5.value48.noLandmines then
        if p247 >= t5.value103.nextMines then
            t5.value103.nextMines = p247 + 0.5
            v100()
        end
    elseif next(t5.value103.mines) then
        t5.value122()
    end

    if t5.value48.xray and not t5.value142 then
        t5.value142 = true
        t5.value125()
    elseif not t5.value48.xray and t5.value142 then
        t5.value142 = false
        t5.value126()
    end

    pcall(t5.value135)
    pcall(t5.value139)
end
t5.value103.connections.descendantAdded = t4.value4.DescendantAdded:Connect(function(descendant)
    if t5.value48.xray and descendant:IsA("BasePart") then
        t5.value124(descendant)
    end

    if t5.value48.noLeafs then
        local SpawnerZones = t4.value4:FindFirstChild("SpawnerZones")
        local v973 = SpawnerZones and SpawnerZones:FindFirstChild("Foliage")

        if v973 and descendant:IsDescendantOf(v973) then
            if descendant:IsA("BasePart") then
                t5.value116(descendant)

                return
            end

            if descendant:IsA("SurfaceAppearance") and (descendant.Parent and descendant.Parent:IsA("BasePart")) then
                t5.value116(descendant.Parent)
            end
        end
    end
end)

local PlayerGui = t4.value10:FindFirstChildOfClass("PlayerGui")

if PlayerGui then
    t5.value103.connections.hitSound = PlayerGui.DescendantAdded:Connect(function(descendant)
        v101(descendant)
    end)
end
t5.value103.connections.heartbeat = t4.value2.Heartbeat:Connect(function()
    if t5.value103.dead then
        return
    end

    t5.value49()

    local elapsed = os.clock()

    if elapsed >= t5.value103.nextSlow then
        t5.value103.nextSlow = elapsed + 0.1
        pcall(t5.value145, elapsed)
    end

    pcall(t5.value141)
    pcall(t5.value123)

    if t5.value48.noFall then
        pcall(function()
            local Character = t4.value10.Character
            local v1078 = Character and Character:FindFirstChildOfClass("Humanoid")
            local v1079 = Character and Character:FindFirstChild("HumanoidRootPart")

            if v1078 and v1079 then
                local State = v1078:GetState()

                if State == Enum.HumanoidStateType.FallingDown or State == Enum.HumanoidStateType.Freefall and v1079.AssemblyLinearVelocity.Y < -12.5 then
                    v1078:ChangeState(Enum.HumanoidStateType.Landed)
                end
            end
        end)
    end
end)
t5.value146 = "WCheatz_ProjectDelta_NoVisor"
pcall(function()
    t4.value2:UnbindFromRenderStep(t5.value146)
end)
t4.value2:BindToRenderStep(t5.value146, 200001, function()
    if t5.value103.dead then
        return
    end

    t5.value49()

    if t5.value48.zoom or (t5.value103.zoomProfile or t5.value103.zoomCamera) then
        pcall(t5.value130)
    end

    if t5.value48.noVisor or (next(t5.value103.visorOriginals) or next(t5.value103.visorSounds)) then
        pcall(t5.value144)
    end
end);
(function()
    local t19 = {
		enabled = false,
		originalPlayer = nil,
		humanoid = nil,
		originalOffset = nil,
		currentOffset = nil,
		currentDistance = nil,
		characterParts = {},
		viewParts = {}
	}

    local function v977(p248, p249)
        local u1084 = math.max(0.5, tonumber(p248) or 0.5)

        p249 = math.max(u1084, tonumber(p249) or u1084)
        pcall(function()
            if p249 < t4.value10.CameraMinZoomDistance then
                t4.value10.CameraMinZoomDistance = u1084
                t4.value10.CameraMaxZoomDistance = p249

                return
            end

            t4.value10.CameraMaxZoomDistance = p249
            t4.value10.CameraMinZoomDistance = u1084
        end)
    end
    local function v978(p250)
        for k, v in pairs(p250) do
            local v1088 = v

            pcall(function()
                k.LocalTransparencyModifier = v1088
            end)
        end

        table.clear(p250)
    end
    local function v979()
        if not t19.enabled then
            return
        end

        t19.enabled = false
        v978(t19.characterParts)
        v978(t19.viewParts)

        if t19.humanoid and t19.originalOffset then
            pcall(function()
                t19.humanoid.CameraOffset = t19.originalOffset
            end)
        end

        if t19.originalPlayer then
            v977(t19.originalPlayer.minZoom, t19.originalPlayer.maxZoom)
            pcall(function()
                t4.value10.CameraMode = t19.originalPlayer.cameraMode
            end)

            if t19.originalPlayer.devMode ~= nil then
                pcall(function()
                    t4.value10.DevComputerCameraMode = t19.originalPlayer.devMode
                end)
            end
        end

        t19.originalPlayer = nil
        t19.humanoid = nil
        t19.originalOffset = nil
        t19.currentOffset = nil
        t19.currentDistance = nil
    end
    local function v980()
        if t19.enabled then
            return
        end
        t19.enabled = true
        local DevComputerCameraMode
        pcall(function()
            DevComputerCameraMode = t4.value10.DevComputerCameraMode
        end)
        local v1090 = t19
        local CameraMode = t4.value10.CameraMode
        local CameraMinZoomDistance = t4.value10.CameraMinZoomDistance
        local CameraMaxZoomDistance = t4.value10.CameraMaxZoomDistance
        v1090.originalPlayer = {
			cameraMode = CameraMode,
			minZoom = CameraMinZoomDistance,
			maxZoom = CameraMaxZoomDistance,
			devMode = nil
		}
        local CurrentCamera7 = t4.value4.CurrentCamera
        t19.currentDistance = math.clamp(CurrentCamera7 and (CurrentCamera7.CFrame.Position - CurrentCamera7.Focus.Position).Magnitude or t4.value10.CameraMaxZoomDistance, 0.5, 30)
    end
    local function v981(p251)
        t5.value49()

        if not t5.value48.thirdPerson or t5.value48.freeCam then
            v979()

            return
        end

        v980()
        pcall(function()
            t4.value10.CameraMode = Enum.CameraMode.Classic
            t4.value10.DevComputerCameraMode = Enum.DevComputerCameraMovementMode.Classic
        end)

        local v1096 = math.clamp(tonumber(t5.value2.value("ThirdDistance", 8)) or 8, 2, 30)
        local v1097 = 1 - math.exp(-math.clamp(tonumber(t5.value2.value("ThirdSmoothness", 14)) or 14, 1, 30) * math.clamp(p251, 0, 0.1))

        t19.currentDistance = t19.currentDistance + (v1096 - t19.currentDistance) * v1097
        v977(t19.currentDistance, t19.currentDistance)

        local Character = t4.value10.Character
        local v1099 = Character and Character:FindFirstChildOfClass("Humanoid")

        if v1099 ~= t19.humanoid then
            if t19.humanoid and t19.originalOffset then
                pcall(function()
                    t19.humanoid.CameraOffset = t19.originalOffset
                end)
            end

            v978(t19.characterParts)
            t19.humanoid = v1099
            t19.originalOffset = v1099 and v1099.CameraOffset or nil
            t19.currentOffset = t19.originalOffset
        end

        if v1099 and t19.originalOffset then
            local v1100 = t5.value2.value("ThirdShoulder", "Right")
            local v1101 = math.clamp(tonumber(t5.value2.value("ThirdShoulderOffset", 2)) or 2, 0, 5)

            if v1100 == "Left" then
                v1101 = -v1101
            elseif v1100 == "Center" then
                v1101 = 0
            end

            local v1102 = math.clamp(tonumber(t5.value2.value("ThirdHeight", 1)) or 1, -3, 5)
            local v1103 = t19.originalOffset + Vector3.new(v1101, v1102, 0)

            t19.currentOffset = t19.currentOffset:Lerp(v1103, v1097)
            v1099.CameraOffset = t19.currentOffset
        end
    end
    local function v982()
        if not t19.enabled then
            return
        end

        local Character = t4.value10.Character

        if Character then
            local v1105 = not t5.value2.value("ThirdShowCharacter", true) and 1 or 0
            local GetDescendants = Character.GetDescendants

            for _, v in ipairs(GetDescendants(Character)) do
                if v:IsA("BasePart") then
                    if t19.characterParts[v] == nil then
                        t19.characterParts[v] = v.LocalTransparencyModifier
                    end

                    v.LocalTransparencyModifier = v1105
                end
            end
        end

        if t5.value2.value("ThirdHideViewModel", true) then
            local CurrentCamera8 = t4.value4.CurrentCamera
            local v1110 = CurrentCamera8 and CurrentCamera8:FindFirstChild("ViewModel")

            if v1110 then
                local GetDescendants = v1110.GetDescendants

                for _, v in ipairs(GetDescendants(v1110)) do
                    if v:IsA("BasePart") then
                        if t19.viewParts[v] == nil then
                            t19.viewParts[v] = v.LocalTransparencyModifier
                        end

                        v.LocalTransparencyModifier = 1
                    end
                end

                return
            end
        elseif next(t19.viewParts) then
            v978(t19.viewParts)
        end
    end

    pcall(function()
        t4.value2:UnbindFromRenderStep("WCheatz_ProjectDelta_ThirdPre")
        t4.value2:UnbindFromRenderStep("WCheatz_ProjectDelta_ThirdPost")
    end)
    t4.value2:BindToRenderStep("WCheatz_ProjectDelta_ThirdPre", Enum.RenderPriority.Camera.Value - 1, function(p252)
        t5.value49()

        local v1115 = t5.value48.thirdPerson and not t5.value48.freeCam

        if not t5.value103.dead and (t19.enabled or v1115) then
            pcall(v981, p252)
        end
    end)
    t4.value2:BindToRenderStep("WCheatz_ProjectDelta_ThirdPost", 99990, function()
        if not t5.value103.dead and t19.enabled then
            pcall(v982)
        end
    end)

    local zero = Vector3.zero
    local zero2 = Vector3.zero
    local t20 = {
		enabled = false,
		camera = nil,
		cameraState = nil,
		position = zero,
		pitch = 0,
		yaw = 0,
		velocity = zero2,
		mouseBehavior = nil,
		mouseIcon = nil,
		controls = nil,
		controlsWereEnabled = nil
	}

    local function v986()
        if t20.controls then
            return t20.controls
        end

        local PlayerScripts = t4.value10:FindFirstChild("PlayerScripts")
        local v1117 = PlayerScripts and PlayerScripts:FindFirstChild("PlayerModule")

        if not v1117 then
            return nil
        end

        local ok18, result16 = pcall(t4.value9, v1117)

        if ok18 then
            ok18 = result16 and type(result16.GetControls) == "function"
        end

        if ok18 then
            local success, result = pcall(result16.GetControls, result16)
            if success then
                t20.controls = result
            end
        end

        return t20.controls
    end
    local function v987(p253)
        local v1123 = t20
        local v1124 = p253 == true

        if v1124 == v1123.enabled then
            return
        end

        t20.enabled = v1124

        if v1124 then
            local CurrentCamera9 = t4.value4.CurrentCamera

            if not CurrentCamera9 then
                t20.enabled = false

                return
            end

            t20.camera = CurrentCamera9

            local v1126 = t20
            local CameraType = CurrentCamera9.CameraType
            local CameraSubject = CurrentCamera9.CameraSubject
            local CurrentCamera9CFrame = CurrentCamera9.CFrame
            local Focus = CurrentCamera9.Focus
            local FieldOfView = CurrentCamera9.FieldOfView

            v1126.cameraState = {
				cameraType = CameraType,
				subject = CameraSubject,
				cframe = CurrentCamera9CFrame,
				focus = Focus,
				fov = FieldOfView
			}
            t20.position = CurrentCamera9.CFrame.Position

            local v1132 = t20
            local v1133 = t20
            local v1134, v1135 = CurrentCamera9.CFrame:ToOrientation()

            v1132.pitch = v1134
            v1133.yaw = v1135
            t20.velocity = Vector3.zero
            t20.mouseBehavior = t4.value3.MouseBehavior
            t20.mouseIcon = t4.value3.MouseIconEnabled
            CurrentCamera9.CameraType = Enum.CameraType.Scriptable
            t4.value7:UnbindAction("WCheatz_ProjectDelta_FreeCamInput")
            t4.value7:BindActionAtPriority("WCheatz_ProjectDelta_FreeCamInput", function()
                return Enum.ContextActionResult.Sink
            end, false, Enum.ContextActionPriority.High.Value + 100, Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D, Enum.KeyCode.Q, Enum.KeyCode.E, Enum.KeyCode.Up, Enum.KeyCode.Down, Enum.KeyCode.Left, Enum.KeyCode.Right, Enum.KeyCode.LeftShift, Enum.KeyCode.RightShift)

            local v1136 = v986()

            if v1136 and type(v1136.Disable) == "function" then
                t20.controlsWereEnabled = v1136.controlsEnabled ~= false
                pcall(v1136.Disable, v1136)

                return
            end
        else
            t4.value7:UnbindAction("WCheatz_ProjectDelta_FreeCamInput")

            local v1137 = v986()

            if t20.controlsWereEnabled and (v1137 and type(v1137.Enable) == "function") then
                pcall(v1137.Enable, v1137)
            end

            if t20.mouseBehavior then
                t4.value3.MouseBehavior = t20.mouseBehavior
            end

            if t20.mouseIcon ~= nil then
                t4.value3.MouseIconEnabled = t20.mouseIcon
            end

            t20.mouseBehavior = nil
            t20.mouseIcon = nil
            t20.controlsWereEnabled = nil
            t20.velocity = Vector3.zero

            if t20.camera and t20.cameraState then
                pcall(function()
                    t20.camera.CameraType = t20.cameraState.cameraType
                    t20.camera.CameraSubject = t20.cameraState.subject
                    t20.camera.CFrame = t20.cameraState.cframe
                    t20.camera.Focus = t20.cameraState.focus
                    t20.camera.FieldOfView = t20.cameraState.fov
                end)
            end

            t20.camera = nil
            t20.cameraState = nil
        end
    end
    local function v988()
        local n9 = 0
        local n10 = 0
        local n11 = 0
        local v1141 = t4.value3:IsKeyDown(Enum.KeyCode.D)

        if not v1141 then
            v1141 = t4.value3:IsKeyDown(Enum.KeyCode.Right)
        end

        if v1141 then
            n10 += 1
        end

        if t4.value3:IsKeyDown(Enum.KeyCode.A) or t4.value3:IsKeyDown(Enum.KeyCode.Left) then
            n10 -= 1
        end

        local v1142 = t4.value3:IsKeyDown(Enum.KeyCode.E)

        if not v1142 then
            v1142 = t4.value3:IsKeyDown(Enum.KeyCode.Up)
        end

        if v1142 then
            n11 += 1
        end

        local v1143 = t4.value3:IsKeyDown(Enum.KeyCode.Q)

        if not v1143 then
            v1143 = t4.value3:IsKeyDown(Enum.KeyCode.Down)
        end

        if v1143 then
            n11 -= 1
        end

        if t4.value3:IsKeyDown(Enum.KeyCode.S) then
            n9 += 1
        end

        if t4.value3:IsKeyDown(Enum.KeyCode.W) then
            n9 -= 1
        end

        local vector3 = Vector3.new(n10, n11, n9)

        return vector3.Magnitude > 1 and vector3.Unit or vector3
    end
    local function v989(p254)
        t5.value49()
        v987(t5.value48.freeCam)

        if not t20.enabled then
            return
        end

        local CurrentCamera10 = t4.value4.CurrentCamera

        if CurrentCamera10 ~= t20.camera then
            if t20.camera and t20.cameraState then
                pcall(function()
                    t20.camera.CameraType = t20.cameraState.cameraType
                    t20.camera.CameraSubject = t20.cameraState.subject
                    t20.camera.CFrame = t20.cameraState.cframe
                    t20.camera.Focus = t20.cameraState.focus
                    t20.camera.FieldOfView = t20.cameraState.fov
                end)
            end

            t20.camera = nil
            t20.cameraState = nil
            t20.enabled = false
            v987(true)
            CurrentCamera10 = t20.camera
        end

        if not CurrentCamera10 then
            return
        end

        local v1147 = math.clamp(p254, 0, 0.1)
        local v1148 = math.clamp(tonumber(t5.value2.value("FreeCamSensitivity", 25)) or 25, 1, 100) * 0.00012
        local MouseDelta = t4.value3:GetMouseDelta()

        t20.yaw = t20.yaw - MouseDelta.X * v1148
        t20.pitch = math.clamp(t20.pitch - MouseDelta.Y * v1148, -1.5533430342749532, 1.5533430342749532)

        local cFrame = CFrame.fromOrientation(t20.pitch, t20.yaw, 0)
        local v1151 = math.clamp(tonumber(t5.value2.value("FreeCamSpeed", 50)) or 50, 1, 300)
        local v1152 = t4.value3:IsKeyDown(Enum.KeyCode.LeftShift)

        if not v1152 then
            v1152 = t4.value3:IsKeyDown(Enum.KeyCode.RightShift)
        end

        if v1152 then
            v1151 *= 3
        end

        local v1153 = cFrame:VectorToWorldSpace(v988()) * v1151
        local v1154 = 1 - math.exp(-math.clamp(tonumber(t5.value2.value("FreeCamSmoothness", 14)) or 14, 1, 30) * v1147)

        t20.velocity = t20.velocity:Lerp(v1153, v1154)
        t20.position = t20.position + t20.velocity * v1147

        local v1155 = CFrame.new(t20.position) * cFrame

        CurrentCamera10.CameraType = Enum.CameraType.Scriptable
        CurrentCamera10.CFrame = v1155
        CurrentCamera10.Focus = v1155 * CFrame.new(0, 0, -512)
        CurrentCamera10.FieldOfView = math.clamp(tonumber(t5.value2.value("FreeCamFOV", 70)) or 70, 20, 120)
        t4.value3.MouseBehavior = Enum.MouseBehavior.LockCenter
        t4.value3.MouseIconEnabled = false
    end

    pcall(function()
        t4.value2:UnbindFromRenderStep("WCheatz_ProjectDelta_FreeCam")
        t4.value7:UnbindAction("WCheatz_ProjectDelta_FreeCamInput")
    end)
    t4.value2:BindToRenderStep("WCheatz_ProjectDelta_FreeCam", 200000, function(p255)
        t5.value49()

        if not t5.value103.dead and t20.enabled or t5.value48.freeCam then
            pcall(v989, p255)
        end
    end)
    t5.value103.stopThird = v979
    t5.value103.setFreeEnabled = v987
    t5.value103.cameraRenderNames = {
		"WCheatz_ProjectDelta_ThirdPre",
		"WCheatz_ProjectDelta_ThirdPost",
		"WCheatz_ProjectDelta_FreeCam"
	}
    t5.value103.freeActionName = "WCheatz_ProjectDelta_FreeCamInput"
end)();
(function()
    local function v990(p256)
        if p256 then
            pcall(function()
                p256:Disconnect()
            end)
        end
    end

    local t22 = {
		"ClothingHeadware",
		"ClothingMask",
		"ClothingChestRig",
		"ClothingBackpack",
		"ClothingShirt",
		"ClothingPants",
		"ClothingLegArmor",
		"ClothingGloves"
	}
    local t23 = {
		"ItemBack1",
		"ItemBack2",
		"ItemHip1"
	}
    local ok20, result18 = pcall(function()
        local t24 = {
			Destroyed = false,
			Enabled = false,
			Target = nil,
			TargetCharacter = nil,
			TargetLastSeenAt = 0,
			ContentSignature = nil,
			LayoutSignature = nil,
			DisplayCleared = false,
			ViewportSize = nil,
			NextTargetScan = 0,
			NextContentRefresh = 0,
			Connections = {},
			EquipmentCards = {},
			AttachmentCards = {},
			InventoryCards = {},
			IconCache = {},
			IconRetryAt = {},
			ItemsList = nil,
			RaycastLocalCharacter = nil,
			RaycastCamera = nil
		}
        local t25 = {
			Magazine = 1,
			Sight = 2,
			Muzzle = 3,
			Extra = 4
		}
        local t26 = {
			Color3.fromRGB(183, 24, 36),
			Color3.fromRGB(35, 67, 178),
			Color3.fromRGB(38, 151, 43)
		}
        local t27 = {}
        local t28 = {
			"SlotIndex",
			"Index",
			"Position",
			"Slot"
		}
        local t29 = {
			"ItemName",
			"Item",
			"Name"
		}
        local t30 = {
			{
				"head",
				1
			},
			{
				"mask",
				2
			},
			{
				"chest",
				3
			},
			{
				"backpack",
				4
			},
			{
				"shirt",
				5
			},
			{
				"pants",
				6
			},
			{
				"leg",
				7
			},
			{
				"glove",
				8
			}
		}
        local t31 = {
			EquipmentWidth = 684,
			EquipmentHeight = 60,
			EquipmentCardSize = 46,
			EquipmentCardStep = 58,
			AttachmentSize = 16,
			AttachmentStep = 13,
			InventoryCellSize = 28,
			InventoryCellPadding = 4,
			InventoryWidth = 188,
			InventoryHeight = 284,
			InventoryOffsetX = 185,
			TopOffsetY = 24,
			InventoryGapY = 18
		}

        for i, v in ipairs(t22) do
            t27[v] = i
        end

        local function v1168(p257, p258, p259)
            local v1178 = Instance.new(p257)
            local _pairs = pairs

            if not p258 then
                p258 = {}
            end

            for v1180, v1181 in _pairs(p258) do
                v1178[v1180] = v1181
            end

            v1178.Parent = p259

            return v1178
        end
        local function v1169(p260, p261)
            for _, v in ipairs(p261) do
                local num = tonumber((p260:GetAttribute(v)))

                if num then
                    return num
                end
            end

            return nil
        end

        function t24.GetGuiParent(_)
            local v1195 = rawget(t1.value1, "gethui")

            if v1195 == nil and t1.value1 ~= _G then
                v1195 = rawget(_G, "gethui")
            end

            if type(v1195) == "function" then
                local ok19, result17 = pcall(v1195)

                if ok19 then
                    ok19 = typeof(result17) == "Instance"
                end

                if ok19 then
                    return result17
                end
            end

            return t4.value10:WaitForChild("PlayerGui")
        end
        function t24.CreateEquipmentCard(_, p264, p265)
            local v1201 = v1168
            local v1202 = "Equipment" .. tostring(p265)
            local color3_10 = Color3.fromRGB(23, 23, 22)
            local uDim2 = UDim2.fromOffset((p265 - 1) * t31.EquipmentCardStep, 0)
            local uDim2_2 = UDim2.fromOffset(t31.EquipmentCardSize, t31.EquipmentCardSize)
            local v1206 = v1201("Frame", {
				Name = v1202,
				BackgroundColor3 = color3_10,
				BackgroundTransparency = 0.12,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = uDim2,
				Size = uDim2_2,
				ZIndex = 3
			}, p264)

            v1168("UICorner", {
				CornerRadius = UDim.new(0, 9)
			}, v1206)

            local color3_11 = Color3.fromRGB(8, 8, 8)

            v1168("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = color3_11,
				Transparency = 0.58,
				Thickness = 1
			}, v1206)

            local v1208 = v1168
            local uDim2_3 = UDim2.fromOffset(4, 4)
            local Fit = Enum.ScaleType.Fit
            local uDim2_4 = UDim2.new(1, -8, 1, -8)
            local v1212 = v1208("ImageLabel", {
				Name = "Icon",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "",
				Position = uDim2_3,
				ScaleType = Fit,
				Size = uDim2_4,
				ZIndex = 4
			}, v1206)

            return {
				Root = v1206,
				Icon = v1212,
				ItemName = nil
			}
        end
        function t24.CreateAttachmentCard(_, p267, p268, p269)
            local v1217 = t26[p268]
            local v1218 = v1168
            local v1219 = "Attachment" .. tostring(p268) .. "_" .. tostring(p269)
            local uDim2 = UDim2.fromOffset((p268 - 1) * t31.EquipmentCardStep + (p269 - 1) * t31.AttachmentStep - 5, 42)
            local uDim2_5 = UDim2.fromOffset(t31.AttachmentSize, t31.AttachmentSize)
            local v1222 = v1218("Frame", {
				Name = v1219,
				BackgroundColor3 = v1217,
				BackgroundTransparency = 0.05,
				BorderSizePixel = 0,
				Position = uDim2,
				Size = uDim2_5,
				ZIndex = 6 + p269
			}, p267)

            v1168("UICorner", {
				CornerRadius = UDim.new(0, 8)
			}, v1222)

            local color3_12 = Color3.fromRGB(6, 6, 6)

            v1168("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = color3_12,
				Transparency = 0.45,
				Thickness = 1
			}, v1222)

            local v1224 = v1168
            local color3_13 = Color3.fromRGB(245, 245, 245)
            local uDim2_6 = UDim2.fromOffset(2, 2)
            local Fit = Enum.ScaleType.Fit
            local uDim2_7 = UDim2.new(1, -4, 1, -4)
            local v1229 = v1224("ImageLabel", {
				Name = "Icon",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "",
				ImageColor3 = color3_13,
				Position = uDim2_6,
				ScaleType = Fit,
				Size = uDim2_7,
				ZIndex = 11
			}, v1222)

            return {
				Root = v1222,
				Icon = v1229,
				GroupColor = v1217,
				ItemName = nil
			}
        end
        function t24.CreateInventoryCard(_, p271, p272)
            local v1233 = v1168
            local v1234 = "Inventory" .. tostring(p272)
            local color3_14 = Color3.fromRGB(8, 8, 7)
            local uDim2 = UDim2.fromOffset(t31.InventoryCellSize, t31.InventoryCellSize)
            local v1237 = v1233("Frame", {
				Name = v1234,
				BackgroundColor3 = color3_14,
				BackgroundTransparency = 0.13,
				BorderSizePixel = 0,
				ClipsDescendants = false,
				LayoutOrder = p272,
				Size = uDim2,
				ZIndex = 3
			}, p271)

            v1168("UICorner", {
				CornerRadius = UDim.new(0, 8)
			}, v1237)

            local color3_15 = Color3.fromRGB(24, 24, 22)

            v1168("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = color3_15,
				Transparency = 0.5,
				Thickness = 1
			}, v1237)

            local v1239 = v1168
            local uDim2_8 = UDim2.fromOffset(2, 2)
            local Fit = Enum.ScaleType.Fit
            local uDim2_9 = UDim2.new(1, -4, 1, -4)
            local v1243 = v1239("ImageLabel", {
				Name = "Icon",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = "",
				Position = uDim2_8,
				ScaleType = Fit,
				Size = uDim2_9,
				ZIndex = 4
			}, v1237)
            local v1244 = v1168
            local vector2 = Vector2.new(0.5, 0)
            local GothamMedium = Enum.Font.GothamMedium
            local uDim2_10 = UDim2.new(0.5, 0, 1, -3)
            local uDim2_11 = UDim2.new(1, 10, 0, 14)
            local color3_16 = Color3.fromRGB(245, 245, 245)
            local color3_17 = Color3.fromRGB(0, 0, 0)
            local v1251 = v1244("TextLabel", {
				Name = "Amount",
				AnchorPoint = vector2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = GothamMedium,
				Position = uDim2_10,
				Size = uDim2_11,
				Text = "",
				TextColor3 = color3_16,
				TextSize = 11,
				TextStrokeColor3 = color3_17,
				TextStrokeTransparency = 0.2,
				Visible = false,
				ZIndex = 8
			}, v1237)

            return {
				Root = v1237,
				Icon = v1243,
				Amount = v1251,
				ItemName = nil
			}
        end
        function t24.CreateGui(p273)
            local GuiParent = p273:GetGuiParent()
            local ProjectDeltaInventoryView = GuiParent:FindFirstChild("ProjectDeltaInventoryView")

            if ProjectDeltaInventoryView then
                ProjectDeltaInventoryView:Destroy()
            end

            local v1255 = v1168
            local Sibling = Enum.ZIndexBehavior.Sibling
            local v1257 = v1255("ScreenGui", {
				Name = "ProjectDeltaInventoryView",
				DisplayOrder = 35,
				Enabled = false,
				IgnoreGuiInset = true,
				ResetOnSpawn = false,
				ZIndexBehavior = Sibling
			}, GuiParent)
            local v1258 = v1168
            local vector2 = Vector2.new(0.5, 0)
            local GothamMedium = Enum.Font.GothamMedium
            local uDim2 = UDim2.new(0.5, 0, 0, 4)
            local uDim2_12 = UDim2.fromOffset(t31.EquipmentWidth, 16)
            local color3_18 = Color3.fromRGB(240, 240, 240)
            local color3_19 = Color3.fromRGB(0, 0, 0)
            local Center = Enum.TextXAlignment.Center
            local v1266 = v1258("TextLabel", {
				Name = "Target",
				AnchorPoint = vector2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = GothamMedium,
				Position = uDim2,
				Size = uDim2_12,
				Text = "NO TARGET",
				TextColor3 = color3_18,
				TextSize = 11,
				TextStrokeColor3 = color3_19,
				TextStrokeTransparency = 0.45,
				TextXAlignment = Center,
				ZIndex = 12
			}, v1257)
            local v1267 = v1168("UIScale", {
				Scale = 1
			}, v1266)
            local v1268 = v1168
            local vector2_2 = Vector2.new(0.5, 0)
            local uDim2_13 = UDim2.new(0.5, 0, 0, t31.TopOffsetY)
            local uDim2_14 = UDim2.fromOffset(t31.EquipmentWidth, t31.EquipmentHeight)
            local v1272 = v1268("Frame", {
				Name = "Equipment",
				AnchorPoint = vector2_2,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = uDim2_13,
				Size = uDim2_14,
				ZIndex = 2
			}, v1257)
            local v1273 = v1168("UIScale", {
				Scale = 1
			}, v1272)

            for i = 1, 12 do
                p273.EquipmentCards[i] = p273:CreateEquipmentCard(v1272, i)
            end

            for i = 1, 3 do
                local v1276 = i

                for j = 1, 4 do
                    local v1278 = (v1276 - 1) * 4 + j

                    p273.AttachmentCards[v1278] = p273:CreateAttachmentCard(v1272, v1276, j)
                end
            end

            local v1279 = v1168
            local vector2_3 = Vector2.new(0.5, 0)
            local uDim2_15 = UDim2.new(0.5, t31.InventoryOffsetX, 0, t31.TopOffsetY + t31.EquipmentHeight + t31.InventoryGapY)
            local uDim2_16 = UDim2.fromOffset(t31.InventoryWidth, t31.InventoryHeight)
            local v1283 = v1279("Frame", {
				Name = "Inventory",
				AnchorPoint = vector2_3,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = uDim2_15,
				Size = uDim2_16,
				ZIndex = 2
			}, v1257)
            local v1284 = v1168("UIScale", {
				Scale = 1
			}, v1283)
            local v1285 = v1168
            local uDim2_17 = UDim2.fromOffset(t31.InventoryCellPadding, t31.InventoryCellPadding)
            local uDim2_18 = UDim2.fromOffset(t31.InventoryCellSize, t31.InventoryCellSize)
            local Horizontal = Enum.FillDirection.Horizontal
            local Left = Enum.HorizontalAlignment.Left
            local SortOrderLayoutOrder = Enum.SortOrder.LayoutOrder
            local TopLeft = Enum.StartCorner.TopLeft
            local Top = Enum.VerticalAlignment.Top

            v1285("UIGridLayout", {
				CellPadding = uDim2_17,
				CellSize = uDim2_18,
				FillDirection = Horizontal,
				FillDirectionMaxCells = 6,
				HorizontalAlignment = Left,
				SortOrder = SortOrderLayoutOrder,
				StartCorner = TopLeft,
				VerticalAlignment = Top
			}, v1283)

            for i = 1, 54 do
                p273.InventoryCards[i] = p273:CreateInventoryCard(v1283, i)
            end

            p273.Gui = v1257
            p273.TargetLabel = v1266
            p273.TargetScale = v1267
            p273.EquipmentRoot = v1272
            p273.EquipmentScale = v1273
            p273.InventoryRoot = v1283
            p273.InventoryScale = v1284
        end
        function t24.GetEntryName(_, p275)
            if not p275 then
                return nil, nil
            end

            if p275:IsA("ObjectValue") and p275.Value then
                return p275.Value.Name, p275.Value
            end

            for _, v in ipairs(t29) do
                local v14 = p275:GetAttribute(v)

                if type(v14) == "string" and v14 ~= "" then
                    return v14, nil
                end
            end

            return p275.Name, nil
        end
        function t24.GetItemIcon(p276, p277)
            if type(p277) ~= "string" or p277 == "" then
                return nil
            end

            local v1301 = p276.IconCache[p277]

            if v1301 then
                return v1301
            end

            local elapsed = os.clock()

            if elapsed < (p276.IconRetryAt[p277] or 0) then
                return nil
            end

            local ItemsList = p276.ItemsList

            if not ItemsList or ItemsList.Parent ~= t4.value5 then
                ItemsList = t4.value5:FindFirstChild("ItemsList")
                p276.ItemsList = ItemsList
            end

            local v1304 = ItemsList and ItemsList:FindFirstChild(p277)

            if not v1304 then
                p276.IconRetryAt[p277] = elapsed + 2

                return nil
            end

            local ItemProperties = v1304:FindFirstChild("ItemProperties")
            local v1306 = ItemProperties and ItemProperties:FindFirstChild("ItemIcon")
            local v1307 = v1306

            if v1306 then
                v1307 = not v1306:IsA("ImageLabel") and (not v1306:IsA("ImageButton") and (not v1306:IsA("Decal") and not v1306:IsA("Texture")))
            end

            if v1307 then
                local ImageLabel = v1306:FindFirstChildWhichIsA("ImageLabel", true)

                if not ImageLabel then
                    ImageLabel = v1306:FindFirstChildWhichIsA("ImageButton", true) or (v1306:FindFirstChildWhichIsA("Decal", true) or v1306:FindFirstChildWhichIsA("Texture", true))
                end

                v1306 = ImageLabel
            end

            if not v1306 then
                p276.IconRetryAt[p277] = elapsed + 2

                return nil
            end

            Color3.new(1, 1, 1)

            local vector2 = Vector2.new()
            local vector2_4 = Vector2.new()
            local Texture, Color3_2

            if v1306:IsA("Decal") or v1306:IsA("Texture") then
                Texture = v1306.Texture
                Color3_2 = v1306.Color3
            else
                Texture = v1306.Image
                Color3_2 = v1306.ImageColor3
                vector2 = v1306.ImageRectOffset
                vector2_4 = v1306.ImageRectSize
            end

            if type(Texture) ~= "string" or Texture == "" then
                p276.IconRetryAt[p277] = elapsed + 2

                return nil
            end

            local t32 = {
				Image = Texture,
				Color = Color3_2,
				RectOffset = vector2,
				RectSize = vector2_4
			}

            p276.IconCache[p277] = t32
            p276.IconRetryAt[p277] = nil

            return t32
        end
        function t24.ApplyIcon(_, p279, p280)
            if not p280 then
                p279.Image = ""
                p279.ImageColor3 = Color3.new(1, 1, 1)
                p279.ImageRectOffset = Vector2.new()
                p279.ImageRectSize = Vector2.new()

                return
            end

            p279.Image = p280.Image
            p279.ImageColor3 = p280.Color
            p279.ImageRectOffset = p280.RectOffset
            p279.ImageRectSize = p280.RectSize
        end
        function t24.GetReplicatedInventory(_, p282, p283)
            local Players3 = t4.value5:FindFirstChild("Players")

            if Players3 then
                if p282 then
                    p282 = Players3:FindFirstChild(p282.Name)
                end

                Players3 = p282
            end

            local v1321 = Players3 and Players3:FindFirstChild("Inventory")

            if v1321 then
                return v1321
            end

            return p283 and p283:FindFirstChild("Inventory")
        end
        function t24.ResolveGearIndex(_, p285)
            if t27[p285] then
                return t27[p285]
            end

            local lower = string.lower

            if not p285 then
                p285 = ""
            end

            local v1325 = lower(p285)

            for _, v in ipairs(t30) do
                if string.find(v1325, v[1], 1, true) then
                    return v[2]
                end
            end

            return nil
        end
        function t24.CreateItemData(p286, p287)
            local v1330, v1331 = p286:GetEntryName(p287)

            if not v1330 then
                return nil
            end

            local v1332 = math.max(math.floor(tonumber(p287:GetAttribute("Amount")) or 1), 1)
            local ItemIcon = p286:GetItemIcon(v1330)

            return {
				Name = v1330,
				Reference = v1331,
				Source = p287,
				Amount = v1332,
				Icon = ItemIcon
			}
        end
        function t24.CollectCharacterWeapons(p288, p289)
            local t33 = {}
            local t34 = {}
            local v1338 = p289 and p289:FindFirstChild("Holding")
            local v1339 = p289 and p289:FindFirstChild("Holstered")
            local t35 = { v1338 }
            for v1343, v1344 in ipairs(t23) do

                local v1345 = #t35 + 1
                local v1346 = v1339

                if v1339 then
                    v1346 = v1339:FindFirstChild(v1344)
                end

                t35[v1345] = v1346
            end
            for _, v in ipairs(t35) do
                if v then
                    local v1349 = p288:CreateItemData(v)

                    if v1349 and not t34[v1349.Name] then
                        t34[v1349.Name] = true
                        t33[#t33 + 1] = v1349

                        if #t33 >= 3 then
                            return t33
                        end
                    end
                end
            end

            return t33
        end
        function t24.CollectCharacterGear(p290, p291)
            local t36 = {}

            if p291 then
                p291 = p291:FindFirstChild("Clothing")
            end

            for i, v in ipairs(t22) do
                local v1355 = p291 and p291:FindFirstChild(v)

                if v1355 then
                    t36[i] = p290:CreateItemData(v1355)
                end
            end

            return t36
        end
        function t24.GetAttachmentIndex(_, p293, p294)
            if t25[p293] then
                return t25[p293]
            end

            local lower = string.lower

            if not p293 then
                p293 = ""
            end

            local v1360 = lower(p293)

            for k, v in pairs(t25) do
                if string.find(v1360, string.lower(k), 1, true) then
                    return v
                end
            end

            return p294
        end
        function t24.CollectAttachments(p295, p296)
            local v1365 = p296
            local t37 = {}

            if p296 then
                v1365 = p296.Source and p296.Source:FindFirstChild("Attachments")
            end

            if not v1365 and (p296 and p296.Reference) then
                v1365 = p296.Reference:FindFirstChild("Attachments")
            end

            if not v1365 then
                return t37
            end

            local children = v1365:GetChildren()

            table.sort(children, function(p297, p298)
                local v1573 = v1169(p297, t28)
                local v1574 = v1169(p298, t28)

                if v1573 and (v1574 and v1573 ~= v1574) then
                    return v1573 < v1574
                end

                if v1573 and not v1574 then
                    return true
                end

                if v1574 and not v1573 then
                    return false
                end

                local str4 = tostring(p297:GetAttribute("Slot") or "")
                local str5 = tostring(p298:GetAttribute("Slot") or "")

                if str4 ~= str5 then
                    return str4 < str5
                end

                return p297.Name < p298.Name
            end)

            for i, v in ipairs(children) do
                local AttachmentIndex = p295:GetAttachmentIndex(tostring(v:GetAttribute("Slot") or ""), i)

                if AttachmentIndex and (AttachmentIndex >= 1 and (AttachmentIndex <= 4 and not t37[AttachmentIndex])) then
                    t37[AttachmentIndex] = p295:CreateItemData(v)
                end
            end

            return t37
        end
        function t24.CollectViewData(p299, p300, p301, p302)
            local ReplicatedInventory = p299:GetReplicatedInventory(p300, p301)
            local t38 = {}
            local t39 = {}
            local t40 = {}
            if ReplicatedInventory then
                ReplicatedInventory = ReplicatedInventory:GetChildren()
                table.sort(ReplicatedInventory, function(p303, p304)
                    local v1579 = v1169(p303, t28)
                    local v1580 = v1169(p304, t28)

                    if v1579 and (v1580 and v1579 ~= v1580) then
                        return v1579 < v1580
                    end

                    if v1579 and not v1580 then
                        return true
                    end

                    if v1580 and not v1579 then
                        return false
                    end

                    local str6 = tostring(p303:GetAttribute("Slot") or "")
                    local str7 = tostring(p304:GetAttribute("Slot") or "")

                    if str6 ~= str7 then
                        return str6 < str7
                    end

                    return p303.Name < p304.Name
                end)
            end
            local v1379 = ReplicatedInventory or {}
            local n12 = 1
            for _, v in ipairs(v1379) do
                local str8 = tostring(v:GetAttribute("Slot") or "")
                local v1384 = p299:ResolveGearIndex(str8)

                if v1384 then
                    t39[v1384] = p299:CreateItemData(v)
                elseif string.find(str8, "Clothing", 1, true) then
                    while n12 <= 8 and t39[n12] do
                        n12 += 1
                    end

                    if n12 <= 8 then
                        t39[n12] = p299:CreateItemData(v)
                    end
                elseif v:FindFirstChild("Attachments") and #t38 < 3 then
                    t38[#t38 + 1] = p299:CreateItemData(v)
                end
            end
            local v1385 = p299:CollectCharacterWeapons(p301)
            for v1388, v1389 in ipairs(v1385) do

                local v1390 = false

                for _, v in ipairs(t38) do
                    if v and v.Name == v1389.Name then
                        v1390 = true

                        break
                    end
                end

                if not v1390 and #t38 < 3 then
                    t38[#t38 + 1] = v1389
                end
            end
            local v1393 = p299:CollectCharacterGear(p301)
            for i = 1, 8 do
                local v1395 = i

                if not t39[v1395] then
                    t39[v1395] = v1393[v1395]
                end
            end
            if p302 == "Full Inventory" then
                for _, v in ipairs(v1379) do
                    local Inventory = v:FindFirstChild("Inventory")

                    if Inventory and v.Name ~= "KeyChain" then
                        local _ipairs = ipairs
                        local children = Inventory:GetChildren()

                        table.sort(children, function(p305, p306)
                            local v1585 = v1169(p305, t28)
                            local v1586 = v1169(p306, t28)

                            if v1585 and (v1586 and v1585 ~= v1586) then
                                return v1585 < v1586
                            end

                            if v1585 and not v1586 then
                                return true
                            end

                            if v1586 and not v1585 then
                                return false
                            end

                            local str9 = tostring(p305:GetAttribute("Slot") or "")
                            local str10 = tostring(p306:GetAttribute("Slot") or "")

                            if str9 ~= str10 then
                                return str9 < str10
                            end

                            return p305.Name < p306.Name
                        end)

                        for _, v1402 in _ipairs(children) do
                            if #t40 >= 54 then
                                break
                            end

                            local v1403 = p299:CreateItemData(v1402)

                            if v1403 then
                                t40[#t40 + 1] = v1403
                            end
                        end
                    end

                    if #t40 >= 54 then
                        break
                    end
                end
            end
            local t41 = {}
            for i = 1, 3 do
                t41[i] = p299:CollectAttachments(t38[i])
            end

            return t38, t39, t41, t40
        end
        function t24.FormatAmount(_, p308)
            if p308 >= 1000 then
                local v1408 = math.floor(p308 / 100) / 10

                if v1408 == math.floor(v1408) then
                    return tostring((math.floor(v1408))) .. "K"
                end

                return tostring(v1408) .. "K"
            end

            return "x" .. tostring(p308)
        end
        function t24.SetEquipmentCard(p309, p310, p311)
            p310.ItemName = p311 and p311.Name or nil

            local Icon = p310.Icon

            if p311 then
                p311 = p311.Icon
            end

            p309:ApplyIcon(Icon, p311 or nil)
        end
        function t24.SetAttachmentCard(p312, p313, p314)
            p313.ItemName = p314 and p314.Name or nil

            local v1416 = p314
            local Icon = p313.Icon

            if p314 then
                v1416 = p314.Icon
            end

            p312:ApplyIcon(Icon, v1416 or nil)
            p313.Root.BackgroundColor3 = p313.GroupColor
            p313.Root.BackgroundTransparency = not p314 and 0.12 or 0.02
            p313.Icon.Visible = p314 ~= nil
        end
        function t24.SetInventoryCard(p315, p316, p317)
            p316.ItemName = p317 and p317.Name or nil

            local v1421 = p317
            local Icon = p316.Icon

            if p317 then
                v1421 = p317.Icon
            end

            p315:ApplyIcon(Icon, v1421 or nil)

            if p317 then
                p316.Amount.Text = p315:FormatAmount(p317.Amount)
                p316.Amount.Visible = true

                return
            end

            p316.Amount.Text = ""
            p316.Amount.Visible = false
        end
        function t24.ClearDisplay(p318)
            if p318.DisplayCleared then
                p318.ContentSignature = nil

                return
            end
            for _, v in ipairs(p318.EquipmentCards) do
                p318:SetEquipmentCard(v, nil)
            end
            for v1428, v1429 in ipairs(p318.AttachmentCards) do

                p318:SetAttachmentCard(v1429, nil)
            end
            for _, v in ipairs(p318.InventoryCards) do
                p318:SetInventoryCard(v, nil)
            end
            p318.ContentSignature = nil
            p318.DisplayCleared = true
        end
        function t24.GetDisplayName(_, p320)
            if not p320 then
                return "NO TARGET"
            end

            if p320.DisplayName ~= p320.Name then
                return "VIEWING  " .. p320.DisplayName .. "  @" .. p320.Name
            end

            return "VIEWING  @" .. p320.Name
        end
        function t24.SetTarget(p321, p322, p323)
            if p322 == p321.Target and p323 == p321.TargetCharacter then
                return
            end

            p321.Target = p322
            p321.TargetCharacter = p323
            p321.ContentSignature = nil
            p321.TargetLabel.Text = p321:GetDisplayName(p322)
            p321:ClearDisplay()
        end
        function t24.SetLayout(p324, p325, p326, p327)
            local v1441 = p327 == "First Slot"
            local v1442 = table.concat({
				tostring(p325),
				tostring(p326),
				p327
			}, "|")

            if v1442 == p324.LayoutSignature then
                return
            end

            p324.LayoutSignature = v1442
            p324.TargetLabel.Visible = p325 or p326
            p324.EquipmentRoot.Visible = p325 or p326
            p324.InventoryRoot.Visible = p325 and not v1441

            local v1443 = (not p325 and 0 or (not v1441 and 3 or 1)) + (not p326 and 0 or 9)
            local n13 = 0

            if v1443 > 0 then
                n13 = t31.EquipmentCardSize + (v1443 - 1) * t31.EquipmentCardStep
            end

            local v1445 = math.floor((t31.EquipmentWidth - n13) * 0.5)
            local t42 = {}

            for i, v in ipairs(p324.EquipmentCards) do
                local v1449 = i
                local v1450 = v1449 <= 3
                local v1451 = if not v1450 then p326 else p325 and not v1441 or v1449 == 1

                v.Root.Visible = v1451

                if v1451 then
                    v.Root.Position = UDim2.fromOffset(v1445, 0)

                    if v1450 then
                        t42[v1449] = v1445
                    end

                    v1445 += t31.EquipmentCardStep
                end
            end

            for i = 1, 3 do
                local v1453 = i
                local v1454 = t42[v1453] or 0
                local v1455 = t31.AttachmentSize + 3 * t31.AttachmentStep
                local v1456 = v1454 + math.floor((t31.EquipmentCardSize - v1455) * 0.5)

                for j = 1, 4 do
                    local v1458 = j
                    local v1459 = (v1453 - 1) * 4 + v1458
                    local v1460 = p324.AttachmentCards[v1459]

                    v1460.Root.Visible = p325 and not v1441 or v1453 == 1
                    v1460.Root.Position = UDim2.fromOffset(v1456 + (v1458 - 1) * t31.AttachmentStep, 42)
                end
            end
        end
        function t24.BuildContentSignature(_, p329, p330, p331, p332, p333, p334)
            local t43 = {
				tostring(p329),
				p334
			}

            local function v1469(p335)
                if not p335 then
                    t43[#t43 + 1] = "-"

                    return
                end

                t43[#t43 + 1] = p335.Name .. ":" .. tostring(p335.Amount) .. ":" .. tostring(p335.Icon and p335.Icon.Image or "")
            end

            for i = 1, 3 do
                local v1471 = i

                v1469(p330[v1471])

                for j = 1, 4 do
                    local v1473 = p332[v1471]

                    if v1473 then
                        v1473 = p332[v1471][j]
                    end

                    v1469(v1473)
                end
            end

            for i = 1, 8 do
                v1469(p331[i])
            end

            for i = 1, 54 do
                v1469(p333[i])
            end

            return table.concat(t43, "\031")
        end
        function t24.RefreshContent(p336, p337)
            local v1478 = t5.value2.value("InventorySlots", true) == true
            local v1479 = t5.value2.value("InventoryGear", true) == true
            local v1480 = t5.value2.value("InventorySlotMode", "Full Inventory") or "Full Inventory"

            p336:SetLayout(v1478, v1479, v1480)

            if not v1478 and not v1479 then
                p336:ClearDisplay()

                return
            end

            local p336Target = p336.Target
            local v1482 = p336Target and p336Target.Character

            if not p336Target or (p336Target.Parent ~= t4.value1 or (not v1482 or v1482 ~= p336.TargetCharacter)) then
                p336:SetTarget(nil, nil)

                return
            end

            local v1483, v1484, v1485, v1486 = p336:CollectViewData(p336Target, v1482, v1480)
            local v1487 = not p337
            local v1488 = p336:BuildContentSignature(v1482, v1483, v1484, v1485, v1486, v1480)

            if v1487 then
                v1487 = v1488 == p336.ContentSignature
            end

            if v1487 then
                p336.TargetLabel.Text = p336:GetDisplayName(p336Target)

                return
            end

            p336.ContentSignature = v1488
            p336.DisplayCleared = false
            p336.TargetLabel.Text = p336:GetDisplayName(p336Target)

            for i = 1, 3 do
                local v1490 = i

                p336:SetEquipmentCard(p336.EquipmentCards[v1490], v1483[v1490])

                for j = 1, 4 do
                    local v1492 = j
                    local v1493 = (v1490 - 1) * 4 + v1492

                    p336:SetAttachmentCard(p336.AttachmentCards[v1493], v1485[v1490] and v1485[v1490][v1492])
                end
            end

            for i = 1, 8 do
                p336:SetEquipmentCard(p336.EquipmentCards[i + 3], v1484[i])
            end

            p336:SetEquipmentCard(p336.EquipmentCards[12], nil)

            for i = 1, 54 do
                p336:SetInventoryCard(p336.InventoryCards[i], v1486[i])
            end
        end
        function t24.GetPlayerFromHit(_, p339)
            while p339 and p339 ~= t4.value4 do
                local player = t4.value1:GetPlayerFromCharacter(p339)

                if player then
                    return player, p339
                end

                p339 = p339.Parent
            end

            return nil, nil
        end
        function t24.GetTargetPart(_, p341)
            if not p341 then
                return nil
            end

            local Head = p341:FindFirstChild("Head")

            if not Head then
                Head = p341:FindFirstChild("UpperTorso") or (p341:FindFirstChild("Torso") or p341:FindFirstChild("HumanoidRootPart"))
            end

            return Head
        end
        function t24.PrepareRaycast(p342, p343)
            local Character = t4.value10.Character

            if p343 ~= p342.RaycastCamera or Character ~= p342.RaycastLocalCharacter then
                local t44 = { p343 }

                if Character then
                    t44[#t44 + 1] = Character
                end

                p342.RaycastParams.FilterDescendantsInstances = t44
                p342.RaycastCamera = p343
                p342.RaycastLocalCharacter = Character
            end

            return p342.RaycastParams
        end
        function t24.IsValidCandidate(p344, p345, p346, p347, p348, p349)
            if not p345 or (p345 == t4.value10 or p345.Parent ~= t4.value1) then
                return nil
            end

            local Character = p345.Character
            local TargetPart = p344:GetTargetPart(Character)

            if not TargetPart or not TargetPart:IsA("BasePart") then
                return nil
            end

            local v1514 = TargetPart.Position - p346.CFrame.Position

            if p349 < v1514:Dot(v1514) then
                return nil
            end

            local v1515, v1516 = p346:WorldToViewportPoint(TargetPart.Position)

            if not v1516 or v1515.Z <= 0 then
                return nil
            end

            local v1517 = Vector2.new(v1515.X, v1515.Y) - p347
            local v1518 = v1517:Dot(v1517)

            if p348 < v1518 then
                return nil
            end

            return Character, v1518
        end
        function t24.ScanTarget(p350)
            local CurrentCamera11 = t4.value4.CurrentCamera
            if not CurrentCamera11 then
                return nil, nil
            end
            local v1521 = math.max(tonumber(t5.value2.value("InventoryRadius", 120)) or 120, 10)
            local v1522 = math.max(tonumber(t5.value2.value("InventoryDistance", 1000)) or 1000, 10)
            local v1523 = CurrentCamera11.ViewportSize * 0.5
            local v1524 = CurrentCamera11:ViewportPointToRay(v1523.X, v1523.Y)
            local value4_2 = t4.value4
            local Origin = v1524.Origin
            local Raycast = value4_2.Raycast
            local Direction = v1524.Direction
            local PrepareRaycast = p350.PrepareRaycast
            local v1530 = Raycast(value4_2, Origin, Direction * v1522, PrepareRaycast(p350, CurrentCamera11))
            if v1530 then
                local v1531, v1532 = p350:GetPlayerFromHit(v1530.Instance)

                if v1531 and v1531 ~= t4.value10 then
                    return v1531, v1532
                end
            end
            local v1533 = v1521 * v1521
            local v1534 = v1522 * v1522
            local v1535
            local v1536
            local huge = math.huge
            for _, player in ipairs(t4.value1:GetPlayers()) do
                local v1540, v1541 = p350:IsValidCandidate(player, CurrentCamera11, v1523, v1533, v1534)

                if v1540 and v1541 < huge then
                    v1536 = v1540
                    huge = v1541
                    v1535 = player
                end
            end

            return v1535, v1536
        end
        function t24.CanKeepTarget(p351)
            local CurrentCamera12 = t4.value4.CurrentCamera

            if not CurrentCamera12 or not p351.Target then
                return false
            end

            local v1544 = math.max(tonumber(t5.value2.value("InventoryRadius", 120)) or 120, 10) * 1.5
            local v1545 = math.max(tonumber(t5.value2.value("InventoryDistance", 1000)) or 1000, 10)
            local TargetPart = p351:GetTargetPart(p351.Target.Character)

            if not TargetPart or not TargetPart:IsA("BasePart") then
                return false
            end

            local v1547 = TargetPart.Position - CurrentCamera12.CFrame.Position

            if v1547:Dot(v1547) > v1545 * v1545 then
                return false
            end

            local v1548, v1549 = CurrentCamera12:WorldToViewportPoint(TargetPart.Position)

            if not v1549 or v1548.Z <= 0 then
                return false
            end

            local v1550 = Vector2.new(v1548.X, v1548.Y) - CurrentCamera12.ViewportSize * 0.5

            return v1550:Dot(v1550) <= v1544 * v1544
        end
        function t24.UpdateScale(p352)
            local CurrentCamera13 = t4.value4.CurrentCamera

            if not CurrentCamera13 or p352.ViewportSize == CurrentCamera13.ViewportSize then
                return
            end

            p352.ViewportSize = CurrentCamera13.ViewportSize

            local v1553 = math.clamp(math.min(CurrentCamera13.ViewportSize.X / 1130, CurrentCamera13.ViewportSize.Y / 510), 0.65, 1)

            p352.EquipmentScale.Scale = v1553
            p352.InventoryScale.Scale = v1553
            p352.TargetScale.Scale = v1553
            p352.InventoryRoot.Position = UDim2.new(0.5, math.floor(t31.InventoryOffsetX * v1553), 0, t31.TopOffsetY + math.floor((t31.EquipmentHeight + t31.InventoryGapY) * v1553))
        end
        function t24.SetEnabled(p353, p354)
            local v1556 = p354 == true

            if v1556 == p353.Enabled then
                return
            end

            if v1556 and not p353.Gui then
                p353:CreateGui()
            end

            p353.Enabled = v1556
            p353.Gui.Enabled = v1556
            p353.NextTargetScan = 0
            p353.NextContentRefresh = 0

            if v1556 then
                p353:UpdateScale()

                return
            end

            p353:SetTarget(nil, nil)
            p353:ClearDisplay()
        end
        function t24.Update(p355)
            local v1558 = t5.value2.value("InventoryView", false) == true

            p355:SetEnabled(v1558)

            if not v1558 then
                return
            end

            p355:UpdateScale()

            local elapsed = os.clock()

            if elapsed >= p355.NextTargetScan then
                p355.NextTargetScan = elapsed + 0.1

                local v1560, v1561 = p355:ScanTarget()

                if v1560 then
                    p355.TargetLastSeenAt = elapsed
                    p355:SetTarget(v1560, v1561)
                elseif elapsed - p355.TargetLastSeenAt > 0.35 or not p355:CanKeepTarget() then
                    p355:SetTarget(nil, nil)
                end
            end

            if elapsed >= p355.NextContentRefresh then
                p355.NextContentRefresh = elapsed + 0.2
                p355:RefreshContent(false)
            end
        end
        function t24.Destroy(p356)
            if p356.Destroyed then
                return
            end

            p356.Destroyed = true
            p356:SetEnabled(false)

            for _, v in pairs(p356.Connections) do
                v990(v)
            end

            table.clear(p356.Connections)
            table.clear(p356.IconCache)
            table.clear(p356.IconRetryAt)
            p356.ItemsList = nil
            p356.RaycastCamera = nil
            p356.RaycastLocalCharacter = nil

            if p356.Gui then
                p356.Gui:Destroy()
                p356.Gui = nil
            end
        end

        t24.RaycastParams = RaycastParams.new()
        t24.RaycastParams.FilterType = Enum.RaycastFilterType.Exclude
        t24.RaycastParams.IgnoreWater = true
        t24.Connections.RenderStepped = t4.value2.RenderStepped:Connect(function()
            if t24.Destroyed then
                return
            end

            if not t24.Enabled and t5.value2.value("InventoryView", false) ~= true then
                return
            end

            pcall(t24.Update, t24)
        end)

        return t24
    end)

    if ok20 and result18 then
        t5.value103.inventoryEngine = result18
    end
end)()
t5.value147 = nil
function t5.value147()
    if t5.value61 then
        return
    end

    t5.value41.dead = true
    t5.value5.enabled = false
    t5.value6.enabled = false
    t5.value43.enabled = false
    t5.value44.enabled = false
    t5.value103.dead = true
    pcall(function()
        if t5.value103.inventoryEngine then
            t5.value103.inventoryEngine:Destroy()
            t5.value103.inventoryEngine = nil
        end
    end)
    pcall(function()
        t4.value2:UnbindFromRenderStep(t5.value64)
        t4.value2:UnbindFromRenderStep(t5.value4)
        t4.value2:UnbindFromRenderStep(t5.value146)
        for v1172, v1173 in ipairs(t5.value103.cameraRenderNames or {}) do

            t4.value2:UnbindFromRenderStep(v1173)
        end
        if t5.value103.freeActionName then
            t4.value7:UnbindAction(t5.value103.freeActionName)
        end
    end)
    pcall(t5.value104, t5.value103.connections)
    pcall(t5.value104, t5.value103.equipConnections)

    for _, v in pairs(t5.value58) do
        pcall(t5.value104, v)
    end

    for i = 1, #t5.value60 do
        pcall(function()
            t5.value60[i]:Disconnect()
        end)
    end

    pcall(function()
        if t5.value103.stopThird then
            t5.value103.stopThird()
        end
    end)
    pcall(function()
        if t5.value103.setFreeEnabled then
            t5.value103.setFreeEnabled(false)
        end
    end)

    for k, v in pairs(t5.value48) do
        if type(v) == "boolean" then
            t5.value48[k] = false
        end
    end

    pcall(t5.value109)
    pcall(t5.value110.restore)
    pcall(t5.value115)
    pcall(t5.value118)
    pcall(t5.value119)
    pcall(t5.value122)
    pcall(t5.value123)
    pcall(t5.value126)
    pcall(t5.value128)
    pcall(t5.value137)
    pcall(t5.value133)
    pcall(t5.value141)
    pcall(t5.value143)
    pcall(function()
        t5.value8:Destroy()
    end)
    pcall(function()
        t5.value13:Destroy()
    end)
    pcall(function()
        t5.value14:Remove()
    end)

    local t45 = {}

    for k in pairs(t5.value55) do
        t45[#t45 + 1] = k
    end

    for i = 1, #t45 do
        pcall(t5.value73, t5.value55, t45[i])
    end

    local t46 = {}

    for k in pairs(t5.value7) do
        t46[#t46 + 1] = k
    end

    for i = 1, #t46 do
        pcall(t5.value73, t5.value7, t46[i])
    end

    pcall(t5.value77, "Vehicle")
    pcall(t5.value77, "SupplyDrop")
    pcall(t5.value77, "QuestItem")

    if t1.value1.PD_VISUAL_CLEANUP then
        t1.value1.PD_VISUAL_CLEANUP = nil
    end

    if t1.value1.PD_PROJECT_DELTA_AIM_RUNTIME == t5.value41 then
        t1.value1.PD_PROJECT_DELTA_AIM_RUNTIME = nil
    end

    if t1.value1.ProjectDeltaVisualsUI and t1.value1.ProjectDeltaVisualsUI.Library == t4.value12 then
        t1.value1.ProjectDeltaVisualsUI = nil
    end
end
t4.value12:OnUnload(function()
    t5.value147()
    t4.value12.Unloaded = true
end)

function t1.value1.PD_VISUAL_CLEANUP()
    t5.value147()

    if not t4.value12.Unloaded then
        t4.value12.Unloaded = true
        pcall(function()
            t4.value12:Unload()
        end)
    end
end

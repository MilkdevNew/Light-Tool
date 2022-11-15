local Packages = script.Parent.Packages
local UI = script.Parent.UI
local Fusion = require(Packages.Fusion)
local PluginComponents = Packages.PluginComponents

local Toolbar = require(PluginComponents.Toolbar)
local ToolbarButton = require(PluginComponents.ToolbarButton)
local Widget = require(PluginComponents.Widget)
local App = require(UI.App)

local PluginBar = Toolbar({
	Name = "Milk's Tool",
})

local Button = ToolbarButton({
	Toolbar = PluginBar,
	ToolTip = "Opens the UI",
	Name = "Toggle",
	Image = "rbxassetid://11541107507",
})

local WidgetGUI = Widget({
	Id = "lightTool_Milk",
	InitialEnabled = false,
	InitialDockTo = Enum.InitialDockState.Float,
	ForceInitialEnabled = true,
	Name = "Tool",
	FloatingSize = Vector2.new(300, 500),
	MinimumSize = Vector2.new(300, 500),
})
WidgetGUI.Name = "LightTool"

local function click()
	WidgetGUI.Enabled = not WidgetGUI.Enabled
end

local Frame = App:Init({
	Parent = WidgetGUI,
})

Button.Click:Connect(click)

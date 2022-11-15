local Packages = script.Parent.Parent.Packages
local Fusion = require(Packages.Fusion)
local New, Children = Fusion.New, Fusion.Children
local StudioComponents = Packages.StudioComponents
local list = {}

local Frame = require(StudioComponents.Background)
local Label = require(StudioComponents.Label)

function list:Init(props)
	return Frame({
		Parent = props.Parent,
		[Children] = {
			Label({
				Text = "Hello",
			}),
		},
	})
end

return list

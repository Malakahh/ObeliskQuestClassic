local addonName, ns = ...
local className = "ObjectiveElement"

ns.ObjectiveElement = ns.ObjectiveElement or {}

setmetatable(ns.ObjectiveElement, {
	__call = function (self, ...)
		return self:New(...)
	end
})

---------------
-- Libraries --
---------------

local FrameworkClass = ObeliskFrameworkManager:GetLibrary("ObeliskFrameworkClass", 1)
if not FrameworkClass then
	error(ns.Debug:sprint(addonName .. className, "Failed to load ObeliskFrameworkClass"))
end

---------------
-- Constants --
---------------

-----------
-- local --
-----------

-----------
-- Class --
-----------
function ns.ObjectiveElement:New(name, parent)
	name = name or addonName .. className
	parent = parent or UIParent

	local instance = FrameworkClass({
		prototype = self,
		frameType = "FRAME",
		frameName = name,
		parent = UIParent,
		inheritsFrame = nil
	})

	instance:LayoutInit()

	return instance
end
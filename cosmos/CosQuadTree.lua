local classic = require "addons.classic"

local CosQuadTree = classic:extend()

function CosQuadTree:new()
    self.worldDivisions = 6
end

function CosQuadTree:recycle(x, y, width, height)
end

return CosQuadTree
local CosBasic = require "CosBasic"

local CosObject = CosBasic:extend()

function CosObject:new(x, y, width, height)
    CosObject.super:new(x, y, width, height)

    self.solid = true
end

return CosObject
local classic = require "addons.classic"

local CosG = classic:extend()

function CosG:new()
    self.worldDivisions = 6
end

function CosG:overlap(objectOrGroup1, objectOrGroup2)
    if objectOrGroup1 == nil then
		objectOrGroup1 = state;
    end
	if objectOrGroup2 == objectOrGroup1 then
		objectOrGroup2 = nil;
    end
end

function CosG:sign(n)
    return n > 0 and 1
        or  n < 0 and -1
        or  0
end

local bool_to_int = { [true]=1, [false]=0 }

return CosG
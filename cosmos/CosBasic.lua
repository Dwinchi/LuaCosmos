local classic = require "addons.classic"

local CosBasic = classic:extend()

local id = 1

function CosBasic:new()
    self.id = id
    id = id + 1
    self.active = true
    -- TODO: camera https://api.haxeflixel.com/flixel/FlxBasic.html#camera
    -- TODO: parent/container https://api.haxeflixel.com/flixel/FlxBasic.html#container
end

function CosBasic:update(dt)
end

function CosBasic:draw()
end

function CosBasic:__tostring()
    return self.id
end

return CosBasic
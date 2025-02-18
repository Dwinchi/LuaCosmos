local Group = Object:extend()

function Group:new(id)
    print("Created", id)
    self.id = id
    self.objects = {}
end

function Group:update(dt)
    print(self.objects[1])
    for k, v in ipairs(self.objects) do
        --print(k)
        v:update(dt)
    end
end

function Group:draw()
    love.graphics.push()
    for k, v in ipairs(self.objects) do
        v:draw()
    end
    love.graphics.pop()
end

function Group:add(o)
    print("Added " ..o.id.. " to " ..self.id)
    table.insert(self.objects, o)
end

function Group:clear()
    for k in pairs (self.objects) do
        self.objects[k] = nil
    end
end

function Group:__tostring()
    return self.id
end

return Group
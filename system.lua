local tiny = require("libraries/tiny")
local component = require("component")

-- Get some entities
local entity = require("entity")
--local player = entity.player

local system = {}


-- Keyboard system

-- function system.walking()
--   if love.keyboard.isDown('w') then

-- Draw System
system.draw = tiny.processingSystem()
system.draw.filter = tiny.requireAll("position", "sprite")
system.draw.active = false
function system.draw:process(entity)
    love.graphics.draw(entity.sprite.image, entity.position.x-entity.sprite.origin.x, entity.position.y-entity.sprite.origin.y)
end

return system

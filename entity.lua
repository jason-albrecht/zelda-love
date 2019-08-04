local component = require("component")

local entity = {}

-- Player Entity
function entity.player(x, y)
    return {
        player = true,
        controllable = true,
        position = component.position(x, y),
        sprite = component.sprite("resources/sprites/link.png", 16, 16)
    }
end

return entity

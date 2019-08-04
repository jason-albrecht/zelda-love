local tiny = require("libraries/tiny")
local system = require("system")
local entity = require("entity")
local component = require("component")

game = {
    window = {
        width = 0,
        height = 0
    },

    view = {
        width = 320,
        height = 240
    }
}

-- Load
function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    game.world = initWorld()
end

-- Update
function love.update(delta_time)
    game.world:update(delta_time)
end

-- Draw
function love.draw()
    love.graphics.push()
    love.graphics.scale(1/.5, 1/.5)
    system.draw:update()
    love.graphics.pop()
end

-- Initialize the world
function initWorld()
    return tiny.world(
        entity.player(160, 200),
        system.draw
    )
end

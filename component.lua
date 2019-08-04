local component = {}

-- Position
function component.position(pos_x, pos_y)
  return {
    x = pos_x, y = pos_y
  }
end

-- Image
function component.sprite(string, origin_x, origin_y)
    return {
        image = love.graphics.newImage(string),
        origin = {x = origin_x, y = origin_y}
    }
end

-- Return the component object
return component

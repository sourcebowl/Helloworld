function love.load()
    x = 400         -- text X position
    y = 300         -- text Y position
    angle = 0       -- text draw angle
    angle_speed = math.pi*2     -- angle inrement speed per second in radians
    font = love.graphics.newFont(14)    -- font that will be used in the text object
    text = love.graphics.newText(font, "Hello World!")      -- text object
    text_half_width = text:getWidth()/2     -- half width of the text
    text_half_height = text:getHeight()/2   -- half hight of the text
end

function love.update(dt)
    angle = angle + dt * angle_speed    -- increment the angle and multiply by the speed
end

function love.draw()
    -- draw the text at the position, angle, scale (the two 1's), and move the rotation/origin point to the centre of the text
    love.graphics.draw(text, x, y, angle, 1, 1, text_half_width, text_half_height)
end

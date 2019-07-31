--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 31.07.2019
-- Time: 0:06
-- To change this template use File | Settings | File Templates.
--
unit = {}
unit.image = love.graphics.newImage("image/unit.png")
unit.pos_x = 16
unit.pos_y = 16

function unit.drawUnitPosition ()
    love.graphics.draw(unit.image, unit.pos_x, unit.pos_y)
end
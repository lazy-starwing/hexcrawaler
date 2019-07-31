--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 30.07.2019
-- Time: 18:10
-- To change this template use File | Settings | File Templates.
--

require 'battlefield'

function love.load()
    id = battlefield.map[5][5]
end

function love.draw()
    love.graphics.setBackgroundColor(1,0.5,0.2,0)
    battlefield.todraw()
    battlefield.current_tile()
end

function love.keyreleased(key)
    if key == "escape" then
        love.event.quit();
    end
end


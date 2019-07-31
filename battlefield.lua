--
-- Created by IntelliJ IDEA.
-- User: Ярослав
-- Date: 30.07.2019
-- Time: 18:10
-- To change this template use File | Settings | File Templates.
--

battlefield = {}

battlefield.options = {}
battlefield.options.tile_x = 96
battlefield.options.tile_y = 96
battlefield.options.mapsize_x = 5
battlefield.options.mapsize_y = 5
battlefield.options.shift = 24
battlefield.lands = {}
battlefield.lands.hexImage = love.graphics.newImage("image/hex.png")
battlefield.lands.hoverImage = love.graphics.newImage("image/possibleHex.png")
battlefield.map = {
    {0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0},{0,0,0,0,0}
}

function battlefield.todraw()
    local opt = battlefield.options

    for curX=1, opt.mapsize_x do
        for curY=1, opt.mapsize_y do
            local shift
            if curY % 2 == 0 then
                shift = opt.shift
            else
                shift = 0
            end
            love.graphics.draw(battlefield.lands.hexImage, curX*opt.tile_x - opt.tile_x + shift, curY*opt.tile_y - opt.tile_y)
        end
    end
end

function battlefield.current_tile()
    x = love.mouse.getX(); y = love.mouse.getY()
    local opt = battlefield.options
    local col = math.floor(x / opt.tile_x) + 1
    local lin = math.floor(y / opt.tile_y) + 1
    love.graphics.print("Mouse "..tostring(x).." "..tostring(y),35,515)
    if lin % 2 == 0 then
        if x >= 25 and x <= opt.tile_x * opt.mapsize_x + 25 and lin > 0 and lin <= opt.mapsize_y then
            local new_col = math.floor((x - 25) / opt.tile_x) + 1
            love.graphics.print("ID "..tostring(lin)..tostring(new_col),35,500)
            love.graphics.draw(battlefield.lands.hoverImage, new_col*opt.tile_x - opt.tile_x + opt.shift, lin*opt.tile_y - opt.tile_y)
        end
    else
        if col > 0 and col <= opt.mapsize_x and lin > 0 and lin <= opt.mapsize_y then
            love.graphics.print("ID "..tostring(lin)..tostring(col),35,500)
            love.graphics.draw(battlefield.lands.hoverImage, col*opt.tile_x - opt.tile_x , lin*opt.tile_y - opt.tile_y)
        end
    end
end


function love.load()

  TileW, TileH = 32,32
  
  Tileset = love.graphics.newImage('countryside.png')
  
  local tilesetW, tilesetH = Tileset:getWidth(), Tileset:getHeight()
  
  local quadInfo = { 
    { 0,  0 },  -- 1 = grass 
    { 32,  0 }, -- 2 = box
    { 0, 32 },  -- 3 = flowers
    { 32, 32 }, -- 4 = boxTop
  }

  Quads = {}
  for i,info in ipairs(quadInfo) do
    -- info[1] = x, info[2] = y
    Quads[i] = love.graphics.newQuad(info[1], info[2], TileW, TileH, tilesetW, tilesetH)
  end
  
  TileTable = {
  
     { 4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4 },
     { 4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,4 },
     { 4,1,3,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,4 },
     { 4,1,1,1,1,1,1,1,2,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,4 },
     { 4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4 },
     { 4,1,1,4,1,1,1,1,1,2,2,1,1,4,1,1,1,4,1,4,2,2,1,1,4 },
     { 4,1,1,4,1,1,1,1,4,3,3,4,1,2,1,1,1,2,1,4,1,1,1,1,4 },
     { 4,1,1,4,1,1,1,1,4,3,3,4,1,1,4,1,4,1,1,4,2,2,1,1,4 },
     { 4,1,1,4,1,1,1,1,4,3,3,4,1,1,2,1,2,1,1,4,1,1,1,1,4 },           
     { 4,1,1,4,1,1,1,1,2,3,3,2,1,1,1,4,1,1,1,4,1,1,1,1,4 },
     { 4,1,1,2,2,2,2,1,1,2,2,1,1,1,1,2,1,3,1,2,2,2,1,1,4 },
     { 4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4 },
     { 4,1,1,1,1,1,1,1,1,2,1,1,1,1,2,2,4,1,1,1,1,1,1,1,4 },
     { 4,1,1,1,1,1,1,1,4,3,4,1,1,1,1,1,2,1,1,1,1,1,1,1,4 },
     { 4,1,1,3,1,1,1,1,2,3,2,1,1,1,1,2,1,1,1,1,1,1,1,1,4 },
     { 4,1,1,1,1,1,1,1,1,2,1,1,2,1,2,1,1,1,1,1,1,1,3,1,4 },
     { 4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4 },
     { 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2 }
  }

end


function love.draw()

  for rowIndex,row in ipairs(TileTable) do
    for columnIndex,number in ipairs(row) do
      local x,y = (columnIndex-1)*TileW, (rowIndex-1)*TileH
      love.graphics.drawq(Tileset, Quads[number], x, y)
    end
  end

end

local rect = display.newRect(300, 500, 100, 100);
local rect2 = display.newRect(300, 700, 100, 100);
local rect3 = display.newRect(300, 300, 100, 100);

function move()
  transition.to( rect, { time=500, y = (rect.y + 100) % display.contentHeight } )
end

function alpha()
  transition.to( rect2, { time=500, alpha = (rect2.alpha + .1) % .99 } )
end

function rotation()
  transition.to( rect3, { time=500, rotation = math.floor((rect3.rotation + 30)/30)*30} )
end

rect:addEventListener("tap", move)
rect2:addEventListener("tap", alpha)
rect3:addEventListener("tap", rotation)
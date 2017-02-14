local rect = display.newRect(300, 300, 200, 200)
rect:setFillColor(1, 0, 0)
rect:setStrokeColor(0, 1, 0)
rect.strokeWidth = 5

local circle = display.newCircle(300, 600, 100)
circle:setFillColor(1, 0, 0)
circle:setStrokeColor(0, 1, 0)
circle.strokeWidth = 5

function test()
  print("Button Pressed")
end

circle:addEventListener("tap", test)
local rect = display.newRect(300, 300, 100, 400)  --Create a rectangle
rect:setFillColor(0, .5, 0)                       --Set the fill color to green
rect:setStrokeColor(1, 1, 1)                      --Set the stroke to white
rect.strokeWidth = 8                              --Set the stroke width to 8

local circle = display.newCircle(300, 800, 100)
circle:setFillColor(0, .5, 0)
circle:setStrokeColor(1, 1, 1)
circle.strokeWidth = 8

function setRed( event ) 
  rect:setFillColor(.5, 0, 0)
  circle:setFillColor(.5, 0, 0)
end

function setGreen( event ) 
  rect:setFillColor(0, .5, 0)
  circle:setFillColor(0, .5, 0)
end

rect:addEventListener("tap", setRed)
circle:addEventListener("tap", setGreen)
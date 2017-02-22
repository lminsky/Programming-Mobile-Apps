--Requires 1 click to change the color
function clicked(event)
  event.target.red = (event.target.red + 1) % 2 --This will cycle 0, 1, 0, 1, ...
  event.target:setFillColor(1, event.target.red, event.target.red)
end

for i=0,23 do
  local rect = display.newRect(100+150*(i%4), 200+150*math.floor(i/4), 100, 100)
  rect.red = 1    -- Create a new property for the rectangle object called red
  rect:addEventListener("tap", clicked)
end
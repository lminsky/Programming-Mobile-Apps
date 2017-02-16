local red = display.newRect(100, 100, 100, 100)
local green = display.newRect(100, 300, 100, 100)
local blue = display.newRect(100, 500, 100, 100)
local w1 = display.newRect(100, 700, 100, 100)
local w2 = display.newRect(100, 900, 100, 100)
local w3 = display.newRect(100, 1100, 100, 100)


red:setFillColor(1, 0, 0)
green:setFillColor(0, 1, 0)
blue:setFillColor(0, 0, 1)

function printButton(event)
  if (event.target == red) then
    print("red")
  elseif (event.target == green) then
    print("green")
  elseif (event.target == blue) then
    print("blue")
  else
    print("white")
  end
end









red:addEventListener("tap", printButton)
green:addEventListener("tap", printButton)
blue:addEventListener("tap", printButton)
w1:addEventListener("tap", printButton)
w2:addEventListener("tap", printButton)
w3:addEventListener("tap", printButton)
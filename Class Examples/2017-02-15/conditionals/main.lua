local x = 5 
local y = 10
local counter = 0;

--Create out text display and button
local textObj = display.newText(counter, 300, 300, nil, 64)
local rect = display.newRect(300, 600, 200, 200)
local rect2 = display.newRect(300, 800, 200, 200)
rect:setFillColor(0.2, 0.2, 0.2)

if (x <= y) then
  print("Hello")
end

--Our function to increase the counter value
function count(event)
  if (event.y < rect.y) then
    counter = counter + 1
  end
  if (event.y > rect.y) then
    counter = counter - 1
  end

  textObj.text = counter
  
  if(event.target == rect) then
    print("You clicked rect 1")
  end

  --Change the color of the counter text ONLY IF count is about 15
  if (counter >= 15) then
    textObj:setFillColor(counter/100,0,0)
  end
end

rect:addEventListener("tap", count)
rect2:addEventListener("tap", count)
--Requires 1 click to change the color
function clicked(event)
  if (event.target.red == 0) then
    event.target.red = 1
  else
    event.target.red = 0
  end
  event.target:setFillColor(1, event.target.red, event.target.red)
end

-- Requires an extra click the first time to toggle the color
-- function clicked(event)
--   if (event.target.red == 0) then
--     event.target.red = 1
--   else
--     event.target.red = 0
--   end
--   event.target:setFillColor(1, event.target.red, event.target.red)
-- end

for i=0,23 do
  local rect = display.newRect(100+150*(i%4), 200+150*math.floor(i/4), 100, 100)
  rect:addEventListener("tap", clicked)
end
local rect = display.newRect(300, 400, 100, 100)
local button = display.newRect(300, 700, 300, 300)

function changeAlpha(event)
  if (rect.alpha == 1) then
    transition.to(rect, {time=500, alpha=0})
  else 
    transition.to(rect, {time=500, alpha=1})
  end
end

button:addEventListener("tap", changeAlpha)
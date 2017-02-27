local rect = display.newRect(300, 400, 100, 100)
local button = display.newRect(300, 700, 300, 300)

function changeAlpha(event)
  transition.to(rect, {time=500, rotation=rect.rotation + 90})
end

button:addEventListener("tap", changeAlpha)
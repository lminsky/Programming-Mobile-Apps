local img = display.newImage("Circle.png", display.contentWidth/2, display.contentHeight/2)
local mask = graphics.newMask("mask.png")
img:setMask(mask)
img.maskScaleX = .5
img.maskScaleY = .5

function button()
  print("Test")
end

img:addEventListener("tap", button)

local w = display.contentWidth
local h = display.contentHeight
local img = display.newImage("okapi.jpg", w/2, h/2)
img:scale(.4, .4)

local mask = graphics.newMask("mask.png")

img:setMask(mask)
img.maskScaleX = 5
img.maskScaleY = 3
img.maskY = -100

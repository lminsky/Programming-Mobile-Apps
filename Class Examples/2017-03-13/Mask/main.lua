local rect = display.newRect(300, 500, 400, 400)
rect:setFillColor(1, 0, 1)

local mask = graphics.newMask("mask2.png")
rect:setMask(mask)
rect.maskRotation = 45
rect.maskScaleX = 1 

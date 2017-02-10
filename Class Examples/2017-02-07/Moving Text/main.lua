display.setDefault("background", 1, 0, 0)

local myButton = display.newImage( "button.png" ) 
myButton.x = display.contentWidth/2
myButton.y = display.contentHeight/2
local textobj = display.newText("Text", 100, 50, native.systemFont, 24)
textobj:setFillColor(1, 1, 1)

function moveButtonDown( event )
    textobj.y = (textobj.y + 50)%display.contentHeight
    print(event.numTaps)
end

myButton:addEventListener( "tap", moveButtonDown )
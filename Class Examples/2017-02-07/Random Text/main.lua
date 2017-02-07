local myButton = display.newImage( "button.png" ) 
myButton.x = display.contentWidth/2
myButton.y = display.contentHeight/2
local textobj = display.newText("HELLO World", 100, 50, native.systemFont, 64)
textobj:setFillColor(1, 1, 1)

function moveButtonDown( event )
  --textobj.y = (textobj.y + 50)%display.contentHeight
  textobj.y = math.random(textobj.height/2, display.contentHeight-textobj.height/2)
  textobj.x = math.random(textobj.width/2, display.contentWidth-textobj.width/2)
end

myButton:addEventListener( "tap", moveButtonDown )
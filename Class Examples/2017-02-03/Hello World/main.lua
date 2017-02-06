--Displays text on the screen
local textObj = display.newText("Hello World", 300, 300, oikrf, 65)
--Sets the text color
textObj:setFillColor(1,1,0)
--Moves the text down the screen
textObj.y = 500


print(textObj.x)
print(textObj.y)
print(textObj.text)
print(textObj.size)

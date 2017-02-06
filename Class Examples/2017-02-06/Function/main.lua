-- A function to display Hello World at whatever x,y coordinates are specified
function text(x, y)
  local textObj = display.newText("Hello World", x, y, native.systemFont, 48)
  textObj:setFillColor(1,1,1)
end

-- Use the text function to display at the specified coordinates
text(100, 100)
text(300, 300)
text(500, 500)
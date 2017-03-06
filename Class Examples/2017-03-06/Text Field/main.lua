local w = display.contentWidth
local h = display.contentHeight

local tfLabel = display.newText("Enter a number", w/2, 130, nil, 56 )
local tf = native.newTextField(w/2, 200, 350, 50)
local rect = display.newRect(w/2, 500, 200, 50)
local rectLabel = display.newText("Submit", w/2, 500)
rectLabel:setFillColor(0)
tf.placeholder = "Put your number here"

local function button(event)
  if(tf.text ~= "" and tonumber(tf.text) ~= nil) then
    print(tf.text * 5)
    tf.placeholder = "Put your number here"
  else
    tf.placeholder = "Invalid value"
  end
  tf.text = ""
end

rect:addEventListener("tap", button)












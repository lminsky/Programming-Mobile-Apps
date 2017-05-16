local widget = require( "widget" )
widget.setTheme("widget_theme_android")

local w = display.contentWidth
local h = display.contentHeight

topRect = display.newRect(w/2, h/3, w, h*2/3)
bottomRect = display.newRect(w/2, h*5/6, w, h/3)

function changeColor(event)
  local red = redSlider.value
  local green = greenSlider.value
  local blue = blueSlider.value
  -- print(r .. ", " .. g .. ", " .. b)
  topRect:setFillColor(red/100, green/100, blue/100)
end

function sendColor(event)
  network.request( "http:packer.minsky.co:8000/r/"..(255*redSlider.value/100), "PUT", getResp )
  network.request( "http:packer.minsky.co:8000/g/"..(255*greenSlider.value/100), "PUT", getResp )
  network.request( "http:packer.minsky.co:8000/b/"..(255*blueSlider.value/100), "PUT", getResp )
 
end

function getResp(event)
  print(event.response)
end

local sliderHeight = h*9/12
redSlider = widget.newSlider
{
  id = "r",
  top = sliderHeight,
  left = w*11/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}
greenSlider = widget.newSlider
{
  id = "g",
  top = sliderHeight,
  left = w*23/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}
blueSlider = widget.newSlider
{
  id = "b",
  top = sliderHeight,
  left = w*35/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}

topRect:addEventListener("tap", sendColor)

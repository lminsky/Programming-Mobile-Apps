local widget = require( "widget" )
widget.setTheme("widget_theme_android")

local w = display.contentWidth
local h = display.contentHeight

topRect = display.newRect(w/2, h/3, w, h*2/3)
bottomRect = display.newRect(w/2, h*5/6, w, h/3)

function changeColor(event)
  local r = redSlider.value
  local g = greenSlider.value
  local b = blueSlider.value
  -- print(r .. ", " .. g .. ", " .. b)
  topRect:setFillColor(r/100, g/100, b/100)
end

local sliderHeight = h*9/12
redSlider = widget.newSlider
{
  id = "redSlider",
  top = sliderHeight,
  left = w*11/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}
greenSlider = widget.newSlider
{
  id = "greenSlider",
  top = sliderHeight,
  left = w*23/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}
blueSlider = widget.newSlider
{
  id = "blueSlider",
  top = sliderHeight,
  left = w*35/48,
  value = 100,
  orientation = "vertical",
  listener = changeColor
}

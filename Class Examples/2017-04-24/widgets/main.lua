local widget = require( "widget" )
widget.setTheme("widget_theme_android")

local w = display.contentWidth
local h = display.contentHeight

function changeColor(event)
  local r = redSlider.value
  local g = greenSlider.value
  local b = blueSlider.value
  print(r .. ", " .. g .. ", " .. b)
  topRect:setFillColor(r/100, g/100, b/100)
end

-- Function to handle button events
-- local function handleButtonEvent( event )
--   local phase = event.phase
--   if "ended" == phase then
--         print( "You pressed and released a button!" )
--   end 
-- end
-- -- Create the button
-- local myButton = widget.newButton
-- {
--   left = 100,
--   top = 200,
--   width = 250,
--   height = 100,
--   id = "button_1",
--   label = "Press Me",
--   fontSize = 36,
--   onEvent = handleButtonEvent,
-- }


topRect = display.newRect(w/2, h/3, w, h*2/3)
bottomRect = display.newRect(w/2, h*5/6, w, h/3)

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

local widget = require( "widget" )
widget.setTheme("widget_theme_android")

local w = display.contentWidth
local h = display.contentHeight

-- Function to handle button events
local function handleButtonEvent( event )
  local phase = event.phase
  if "ended" == phase then
    print( "Button Released" )
  else
    print("Button Pressed") 
  end
end

-- Create the button
local myButton = widget.newButton(
{
  left = w/2 - 250/2,
  top = h/2 - 100/2,
  width = 250,
  height = 100,
  id = "button_1",
  label = "Press Me",
  fontSize = 36,
  onEvent = handleButtonEvent,
})
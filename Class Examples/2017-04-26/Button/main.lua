local widget = require( "widget" )
widget.setTheme("widget_theme_ios")

local w = display.contentWidth
local h = display.contentHeight

-- Function to handle button events
local function handleButtonEvent( event )
  local phase = event.phase
  -- print(phase)
  if "ended" == phase then
    print( "Button Released" )
  elseif phase == "began" then
    print("Button Pressed") 
  end
end

-- Create the button
local myButton = widget.newButton(
{
  left = w/2 - 500/2,
  top = h/2 - 300/2,
  width = 500,
  height = 300,
  id = "button_1",
  label = "This is a button",
  fontSize = 36,
  onEvent = handleButtonEvent,
})
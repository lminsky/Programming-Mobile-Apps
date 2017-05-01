local widget = require( "widget" )
widget.setTheme("widget_theme_ios")

local w = display.contentWidth
local h = display.contentHeight
 
local red = 0
local green = 0
local blue = 0

topRect = display.newRect(w/2, h/3, w, h*2/3)
topRect:setFillColor(0, 0, 0)

local redLabel = display.newText(red, w*1/4, h*7/8, nil)
local greenLabel = display.newText(green, w*2/4, h*7/8, nil)
local blueLabel = display.newText(blue, w*3/4, h*7/8, nil)
 
-- Handle stepper events
local function onStepperPress( event )
    if ( "increment" == event.phase ) then
        if(event.target.index == 0) then
            red = red + 1
        elseif(event.target.index == 1) then
            green = green + 1
        elseif(event.target.index == 2) then
            blue = blue + 1
        end
    elseif ( "decrement" == event.phase ) then
        if(event.target.index == 0) then
            red = red - 1
        elseif(event.target.index == 1) then
            green = green - 1
        elseif(event.target.index == 2) then
            blue = blue - 1
        end
    end
    topRect:setFillColor(red/100, green/100, blue/100)
    redLabel.text = red
    greenLabel.text = green
    blueLabel.text = blue
end
         
-- Create the widget
local redStepper = widget.newStepper(
    {
        x = w*1/4,
        y = h*5/6,
        minimumValue = 0,
        maximumValue = 100,
        onPress = onStepperPress
    }
)
redStepper.index = 0
-- Create the widget
local greenStepper = widget.newStepper(
    {
        x = w*2/4,
        y = h*5/6,
        minimumValue = 0,
        maximumValue = 100,
        onPress = onStepperPress
    }
)
greenStepper.index = 1
-- Create the widget
local blueStepper = widget.newStepper(
    {
        x = w*3/4,
        y = h*5/6,
        minimumValue = 0,
        maximumValue = 100,
        onPress = onStepperPress
    }
)
blueStepper.index = 2
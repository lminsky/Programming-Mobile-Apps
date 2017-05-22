local widget = require( "widget" )
 
-- Handle press events for the buttons
local function onSwitchPress( event )
    local switch = event.target
    print( "Switch with ID '"..switch.id.."' is on: "..tostring(switch.isOn) )
end
 
-- Image sheet options and declaration
local options = {
    width = 191,
    height = 191,
    numFrames = 2,
}
local radioButtonSheet = graphics.newImageSheet( "Radio-White.png", options )
 
-- Create a group for the radio button set
local radioGroup = display.newGroup()
 
-- Create two associated radio buttons (inserted into the same display group)
local radioButton1 = widget.newSwitch(
    {
        left = 150,
        top = 200,
        style = "radio",
        id = "RadioButton1",
        width = 100,
        height = 100,
        initialSwitchState = true,
        onPress = onSwitchPress,
        sheet = radioButtonSheet,
        frameOff = 1,
        frameOn = 2
    }
)
radioGroup:insert( radioButton1 )
 
local radioButton2 = widget.newSwitch(
    {
        left = 300,
        top = 200,
        style = "radio",
        id = "RadioButton2",
        width = 100,
        height = 100,
        onPress = onSwitchPress,
        sheet = radioButtonSheet,
        frameOff = 1,
        frameOn = 2
    }
)
radioGroup:insert( radioButton2 )
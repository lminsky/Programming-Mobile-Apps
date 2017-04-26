local widget = require( "widget" )
widget.setTheme("widget_theme_android")
 
-- Listen for segmented control events      
local function onSegmentPress( event )
    local target = event.target
    print( "Segment Label is:", target.segmentLabel )
    print( "Segment Number is:", target.segmentNumber )
end
 
-- Create a default segmented control
local segmentedControl = widget.newSegmentedControl(
    {
        left = 0,
        top = display.contentHeight-30,
        segmentWidth = display.contentWidth/4,
        segments = { "Item 1", "Item 2", "Item 3", "Item 4" },
        defaultSegment = 1,
        onPress = onSegmentPress,
        labelSize = 24
    }
)
local widget = require( "widget" )
widget.setTheme("widget_theme_ios")

local w = display.contentWidth
local h = display.contentHeight



topRect = display.newRect(w/2, h/3, w, h)
topRect:setFillColor(0, 0, 0)

-- Set up the picker wheel columns
local vals = {}
for i=0,100 do
    vals[i] = i
end
local columnData = 
{ 
    { 
        align = "left",
        width = w/3,
        labelPadding = 20,
        startIndex = 1,
        labels = vals
    },
    {
        align = "left",
        width = w/3,
        labelPadding = 10,
        startIndex = 1,
        labels = vals
    },
    {
        align = "left",
        width = w/3,
        labelPadding = 10,
        startIndex = 1,
        labels = vals
    }
}

function displayDate()
    local values = pickerWheel:getValues()
    local red = tonumber(values[1].value)/100
    local green = tonumber(values[2].value)/100
    local blue = tonumber(values[3].value)/100
    topRect:setFillColor(red, green, blue)
end

pickerWheel = widget.newPickerWheel(
{
    top = display.contentHeight - 200,
    left = 0,
    columns = columnData,
    style = "resizable",
    width = display.contentWidth*2,
    rowHeight = 48,
    fontSize = 24,
    onValueSelected = displayDate,
})
 

 
print( currentStyle, currentColor, currentSize )
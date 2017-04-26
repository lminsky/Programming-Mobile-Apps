local widget = require( "widget" )
widget.setTheme("widget_theme_android")
 
-- Set up the picker wheel columns
local columnData = 
{ 
    { 
        align = "left",
        width = display.contentWidth/2,
        labelPadding = 20,
        startIndex = 1,
        labels = { "January" , "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" }
    },
    {
        align = "left",
        width = display.contentWidth/4,
        labelPadding = 10,
        startIndex = 1,
        labels = { "1","2","3","4","5","6","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31" }
    },
    {
        align = "left",
        width = display.contentWidth/4,
        labelPadding = 10,
        startIndex = 1,
        labels = { "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008", "2007", "2006", "2005", "2004", "2003", "2002", "2001", "2000", "1999", "1998", "1997", "1996", "1995", "1994", "1993", "1992", "1991", "1990" }
    }
}

local date = display.newText("", display.contentWidth/2, display.contentHeight/2, nil, 32) 

function displayDate()
    local values = pickerWheel:getValues()
    local month = values[1].value
    local _date = values[2].value
    local year = values[3].value
    date.text = "The selected day is " .. month .. " " .. _date .. ", " .. year
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
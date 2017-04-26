local widget = require( "widget" )
-- widget.setTheme("widget_theme_android")
w = display.contentWidth
h = display.contentHeight

function setProg(event)
  if event.phase == "ended" then
    progressView:setProgress(event.value/100)
  end
end

-- Create the widget
progressView = widget.newProgressView(
    {
        left = w/4,
        top = h/2,
        width = w/2,
        isAnimated = true
    }
)

slider = widget.newSlider
{
  id = "slider",
  top = h*2/3,
  left = w/4,
  width = w/2,
  value = 50,
  orientation = "horizontal",
  listener = setProg
}
 
-- Set the progress to 50%
progressView:setProgress( 0.5 )
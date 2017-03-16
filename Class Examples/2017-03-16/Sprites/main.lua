local sheetOptions =
{
    width = 512,
    height = 256,
    numFrames = 8
}

local imageSheet = graphics.newImageSheet("sprites-cat-running.png", sheetOptions)


local sequenceData =
{
    name="walking",
    frames = {4, 5, 6, 7, 8, 1, 2, 3},
    time=500,
    loopCount = 1,   -- Optional ; default is 0 (loop indefinitely)
}


local character = display.newSprite( imageSheet, sequenceData )
character.x = display.contentWidth/2
character.y = display.contentHeight/2

function run()
  character:play()
end

character:addEventListener("tap", run)
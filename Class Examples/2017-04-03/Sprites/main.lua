local sheetOptions =
{
    width = 512,
    height = 256,
    numFrames = 8
}


local imageSheet = graphics.newImageSheet("sprites-cat-running.png", sheetOptions)


local sequenceData =
{
  {
    name="walking",
    frames = {1, 2, 3, 4, 5, 6, 7, 8},
    time=500,
    loopCount = 0,   -- Optional ; default is 0 (loop indefinitely)
  },
  {
    name="running",
    frames = {1, 2, 3, 4, 5, 6, 7, 8},
    time=250,
    loopCount = 0,   -- Optional ; default is 0 (loop indefinitely)
  }
}

local character = display.newSprite( imageSheet, sequenceData )
character.x = display.contentWidth/2
character.y = display.contentHeight/2

local button = display.newRect(100, 100, 100, 100)

function run(event)
  if event.numTaps == 1 then
    character:play()
  else
    character:pause()
  end
end

function speedUp(event)
  sequenceData[1].time = sequenceData[1].time - 10
  character.timeScale = character.timeScale + .05
  if character.isPlaying then

    character:setSequence("walking")
    character:play()
  else 
    character:setSequence("walking")
  end
end

character:addEventListener("tap", run)
button:addEventListener("tap", speedUp)
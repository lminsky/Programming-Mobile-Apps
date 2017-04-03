local sheetOptions =
{
    width = 120,
    height = 130,
    numFrames = 80
}


local imageSheet = graphics.newImageSheet("link.png", sheetOptions)


local sequenceData =
{
  {
    name="stand",
    frames = {31, 31, 31, 31, 33},
    time=4000,
    loopCount = 0,   -- Optional ; default is 0 (loop indefinitely)
  },
  {
    name="walk",
    frames = {71, 72, 73, 74, 75, 76, 77, 78, 79, 80},
    time=1000,
    loopCount = 0,   -- Optional ; default is 0 (loop indefinitely)
  }
}

local character = display.newSprite( imageSheet, sequenceData )
character.x = display.contentWidth/2
character.y = display.contentHeight/2
character:play()

local button = display.newRect(100, 100, 100, 100)

function move(event)
  if event.numTaps == 1 then
    character:setSequence("walk")
  else
    character:setSequence("stand")
  end
  character:play()
end

function speedUp(event)
  character.timeScale = character.timeScale + .05
end

character:addEventListener("tap", move)
button:addEventListener("tap", speedUp)
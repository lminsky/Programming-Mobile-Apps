system.activate( "multitouch" )

local sounds = {}

local x = 1
sounds[x] = audio.loadSound("a.wav")
x = x + 1
sounds[x] = audio.loadSound("b.wav")
x = x + 1
sounds[x] = audio.loadSound("bb.wav")
x = x + 1
sounds[x] = audio.loadSound("c.wav")
x = x + 1
sounds[x] = audio.loadSound("cc.wav")
x = x + 1
sounds[x] = audio.loadSound("d.wav")
x = x + 1
sounds[x] = audio.loadSound("e.wav")
x = x + 1
sounds[x] = audio.loadSound("ee.wav")
x = x + 1
sounds[x] = audio.loadSound("f.wav")
x = x + 1
sounds[x] = audio.loadSound("ff.wav")
x = x + 1
sounds[x] = audio.loadSound("g.wav")
x = x + 1
sounds[x] = audio.loadSound("gg.wav")

local playSound = function (event)
     audio.play(sounds[event.target.index])
end



local rect = {}

for i=1,12 do
  rect[i] = display.newRect(display.contentWidth/2, i*display.contentHeight/13+20, display.contentWidth*3/4, display.contentHeight/15)
  rect[i].index = i
  rect[i]:addEventListener("tap", playSound)
end
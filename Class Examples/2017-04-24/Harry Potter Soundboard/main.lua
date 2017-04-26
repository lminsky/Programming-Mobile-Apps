local w = display.contentWidth
local h = display.contentHeight

local sounds = {}
sounds[1] = audio.loadSound("sound/hp01.wav")
sounds[2] = audio.loadSound("sound/hp02.wav")
sounds[3] = audio.loadSound("sound/hp03.wav")
sounds[4] = audio.loadSound("sound/hp04.wav")
sounds[5] = audio.loadSound("sound/hp05.wav")
sounds[6] = audio.loadSound("sound/hp06.wav")
sounds[7] = audio.loadSound("sound/hp07.wav")
sounds[8] = audio.loadSound("sound/hp08.wav")
sounds[9] = audio.loadSound("sound/hp09.wav")
sounds[10] = audio.loadSound("sound/hp10.wav")
sounds[11] = audio.loadSound("sound/hp11.wav")
sounds[12] = audio.loadSound("sound/hp12.wav")


local playSound = function (event)
     audio.play(sounds[event.target.index])
end

local buttons = {}

for i=1,12 do
  buttons[i] = display.newImage("wand.png")
  buttons[i].x = (w/4) * ((i-1)%3) + w/4
  buttons[i].y = (h/6) * math.floor((i-1)/3) + (1.5*h/6)
  buttons[i].width = w/4
  buttons[i].height = w/4
  buttons[i].index = i
  buttons[i]:addEventListener("tap", playSound)
end
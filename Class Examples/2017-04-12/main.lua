local bottom = {}     --The array storing the objects on the left
local top = {}    --The array storing the objects on the right
local width = display.contentWidth
local height = display.contentHeight
local gameSize = 12
local revealedSquares = {-1, -1}
local countRevealed = 0
local pairsRemaining = gameSize/2
local clicks = 0;
local turns = display.newText( "Turns: 0", width/2, height-50, native.systemFont, 48 )
turns:setFillColor( 1, 1, 1 )


function reveal(event)
  clicks = clicks + 1
  turns.text = "Turns: " .. math.floor(clicks/2)
  if countRevealed == 2 then
    top[revealedSquares[1]].alpha=1
    top[revealedSquares[2]].alpha=1
    revealedSquares[1] = -1
    revealedSquares[2] = -1
    countRevealed=0
  end
  local index = event.target.index
  transition.to(top[index], {time=500, alpha=0})
  countRevealed = countRevealed + 1
  revealedSquares[countRevealed] = index
  if revealedSquares[1] ~= -1 and revealedSquares[2] ~= -1 then
    if bottom[revealedSquares[1]].c == bottom[revealedSquares[2]].c then
      bottom[revealedSquares[1]]:removeSelf()
      bottom[revealedSquares[2]]:removeSelf()
      top[revealedSquares[1]]:removeSelf()
      top[revealedSquares[2]]:removeSelf()
      revealedSquares[1] = -1
      revealedSquares[2] = -1
      countRevealed=0
      pairsRemaining = pairsRemaining - 1
    end
  end
  if pairsRemaining == 0 then
    print(clicks / 2)
  end
end

for i=0,gameSize-1 do
  local size = width/9.5
  local x = size
  local y = height/2 - (size*3)
  bottom[i] = display.newRect(x + 2.5*size*(i%4), y + 2.5*size*(math.floor(i/4)), size*1.5, size*1.5)
  bottom[i].index = i
  top[i] = display.newRect(x + 2.5*size*(i%4), y + 2.5*size*(math.floor(i/4)), size*1.5, size*1.5)
  top[i].index = i
  top[i]:addEventListener("tap", reveal)
end

bottom[0]:setFillColor(0, 0, 1)
bottom[0].c = 1
bottom[6]:setFillColor(0, 0, 1)
bottom[6].c = 1
bottom[2]:setFillColor(0, 1, 0)
bottom[2].c = 2
bottom[5]:setFillColor(0, 1, 0)
bottom[5].c = 2
bottom[10]:setFillColor(1, 0, 0)
bottom[10].c = 4
bottom[1]:setFillColor(1, 0, 0)
bottom[1].c = 4
bottom[11]:setFillColor(0, 1, 1)
bottom[11].c = 3
bottom[3]:setFillColor(0, 1, 1)
bottom[3].c = 3
bottom[9]:setFillColor(1, 0, 1)
bottom[9].c = 5
bottom[7]:setFillColor(1, 0, 1)
bottom[7].c = 5
bottom[4]:setFillColor(1, 1, 0)
bottom[4].c = 6
bottom[8]:setFillColor(1, 1, 0)
bottom[8].c = 6

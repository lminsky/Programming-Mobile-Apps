local nums = {}

function click (event)
  event.target:setFillColor(1,0,0)
end

-- Prints a 4x6 grid of squares
for i=0,23 do
  nums[i] = display.newRect(100+150*(i%4), 200+150*math.floor(i/4), 100, 100)
  nums[i]:addEventListener("tap", click)
end

nums[5]:setFillColor(1,0,1)
nums[12]:setFillColor(1,1,0)
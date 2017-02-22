-- Prints a 4x6 grid of squares
for i=0,23 do
  local rect = display.newRect(100+150*(i%4), 200+150*math.floor(i/4), 100, 100)
end
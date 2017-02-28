local w = display.contentWidth

for i=0,w do
  display.newCircle(i, 400+100*math.sin(math.rad(i)), 2)
end

math.randomseed(1)
for i=1,10 do
  print(math.random())
end
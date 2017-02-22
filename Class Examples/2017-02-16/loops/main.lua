local x = 0
while x < 10 do
  print(x)
  x = x + 1
end
---------------------
for i=0,9 do
  print(i)
end

--------------------
local y = 20
repeat
  y = y + 1
  print(y)
until y > 10
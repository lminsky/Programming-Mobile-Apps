
local w = display.contentWidth

for i=0,w do
  local sin = 400 - math.sin(math.rad(i)) * 100
  local cos = 700 - math.cos(math.rad(i)) * 100
  -- display.newCircle(i, sin, 2)
  -- display.newCircle(i, cos, 2)
  local line = display.newLine(i, sin, i, cos)
  line:setStrokeColor(1-(i/w),i/w,0)
end

print(math.deg(math.pi))
print(math.exp(1))
print(math.pow(2,3))
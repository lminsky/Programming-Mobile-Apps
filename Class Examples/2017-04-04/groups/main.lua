local r1 = display.newRect(100, 300, 100, 100)
local r2 = display.newRect(100, 500, 100, 100)
local r3 = display.newRect(100, 700, 100, 100)
local r4 = display.newRect(100, 900, 100, 100)

local group = display.newGroup(r1, r2, r3, r4)

transition.to(group, {x=group.x + 400, time=2000})
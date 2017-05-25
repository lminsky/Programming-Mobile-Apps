local w = display.contentWidth
local h = display.contentHeight

local buttons = {}
local size = 1;

for i=1,9 do
  buttons[i] = display.newRect(w/2, i*h/10, w/2, h/14)
  buttons[i].index = i
end

local text = display.newText("Get Size", w/2, 1*h/10, nil, 36);
text:setFillColor(0,0,0)
local text = display.newText("Every Other", w/2, 2*h/10, nil, 36);
text:setFillColor(0,0,0)
local text = display.newText("Set Background", w/2, 3*h/10, nil, 36);
text:setFillColor(0,0,0)
buttons[3]:setFillColor(171/255, 205/255, 239/255)
local text = display.newText("Set Size 10", w/2, 4*h/10, nil, 36);
text:setFillColor(0,0,0)
local text = display.newText("Set Size 15", w/2, 5*h/10, nil, 36);
text:setFillColor(0,0,0)
local text = display.newText("Set Size 20", w/2, 6*h/10, nil, 36);
text:setFillColor(0,0,0)
local text = display.newText("Set Background", w/2, 7*h/10, nil, 36);
text:setFillColor(0,0,0)
buttons[7]:setFillColor(1,0,1)
local text = display.newText("Set Background", w/2, 8*h/10, nil, 36);
text:setFillColor(0,0,0)
buttons[8]:setFillColor(1,1,0)
local text = display.newText("Set Background", w/2, 9*h/10, nil, 36);
text:setFillColor(0,0,0)


function getSize(event)
  network.request( "http://pbn.minsky.co/api/size/", "GET", handleSize )
end

function handleSize(event)
  if(event.status == 200) then
    size = event.response
    print(size)
  end
end

function everyOther(event)
  local query = ""
  for i=1,size do
    if(i % 2 == 0) then
      query = query .. i-1 .. "=ff00ff"
    else
      query = query .. i-1 .. "=000000"
    end
    if(i ~= size) then
      query = query .. "&"
    end
  end
  network.request( "http://pbn.minsky.co/api/?"..query, "PUT", nil )
end

function getResponse(event)
  local res = event.response
  print(res)
end

function setBackground(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  network.request( "http://pbn.minsky.co/admin/colors/abcdef", "POST", getResponse, params )
end

function setMagenta(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  network.request( "http://pbn.minsky.co/admin/colors/ff00ff", "POST", getResponse, params )
end

function setYellow(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  network.request( "http://pbn.minsky.co/admin/colors/ffff00", "POST", getResponse, params )
end

function setWhite(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  network.request( "http://pbn.minsky.co/admin/colors/ffffff", "POST", getResponse, params )
end

function setSize10(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  size = 100
  network.request( "http://pbn.minsky.co/admin/size/10", "POST", getResponse, params )
end

function setSize15(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  size = 225
  network.request( "http://pbn.minsky.co/admin/size/15", "POST", getResponse, params )
end

function setSize20(event)
  local body = "key=9378yo4gfhiubjvs98e9m3f8h38vhseiusevmjs9erh"
  local params = {}
  params.body = body
  size = 400
  network.request( "http://pbn.minsky.co/admin/size/20", "POST", getResponse, params )
end

buttons[1]:addEventListener("tap", getSize)
buttons[2]:addEventListener("tap", everyOther)
buttons[3]:addEventListener("tap", setBackground)
buttons[4]:addEventListener("tap", setSize10)
buttons[5]:addEventListener("tap", setSize15)
buttons[6]:addEventListener("tap", setSize20)
buttons[7]:addEventListener("tap", setMagenta)
buttons[8]:addEventListener("tap", setYellow)
buttons[9]:addEventListener("tap", setWhite)

local w = display.contentWidth
local h = display.contentHeight

local buttons = {}
local strings = { "white", "black", "red", "green", "blue", "cyan", "magenta", "yellow" }

for i=1,9 do
  buttons[i] = display.newRect(w/2, i*h/10, w/2, h/14)
  buttons[i].index = i
end

buttons[2]:setFillColor(0, 0, 0)
buttons[2]:setStrokeColor(.5, .5, .5)
buttons[2].strokeWidth = 2
buttons[3]:setFillColor(1, 0, 0)
buttons[4]:setFillColor(0, 1, 0)
buttons[5]:setFillColor(0, 0, 1)
buttons[6]:setFillColor(0, 1, 1)
buttons[7]:setFillColor(1, 0, 1)
buttons[8]:setFillColor(1, 1, 0)
local text = display.newText("Get", w/2, 9*h/10, nil, 48)
text:setFillColor(0, 0, 0)

function putResp(event)
  text.text = "Get"
end

function getResp(event)
  text.text = event.response
end

function putReq(event)
  network.request( "http:192.168.105.9:8000/val/"..strings[event.target.index], "PUT", putResp )
end

function getReq(event)
  network.request( "http:192.168.105.9:8000/val/", "get", getResp )
end



for i=1,8 do
  buttons[i]:addEventListener("tap", putReq)
end

buttons[9]:addEventListener("tap", getReq)

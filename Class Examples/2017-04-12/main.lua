local left = {}     --The array storing the objects on the left
local right = {}    --The array storing the objects on the right

--This function stores the value from event.target.index into the index variable
--It then prints the value
--It then generates a new alpha value (0 if it's currently 1 and vice versa)
--Finally, it transitions the corresponding rectangle to the right of the one that was clicked
function printIndex(event)
  local index = event.target.index
  print(index)
  local newAlpha = (right[index].alpha + 1) % 2
  transition.to(right[index], {time=500, alpha=newAlpha})
end

--Loops from 1 to 5 and creates two columns of rectangles
--Attaches a property to each of the left rects that stores its index value
--Finally, it attaches an event listener to the left rects to call printIndex when touched
for i=1,5 do
  left[i] = display.newRect(100, 200*i, 100, 100)
  left[i].index = i
  left[i]:addEventListener("tap", printIndex)

  right[i] = display.newRect(300, 200*i, 100, 100)
end

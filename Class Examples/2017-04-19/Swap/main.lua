local rects = {}											-- Create an array to store the rectangle objects

rects[0] = display.newRect(150, 150, 100, 100)				-- Create and store the first rectangle object
rects[1] = display.newRect(300, 150, 100, 100)				-- Create and store the second rectangle object
rects[2] = display.newRect(150, 300, 100, 100)				-- Create and store the third rectangle object
rects[3] = display.newRect(300, 300, 100, 100)				-- Create and store the fourth rectangle object

rects[0]:setFillColor(1, 0, 0)								-- Set the color of the first rectangle to red
rects[1]:setFillColor(0, 1, 0)								-- Set the color of the second rectangle to green
rects[2]:setFillColor(0, 0, 1)								-- Set the color of the third rectangle to blue
rects[3]:setFillColor(1, 1, 0)								-- Set the color of the fourth rectangle to yellow

function swap(event)										-- Create the function 'swap'
	for i=1, 10 do											-- Repeat the following ten times
		local randomIndex1 = math.random(0, 3)				-- Generate and store a random number. This will be the index of one of the rectangles we swap
		local randomIndex2 = math.random(0, 3)				-- Generate and store a random number. This will be the index of the other rectangle we swap

		local tempX = rects[randomIndex1].x 				-- Store the x-position of the first rectangle (It will be overwritten in a second, so we need to store it somewhere)
		local tempy = rects[randomIndex1].y 				-- Store the y-position of the first rectangle (It will be overwritten in a second, so we need to store it somewhere)

		rects[randomIndex1].x = rects[randomIndex2].x 		-- Move the x-position of the first rectangle to the x-position of the second
		rects[randomIndex1].y = rects[randomIndex2].y 		-- Move the y-position of the first rectangle to the y-position of the second

		rects[randomIndex2].x = tempX						-- Move the x-position of the second rectangle to the original x-position of the first. It was just erased from the recangle itself, but we can still access it because we stored it in a temporary variable
		rects[randomIndex2].y = tempy						-- Move the y-position of the second rectangle to the original y-position of the first. It was just erased from the recangle itself, but we can still access it because we stored it in a temporary variable
	end
end

rects[0]:addEventListener("tap", swap)						-- Add an event listener to the first rectangle
rects[1]:addEventListener("tap", swap)						-- Add an event listener to the second rectangle
rects[2]:addEventListener("tap", swap)						-- Add an event listener to the third rectangle
rects[3]:addEventListener("tap", swap)						-- Add an event listener to the fourth rectangle
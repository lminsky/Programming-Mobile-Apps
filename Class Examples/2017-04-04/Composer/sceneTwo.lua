----------------------------------------------------------------
-- sceneTwo.lua
---------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()
----------------------------------------------------------------
-- BEGINNING OF YOUR SCENE
---------------------------------------------------------------
--Called if the scene hasn't been previously seen
function scene:create( event )
  local ByeGroup = self.view
  backgroundImage = display.newImage("bg2.jpg", display.contentWidth/2, display.contentHeight/2)
  ByeGroup:insert(backgroundImage)
  byeText = display.newText("Goodbye!",0 ,0, nil, 36)
  byeText.x = display.contentWidth/2
  byeText.y =  display.contentHeight/2
  ByeGroup:insert(byeText)
  rect1 = display.newRect(100, 100, 100, 100)
  rect2 = display.newRect(display.contentWidth-200, 100, 100, 100)
  ByeGroup:insert(rect1)
  ByeGroup:insert(rect2)
end

local function slideRight()
    composer.gotoScene( "sceneOne", {effect = "slideRight", time = 400} ) 
end
local function slideLeft()
    composer.gotoScene( "sceneOne", {effect = "slideLeft", time = 400} ) 
end

function scene:show(event)
  rect1:addEventListener("touch", slideLeft)
  rect2:addEventListener("touch", slideRight)
end

function scene:hide(event)
  rect1:removeEventListener("touch", slideLeft)
  rect2:removeEventListener("touch", slideRight)
end

-- "create" is called whenever the scene is FIRST called
scene:addEventListener( "create", scene )

-- "show" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )
-- "hide" event is dispatched before next scene's transition begins
scene:addEventListener( "hide", scene )

return scene
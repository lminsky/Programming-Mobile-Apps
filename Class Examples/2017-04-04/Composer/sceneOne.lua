----------------------------------------------------------------
-- sceneOne.lua
---------------------------------------------------------------
local composer = require "composer"
local scene = composer.newScene()

----------------------------------------------------------------
-- BEGINNING OF YOUR SCENE
---------------------------------------------------------------
--Called if the scene hasn't been previously seen
function scene:create ( event )
  local HelloGroup = self.view
  bgImage = display.newImage("bg1.jpg", display.contentWidth/2, display.contentHeight/2)
  HelloGroup:insert(bgImage)
  helloText = display.newText("Hello!!",0 ,0, nil, 36)
  helloText.x = display.contentWidth/2
  helloText.y =  display.contentHeight/2
  HelloGroup:insert(helloText)
  rect1 = display.newRect(100, display.contentWidth-200, 100, 100)
  rect2 = display.newRect(display.contentWidth-200, display.contentWidth-200, 100, 100)
  HelloGroup:insert(rect1)
  HelloGroup:insert(rect2)
end

local function slideRight()
    composer.gotoScene( "sceneTwo", {effect = "slideRight", time = 400} ) 
end
local function slideLeft()
    composer.gotoScene( "sceneTwo", {effect = "slideLeft", time = 400} ) 
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
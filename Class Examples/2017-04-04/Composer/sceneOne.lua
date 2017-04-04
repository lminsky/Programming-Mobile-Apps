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
end

function onBackgroundTouch()
    composer.gotoScene("sceneTwo", "slideLeft", 400)
end

function scene:show(event)
     bgImage:addEventListener("touch", onBackgroundTouch)
end

function scene:hide(event)
   bgImage:removeEventListener("touch", onBackgroundTouch)
end

-- "create" is called whenever the scene is FIRST called
scene:addEventListener( "create", scene )
-- "show" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )
-- "hide" event is dispatched before next scene's transition begins
scene:addEventListener( "hide", scene )
return scene
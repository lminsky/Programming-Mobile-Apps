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
end

local function onBackgroundTouch()
    composer.gotoScene( "sceneOne", {effect = "slideLeft", time = 400} ) 
end

function scene:show(event)
    backgroundImage:addEventListener("touch", onBackgroundTouch)
end

function scene:hide(event)
  backgroundImage:removeEventListener("touch", onBackgroundTouch)
end

-- "create" is called whenever the scene is FIRST called
scene:addEventListener( "create", scene )

-- "show" event is dispatched whenever scene transition has finished
scene:addEventListener( "show", scene )
-- "hide" event is dispatched before next scene's transition begins
scene:addEventListener( "hide", scene )

return scene
-- helpers

-- Color Globals
BG = nil -- background
Txt = nil -- text color
sCol = nil -- star color

PhysicsEnabled = true -- bool to enable/disable physics
World = nil -- physics world if enabled

nLauncher = nil -- bool to track the neil launcher

-- prepare for run
function prep()
  viewer.mode = FULLSCREEN
  local mode = objc.viewer.view.window.screen.traitCollection.userInterfaceStyle
  
  if mode == 1.0 then -- sets colors for light mode
    BG = color(220)
    Txt = color(35)
    sCol = color(35)
  elseif mode == 2.0 then -- sets colors for dark mode
    BG = color(35)
    Txt = color(220)
    sCol = color(220)
  end
  
  if PhysicsEnabled then -- generates a physics world if needed
    genWorld()
  end
end

-- function to generate physics world
function genWorld()
  World = physics2d.world()
end

-- shorten the call to random
function rInt(min,max)
  return math.random(min, max)
end

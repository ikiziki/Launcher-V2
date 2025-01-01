Launcher = class()

function Launcher:init(touch)
  self.initialTouch = touch
end

function Launcher:update(dt)
end

function Launcher:draw()
  style.fill(128)
  ellipse(self.initialTouch.x, self.initialTouch.y, 20)
end

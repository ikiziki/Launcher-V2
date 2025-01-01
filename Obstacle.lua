Obstacle = class()

function Obstacle:init()
  self.assets = {
    asset.Neptune,
    asset.Jupiter,
    asset.Saturn
  }
end

function Obstacle:update(dt)
end

function Obstacle:draw()
end

function Obstacle:touched(touch)
end
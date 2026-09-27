function love.load()
	Object = require "classic"
	require "player"
	require "enemy"
	require "bullet"

	TblPlayer = Player()
	TblEnemy = Enemy()
	ListOfBullets = {}
end

function love.update(dt)
	TblPlayer:update(dt)
	TblEnemy:update(dt)

	for i,v in ipairs(ListOfBullets) do
		v:update(dt)
	end
end

function love.draw()
	TblPlayer:draw()
	TblEnemy:draw()
end

function love.keypressed(key)
	TblPlayer:keyPressed(key)
end
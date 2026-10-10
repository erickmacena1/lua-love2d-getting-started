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
		v:checkCollision(TblEnemy)

		if v.dead then
			table.remove(ListOfBullets, i)
		end
	end
end

function love.draw()
	TblPlayer:draw()
	TblEnemy:draw()

	for i,v in ipairs(ListOfBullets) do
		v:draw()
	end
end

function love.keypressed(key)
	TblPlayer:keyPressed(key)
end
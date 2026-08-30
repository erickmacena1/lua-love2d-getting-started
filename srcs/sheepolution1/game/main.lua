function love.load()
	X = 30
	Y = 50
end

function love.update(dt)

end

function love.draw()
	love.graphics.rectangle("line", X, Y, 100, 100)
	love.graphics.circle("line", X, Y, 50)
	love.graphics.circle("line", X, Y, 5)
end

function love.keypressed(key)
	if key == "space" then
		X = math.random(100, 500)
		Y = math.random(100, 500)
	end
end
function love.load()
	MyImage = love.graphics.newImage("assets/sheep.png")
end

function love.update()
	
end

function love.draw()
	love.graphics.draw(MyImage, 100, 100)
	love.graphics.draw(MyImage, 200, 100, 0, 2, 2)
	love.graphics.draw(MyImage, 500, 100, 0, -1, 1)
	
	love.graphics.draw(MyImage, 100, 350, 0, 1, 1, 39, 50)
	love.graphics.draw(MyImage, 200, 350, 0, 2, 2, 39, 50)
	love.graphics.draw(MyImage, 500, 350, 0, -1, 1, 39, 50)
	
end

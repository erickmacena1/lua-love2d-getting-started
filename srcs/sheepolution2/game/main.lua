function love.load()
	MyImage = love.graphics.newImage("assets/sheep.png")
	-- Width = MyImage:getWidth()
	-- Height = MyImage:getHeight()

	love.graphics.setBackgroundColor(1, 1, 1)
end

function love.update()

end

function love.draw()
	-- love.graphics.draw(MyImage, 100, 100)
	-- love.graphics.draw(MyImage, 200, 100, 0, 2, 2)
	-- love.graphics.draw(MyImage, 500, 100, 0, -1, 1)

	-- love.graphics.draw(MyImage, 100, 350, 0, 1, 1, 39, 50)
	-- love.graphics.draw(MyImage, 200, 350, 0, 2, 2, 39, 50)
	-- love.graphics.draw(MyImage, 500, 350, 0, -1, 1, 39, 50)

	-- love.graphics.draw(MyImage, 100, 100, 0, 2, 2, Width/2, Height/2)

	love.graphics.setColor(255/255, 200/255, 40/255, 127/255)
    love.graphics.setColor(1, 0.78, 0.15, 0.5)
    -- Or ...
    love.graphics.draw(MyImage, 100, 100)
    -- Not passing an argument for alpha automatically sets it to 1 again.
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(MyImage, 200, 100)

end

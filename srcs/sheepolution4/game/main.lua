function love.load()
	Circle = {}

	Circle.x = 100
	Circle.y = 100
	Circle.radius = 25
	Circle.speed = 200
end

function love.update(dt)
	Mouse_x, Mouse_y = love.mouse.getPosition()
	Angle = math.atan2(Mouse_y - Circle.y, Mouse_x - Circle.x)
end

function love.draw()
	love.graphics.circle("line", Circle.x, Circle.y, Circle.radius)
	love.graphics.print("angle: " .. Angle, 10, 10)
	love.graphics.line(Circle.x, Circle.y, Mouse_x, Circle.y)
	love.graphics.line(Circle.x, Circle.y, Circle.x, Mouse_y)
	love.graphics.line(Circle.x, Circle.y, Mouse_x, Mouse_y)

end



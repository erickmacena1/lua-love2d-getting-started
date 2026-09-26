function love.load()
	R1 = {
		x = 10,
		y = 100,
		width = 100,
		height = 100
	}

	R2 = {
		x = 250,
		y = 120,
		width = 150,
		height = 120
	}
end

function love.update(dt)
	R1.x = R1.x + 100 * dt
end

function love.draw()
	local mode
	if CheckCollision(R1, R2) then
		mode = "fill"
	else
		mode = "line"
	end

	love.graphics.rectangle(mode, R1.x, R1.y, R1.width, R1.height)
	love.graphics.rectangle(mode, R2.x, R2.y, R2.width, R2.height)

end

function CheckCollision(a, b)
	local a_left = a.x
	local a_right = a.x + a.width
	local a_top = a.y
	local a_bottom = a.y + a.height
	
	local b_left = b.x
	local b_right = b.x + b.width
	local b_top = b.y
	local b_bottom = b.y + b.height

	return a_right > b_left
		and a_left < b_left
		and a_bottom > b_top
		and a_top < b_bottom

end

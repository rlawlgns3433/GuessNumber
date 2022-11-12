function GuessNumberGame()
	local lives	= 10
	math.randomseed(os.time())
	local randomNumber = math.random(1, 1000)

	while lives > 0 do
		
		print("You have "..lives.." lives left, Guess the number!")
		
		local number = io.read()

		number = tonumber(number)

		if number == randomNumber then
			print("You guess it correct, Congratulations!")
			break
		elseif number < randomNumber then
			print("Guess higher!")
			lives = lives - 1
		elseif number > randomNumber then
			print("Guess lower!")
			lives = lives - 1

		end
		if lives <= 0 then
			print("You failed!")
			break
		end
	end
end

while true do
	print("Press 1 to start game")
	print("Press 2 to quit game")
	input = io.read()
	if tonumber(input) == 1 then
		GuessNumberGame()
	elseif tonumber(input) == 2 then
		break
	end
end

io.read()

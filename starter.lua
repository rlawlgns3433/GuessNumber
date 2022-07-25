local lives	= 10
math.randomseed(os.time())
local randomNumber = math.random(1, 50)

while lives > 0 do
	
	print("You have "..lives.." left, Guess the number!")
	
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

io.read()
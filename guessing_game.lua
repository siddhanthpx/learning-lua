local random_number = math.random(0, 100)
local guess = -1
local gcounter = 1

while guess ~= random_number do
    io.write("enter a number between 0 and 100 : ")
    guess = tonumber(io.read("*n"))
    if guess then
        if guess > random_number then
            io.write("guess lower.\n")
            gcounter = gcounter + 1
        elseif guess < random_number then
            io.write("guess higher\n")
            gcounter = gcounter + 1
        else
            io.write("you guessed correctly: ", random_number, " in ", gcounter," tries.\n")
        end
    elseif not guess then
        io.write("not a number.. exiting\n")
        break
    end
end

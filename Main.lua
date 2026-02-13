--#1 ask the user for text 
-- then convert into all caps!

--print("Please enter some words")
--someWords = io.read()
--print(string.upper(someWords))

--#2 Ask the user for two numbers, then
-- Print the result!

--print("Enter the first number")
--numb1 = tonumber(io.read())

--while numb1 == nil do
  --print ("That's not a number! Try again.")
 -- numb1 = tonumber(io.read())
--end

--print("Enter the second number")
--numb2 = tonumber(io.read())

--while numb2 == nil do
--  print("That's not a number! Try again.")
--  numb2 = tonumber(io.read())
--end

--total = numb1 + numb2
--print("The total is" .. total)

--#3 
-- Get an unknown amount of numbers from the
--User, add them together, print out the
--results

continueVar = "y"
total = 0 
newNumb = 0

while continueVar == "y" do
  print("Enter a number")
  newNumb = tonumber(io.read())
  
  while newNumb == nil do
    print("Not a number! Try again.")
    newNumb = tonumber(io.read())
  end
  
  total = total + newNumb
  print("Do you want to enter another number? Y or N")
  continueVar = io.read()
end

print("The total is " .. total)

--#4 Have the user define a maximum number,
-- print out a random number between 0
-- and their number, have the user play
-- again or quit

continueVar = "y"
math.randomseed(os.time())
math.random() math.random() math.random()

while continueVar == "y" do 
  print("Enter a maximum value")
  maxVal = tonumber(io.read())
  while maxVal == nil do
    print("Not a number!!!!!")
    maxVal = tonumber(io.read())
  end
  randomVal = math.random(0, maxVal)
  print ("Your random number is " .. math.random(0, maxVal))
  print("Press y to do that again.")
  continueVar = io.read()
end

--#5 get a random number, if the number
-- is even print even, if it is odd 
-- print odd, do this 10 times, print out
-- how many times it was odd and how 
-- many times it was even, must use modulus %

math.randomseed(os.time())
math.random() math.random() math.random()

evenCounter = 0
oddCounter = 0

for x = 1, 10 do
  myRandoNumb = math.random(1, 100)
  if myRandoNumb % 2 == 0 then
    print("EVEN")
    evenCounter = evenCounter + 1
    else
      print("ODD")
      oddCounter = oddCounter + 1
  end
end

print ("There were  " .. evenCounter .. " Even Numbers and  " .. oddCounter .. " Odd Numbers ")
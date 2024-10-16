-- Now that we can do some things in Lua, we can do the same things lots of times. This is called looping.
-- There are a few kinds of loops in Lua, but the most common is the for loop.

-- The for loop has three parts: a starting point, stopping point, and a step.
-- The loop will start at the starting point, and then run the code inside the loop 
-- until it reaches the stopping point. The step controls how fast it will reach the
-- stopping point.

-- Here is an example of a for loop that will print the numbers 1 through 5. Notice that
-- we didn't include a step. This is because the loop will count up by 1 by default.
print("Counting from 1 to 5")

for i = 1, 5 do
    print(i)
end

-- What if we just wanted to print all the odd numbers between 1 and 10? We can use the step
-- to count by 2 instead of 1.
print("\nCounting odd numbers from 1 to 10")

for i = 1, 10, 2 do
    print(i)
end

-- What if we wanted to count backwards? Well, we can do that too by making the step negative.
print("\nCounting backwards from 5 to 1")

for i = 5, 1, -1 do
    print(i)
end


-- Another common loop is the while loop. The while loop will run the code inside the loop
-- as long as the condition is true. Here is an example of a while loop that will count from
-- 1 to 5.

print("\nCounting from 1 to 5 with a while loop")

local i = 1

while i <= 5 do
    print(i)
    i = i + 1
end

-- Note: while loops run until the condition is false. So, if you forget to increment i, the loop
-- will run forever. This is called an infinite loop. You should always make sure that the conditional
-- check will eventually be false. Otherwise your program will run forever.


-- The last loop we will cover is the repeat until loop. This loop is similar to the while loop, but
-- it will run the code inside the loop until the condition is true. Here is an example of a repeat until
-- loop that will count from 1 to 5.

print("\nCounting from 1 to 5 with a repeat until loop")

i = 1

repeat
    print(i)
    i = i + 1
until i > 5

-- The repeat until loop will always run the code inside the loop at least once, because it checks the
-- condition at the end of the loop. This is different from the while loop, which checks the condition
-- at the beginning of the loop.

-- I'll demonstrate this below:

print("\nWhile False Loop:")
while false do
    print("This will never print.")
end


print("\nRepeat Until True Loop:")
repeat
    print("This will print once.")
until true


-- Now that you know how to loop, you can do the same thing lots of times without having to write the same
-- code over and over again. This is very useful for things like drawing graphics, or processing large amounts
-- of data.

-- The last thing to learn about loops for now is the break statement. The break statement will stop the loop
-- immediately. This can be useful if you need to stop the loop early for some reason. Here is an example of
-- a loop that will count from 1 to 10, but will stop when it reaches 5.

print("\nCounting from 1 to 10, but breaking at 5")

for x = 1, 10 do
    print(x)
    if x == 5 then
        break
    end
end

-- Now that you can loop you can do something interesting at each iteration of the loop.
-- For example, let's say I wanted to know each number squared between 1 and 10, I could find that:

print("\nFinding the square of each number between 1 and 10")

for x = 1, 10 do
    print(x, "squared is", x * x)
end

-- Or, let's say I wanted to find the sum of all the numbers between 1 and 10. I could do that too:

print("\nFinding the sum of all numbers between 1 and 10")

local sum = 0

for x = 1, 10 do
    sum = sum + x
end

print("The sum of all the numbers between 1 and 10 is", sum)
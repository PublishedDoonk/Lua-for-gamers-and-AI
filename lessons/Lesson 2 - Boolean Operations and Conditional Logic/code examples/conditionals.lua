-- Make sure you have read through and run the boolean_operators.lua file before going
-- through this one, so that you have a strong understanding of boolean operations.

-- In this script, we will be using conditional logic to make decisions based on boolean values.
-- First, we'll demonstrate the if statement.

-- The if statement is used to execute a block of code if a condition is true.
if true then
    print("This will print, because the condition is true.")
end

if false then
    print("This will not print, because the condition is false.")
end


-- You can also use the operators covered in the boolean_operators.lua file to build more complicated conditional checks.
-- For example, say you need to check if a student passed a test. You could check if their score is greater than or equal to 70.

local student_score = 75

if student_score >= 70 then
    print("The student passed the test.")
end

-- You can also use the and operator to check multiple conditions at once.

local isWeekend = true
local isSunny = true

if isWeekend and isSunny then
    print("It's the weekend and it's sunny!")
end

-- You can also use the else statement to execute code if the condition is false.

local age = 16

if age >= 18 then
    print("You are old enough to vote.")
else
    print("You are not old enough to vote.")
end

-- You can also use the elseif statement to check multiple conditions, one after another.
-- For example, let's say I want to make a simple grade checker that prints out a letter
-- grade based on a student's score.


student_score = 85

if student_score >= 90 then
    print("The student got an A.")
elseif student_score >= 80 then
    print("The student got a B.")
elseif student_score >= 70 then
    print("The student got a C.")
elseif student_score >= 60 then
    print("The student got a D.")
else
    print("The student got an F.")
end
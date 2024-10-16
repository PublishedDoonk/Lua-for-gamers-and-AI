--This script demonstrates the use of boolean operators from Lesson 2.

-- setting up some variables

local isTrue = true
local isFalse = false

print("Using the and operator:")

-- using the and operator. The and operator only returns true if both of the operands are true.
print("isTrue and isFalse ", "==>", isTrue and isFalse) -- false
print("isFalse and isFalse", "==>", isFalse and isFalse) -- false
print("isFalse and isTrue ", "==>", isFalse and isTrue) -- false
print("isTrue and isTrue  ", "==>", isTrue and isTrue) -- true
print()


print("Using the or operator:")

-- using the or operator. The or operator returns true if either of the operands are true.
print("isTrue or isFalse ", "==>", isTrue or isFalse) -- true
print("isFalse or isFalse", "==>", isFalse or isFalse) -- false
print("isFalse or isTrue ", "==>", isFalse or isTrue) -- true
print("isTrue or isTrue  ", "==>", isTrue or isTrue) -- true
print()


print("Using the not operator:")

-- using the not operator. The not operator only takes one operand and returns the opposite of that operand.
-- not true == false, and not false == true

print("not isTrue  ", "==>", not isTrue) -- false
print("not isFalse ", "==>", not isFalse) -- true
print()

-- Some numerical comparisons return a boolean value as well. For example, 5 > 3 is true, and 5 < 3 is false.
-- You can also check if two numbers are equal with the == operator. 5 == 5 is true, and 5 == 3 is false.
-- You can also check if two numbers are not equal with the ~= operator. 5 ~= 3 is true, and 5 ~= 5 is false.
-- You can also use the <= and >= operators to check if a number is less than or equal to, or greater than or equal to another number.

print("Using numerical comparisons:")
print("5 > 3  ", "==>", 5 > 3) -- true
print("5 < 3  ", "==>", 5 < 3) -- false
print("5 == 5 ", "==>", 5 == 5) -- true
print("5 == 3 ", "==>", 5 == 3) -- false
print("5 ~= 3 ", "==>", 5 ~= 3) -- true
print("5 ~= 5 ", "==>", 5 ~= 5) -- false
print("5 <= 5 ", "==>", 5 <= 5) -- true
print("5 >= 5 ", "==>", 5 >= 5) -- true
print("5 <= 3 ", "==>", 5 <= 3) -- false
print("5 >= 3 ", "==>", 5 >= 3) -- true
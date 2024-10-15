-- nil is an important concept in Lua. It is a special value that represents the absence of a value.
-- When you declare a variable but don't assign a value to it, it is automatically assigned the value nil.

-- In the code below, the variable x is declared but not assigned a value.
-- When we print x, it will be nil.
local x 
print(x) -- nil

x = 12
print(x) -- now x is assigned a value, so it is no longer nil.
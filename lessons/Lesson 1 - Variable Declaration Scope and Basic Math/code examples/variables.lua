Name = "Alice" -- This is a global variable. It can be read anywhere in this code file.

function MyFunction() -- This is a function definition. It can be called anywhere in this code file after it is defined.
    local x = 13
    print(x)
    print(Name) -- Name can be read here, because it is a global variable.
end

MyFunction() -- This calls the function MyFunction. It will print 13 and Alice to the screen.
print(Name)

-- print(x) -- This would cause an error, because x is local to MyFunction. It can't be read anywhere outside of MyFunction.
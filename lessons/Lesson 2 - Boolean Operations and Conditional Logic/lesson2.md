### **Lesson 2: Boolean Operations and Conditional Logic**

In this lesson, you’ll learn how to use **boolean operations** and **conditional logic** in Lua. We’ll explore expressions that evaluate to true or false, use logical operators (`and`, `or`, `not`) to combine or negate conditions, and then dive into how to use conditional statements (`if`, `then`, `else`, `elseif`, and `end`) to control the flow of your program.

---

### **1. Boolean Operators**

As we saw in lesson 1, boolean values (`true` or `false`) can be saved as variables. Those boolean values can actually be combined in some key ways using boolean operators. Boolean operators are used to perform logical operations on expressions that evaluate to true or false. Lua supports three main boolean operators: `and`, `or`, and `not`.

#### **The `and` Operator**
- Returns `true` if **both** operands are truthy; otherwise, it returns `false`.
- In Lua, `and` returns the first falsy value if one is found, otherwise, it returns the last operand.

#### **Example: Using `and`**
```lua
print(true and true)      -- true
print(true and false)     -- false
print(5 and "Hello")      -- "Hello", because both are truthy
print(false and "Hello")  -- false, because the first operand is falsy
```

#### **The `or` Operator**
- Returns `true` if **at least one** operand is truthy; otherwise, it returns `false`.
- In Lua, `or` returns the first truthy value if one is found, otherwise, it returns the last operand.

#### **Example: Using `or`**
```lua
print(true or false)     -- true
print(false or true)     -- true
print(nil or "Default")  -- "Default", because nil is falsy and "Default" is truthy
print(false or nil)      -- nil, because both are falsy
```

#### **The `not` Operator**
- Negates the boolean value, converting `true` to `false` and `false` to `true`.
- Always returns a boolean (`true` or `false`).

#### **Example: Using `not`**
```lua
print(not true)        -- false
print(not false)       -- true
print(not 0)           -- false, because 0 is truthy
print(not nil)         -- true, because nil is falsy
```

---

### **2. Expressions that Evaluate to True or False**

In Lua, an expression can be evaluated as either **true** or **false** based on its value:

- The boolean values `true` and `false` are used directly in comparisons.
- **`nil`** and **`false`** are considered **falsy**, meaning they evaluate to `false`.
- **All other values** (including non-zero numbers, non-empty strings, and even the number `0`) are considered **truthy**, meaning they evaluate to `true`.

#### **Examples: Expressions Evaluating to True or False**
```lua
3 > 2       -- true, because 3 is greater than 2
1 == 0      -- false, because 1 is not equal to 0
nil         -- false, because nil is considered falsy
"Hello"     -- true, because only "" is a falsy string, the rest are truthy
0           -- true, because even 0 is considered truthy in Lua
```

In conditional statements, Lua uses the truthiness of expressions to determine whether to execute a block of code.

---


### **3. Conditional Statements**

Conditional statements allow you to execute certain blocks of code based on whether a condition is true or false. Lua uses `if`, `then`, `else`, `elseif`, and `end` to create these conditions.

#### **Basic `if` Statement**
- Executes a block of code if the condition is true.

#### **Example: Basic `if` Statement**
```lua
local age = 18

if age >= 18 then
    print("You are an adult.")
end
-- Output: You are an adult.
```

#### **Using `else`**
- `else` allows you to specify a block of code to execute if the condition is false.

#### **Example: `if-else` Statement**
```lua
local age = 16

if age >= 18 then
    print("You are an adult.")
else
    print("You are a minor.")
end
-- Output: You are a minor.
```

#### **Using `elseif`**
- `elseif` enables you to check multiple conditions sequentially.

#### **Example: `if-elseif-else` Statement**
```lua
local temperature = 10

if temperature > 25 then
    print("It's a hot day.")
elseif temperature > 15 then
    print("It's a warm day.")
else
    print("It's a cold day.")
end
-- Output: It's a cold day.
```

#### **Closing the Conditional Block with `end`**
- Every conditional statement in Lua must end with the `end` keyword.

---

### **4. Combining Boolean Operators with Conditional Statements**

You can combine boolean operators (`and`, `or`, `not`) with conditional statements to create more complex logic.

#### **Example: Combining Boolean Operators**
```lua
local isWeekend = true
local isHoliday = false
local temperature = 90

if (isWeekend or isHoliday) and temperature > 88 then
    print("Let's go to the beach!")
else
    print("Stay at home.")
end
-- Output: Let's go to the beach!
```

In this example:
- The condition `(isWeekend or isHoliday)` evaluates to `true` because `isWeekend` is `true`.
- Since `temperature > 25` is also `true`, the whole condition evaluates to `true`, and the program prints "Let's go to the beach!".

---

### **5. Practical Exercises**

Try solving the following exercises to practice what you've learned about boolean operations and conditional logic.

#### **Exercise 1: Exam Pass Check**
1. Write a Lua script that checks if a student has passed an exam.
2. The student passes if their score is 50 or above.
3. Print "Passed" if the score is 50 or above; otherwise, print "Failed."

#### **Solution Example**
```lua
local score = 45

if score >= 50 then
    print("Passed")
else
    print("Failed")
end
```

#### **Practice Exercise**
1. Write a script to determine if a customer is eligible for a discount.
   - The customer is eligible if they are a senior citizen (age 65 or above) **or** if they have a membership card.
2. Print "Discount applied" if the customer qualifies, otherwise print "No discount."

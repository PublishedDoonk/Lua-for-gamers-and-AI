
### **Lesson 3: Looping and Iteration**

In this lesson, you'll learn about **looping and iteration** in Lua. Loops are used to repeat a block of code multiple times, allowing you to automate repetitive tasks. Lua provides several types of loops, including `for`, `while`, and `repeat-until` loops, each with different use cases. You’ll also learn how to use the `in` keyword for iterating over tables and how to exit loops early using `break`.

---

### **1. The `for` Loop**

The `for` loop in Lua is used for **count-controlled iteration**, meaning it runs a set number of times based on specified conditions. There are two types of `for` loops in Lua:

#### **1.1 Numeric `for` Loop**
The numeric `for` loop is used when you know the exact number of iterations needed. It allows you to increment or decrement a counter variable.

**Syntax:**
```lua
for i = start, stop, step do
    -- Code block to execute
end
```
- **`start`**: The initial value of the loop counter.
- **`stop`**: The ending value for the loop counter.
- **`step`** (optional): The increment/decrement value (default is `1`).

#### **Example: Basic Numeric `for` Loop**
```lua
for i = 1, 5 do
    print("Iteration:", i)
end
-- Output:
-- Iteration: 1
-- Iteration: 2
-- Iteration: 3
-- Iteration: 4
-- Iteration: 5
```

#### **Example: Numeric `for` Loop with Step**
```lua
for i = 10, 1, -2 do
    print("Count:", i)
end
-- Output:
-- Count: 10
-- Count: 8
-- Count: 6
-- Count: 4
-- Count: 2
```

#### **1.2 Generic `for` Loop**
The generic `for` loop is used with **iterators** to loop over data structures such as tables.

---

### **2. The `while` Loop**

The `while` loop repeats a block of code **as long as a specified condition is true**. If the condition is `false` when the loop starts, the block is skipped entirely.

**Syntax:**
```lua
while condition do
    -- Code block to execute
end
```

#### **Example: Basic `while` Loop**
```lua
local counter = 1

while counter <= 5 do
    print("Counter:", counter)
    counter = counter + 1
end
-- Output:
-- Counter: 1
-- Counter: 2
-- Counter: 3
-- Counter: 4
-- Counter: 5
```

In this example, the loop runs while `counter` is less than or equal to `5`. The value of `counter` is incremented in each iteration.

---

### **3. The `repeat-until` Loop**

The `repeat-until` loop is similar to the `while` loop but **executes the code block at least once**, regardless of the condition. The condition is evaluated **after** the code block runs.

**Syntax:**
```lua
repeat
    -- Code block to execute
until condition
```

#### **Example: Basic `repeat-until` Loop**
```lua
local value = 0

repeat
    print("Value:", value)
    value = value + 1
until value > 3
-- Output:
-- Value: 0
-- Value: 1
-- Value: 2
-- Value: 3
```

In this example, the loop executes at least once and continues until `value` is greater than `3`.

---

### **4. Exiting Loops Early with `break`**

The `break` statement is used to **exit a loop before it has completed all its iterations**. It can be used in any type of loop (`for`, `while`, or `repeat-until`).

#### **Example: Using `break` in a `for` Loop**
```lua
for i = 1, 10 do
    if i == 5 then
        print("Breaking the loop at:", i)
        break
    end
    print("Iteration:", i)
end
-- Output:
-- Iteration: 1
-- Iteration: 2
-- Iteration: 3
-- Iteration: 4
-- Breaking the loop at: 5
```

In this example, the loop stops when `i` equals `5`, even though the original loop range was `1 to 10`.

#### **Example: Using `break` in a `while` Loop**
```lua
local x = 1

while x <= 10 do
    if x == 6 then
        print("Exiting loop at:", x)
        break
    end
    print("Value of x:", x)
    x = x + 1
end
-- Output:
-- Value of x: 1
-- Value of x: 2
-- Value of x: 3
-- Value of x: 4
-- Value of x: 5
-- Exiting loop at: 6
```

---

### **6. Practical Exercises**

Try solving the following exercises to practice looping and iteration.

#### **Exercise 1: Sum of Even Numbers**
1. Write a Lua script that calculates the sum of all even numbers from `1` to `20` using a `for` loop.

#### **Exercise 2: Early Exit**
1. Write a `while` loop that counts from `1` to `10`.
2. Use a `break` statement to exit the loop when the counter reaches `7`.

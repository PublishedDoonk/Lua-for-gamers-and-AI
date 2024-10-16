### **Lesson 1: Variable Declaration, Scope, and Basic Math**

In this lesson, you'll learn how to declare variables in Lua and understand the concept of **scope**, which determines where variables can be accessed within your code. You’ll also get introduced to the `nil` value, which represents the absence of a value.

---

### **1. Variable Declaration in Lua**

In Lua, variables can be declared without specifying their type. The language uses **dynamic typing**, which means the type of a variable is determined by the value assigned to it.

#### **Example: Simple Variable Declaration**
```lua
name = "John"
age = 25
isStudent = true
```

Here, Lua automatically understands that:
- `name` is a string,
- `age` is a number,
- `isStudent` is a boolean.

---

### **2. The `local` Keyword**

By default, when you declare a variable in Lua, it is **global**. This means that the variable can be accessed from anywhere in your code after it has been declared.

However, global variables can cause problems in larger programs because their values can be accidentally changed from anywhere in the code. To avoid this, you can declare variables as **local**. A **local variable** can only be accessed within the block of code where it is declared.

#### **Example: Declaring Local Variables**
```lua
local x = 10
local y = 20
```

In this example, both `x` and `y` are local variables, meaning they are only accessible within the scope they were declared in, like a function or a block of code.

---

### **3. Understanding Variable Scope**

In Lua, **scope** refers to the region of the code where a variable can be accessed. There are two types of scope:
- **Global Scope**: Variables declared without `local` can be accessed anywhere in the program after their declaration.
- **Local Scope**: Variables declared with `local` can only be accessed in the function, block, or file where they are declared.

#### **Example: Global vs. Local Scope**
```lua
x = 5  -- Global variable

function testScope()
    local y = 10  -- Local variable
    print(x)  -- Can access the global variable
    print(y)  -- Can access the local variable
end

testScope()
print(x)  -- Can access the global variable
-- print(y)  -- This will cause an error because y is local to testScope
```

In this example:
- `x` is a global variable and can be accessed both inside and outside of the `testScope` function.
- `y` is a local variable and can only be accessed within the `testScope` function. Trying to access `y` outside of the function will result in an error.

---

### **4. The `nil` Value**

In Lua, the special value `nil` is used to represent the **absence of a value**. When a variable is declared but not assigned a value, it automatically holds the value `nil`. This is Lua's way of saying "this variable has no value."

#### **Example: Using `nil`**
```lua
local z  -- z is automatically assigned nil
print(z)  -- Output: nil
```

You can also explicitly assign `nil` to a variable to clear its value:
```lua
local name = "Alice"
name = nil  -- Now the variable holds nil, meaning it has no value
print(name)  -- Output: nil
```

---

### **5. Practical Exercise**

Try writing a Lua script to practice what you've learned:

#### **Exercise 1: Local and Global Variables**
1. Create a global variable called `greeting` and assign it a string value.
2. Inside a function, create a local variable called `name` and assign it a string value.
3. Print both the `greeting` and `name` variables inside the function.
4. Try printing the `name` variable outside the function (what happens?).
5. Print the `greeting` variable outside the function.

Example:
```lua
greeting = "Hello"

function greet()
    local name = "Alice"
    print(greeting .. ", " .. name)  -- Should print "Hello, Alice"
end

greet()

-- Try printing name here
print(greeting)  -- Should print "Hello"
```

---

### **Basic Math**

Now that you can assign variables different values, you can do every programmer's favorite thing with them. MATH!
The basic math operators you'll want to know for now are add (+), subtract (-), multiply (\*), and divide (/).

Below is an example that uses each kind of arithmetic operator:

```Lua



```
# Introduction to Lua for Gamers and AI

This repository provides a comprehensive set of lesson plans designed to teach Lua, focusing on embedded systems (IoT), AI, and game development. Whether you're an absolute beginner with no prior programming experience or a seasoned developer looking to expand into Lua, these lessons offer a structured approach to learning. Starting from basic syntax and core concepts, the lessons progress to more advanced topics such as networking for IoT devices, controlling hardware with Lua, and scripting for game environments like Roblox. With practical exercises and real-world applications, this curriculum is ideal for anyone wanting to explore Lua's versatility in lightweight scripting and interactive programming.

Each lesson folder should have a lesson.md file that contains the actual lesson as well as code examples you can (and should) run your self.

## Getting Started


### **1. Installing Lua**

To get started with Lua, you will need to download and install it.

#### **Option 1: Using LuaBinaries (For Windows, macOS, Linux)**

The simplest way to get Lua running on most systems is to download the pre-built binaries.

1. **Go to the official Lua site**: [https://www.lua.org/download.html](https://www.lua.org/download.html).
2. **Choose the latest stable version** (e.g., Lua 5.4.x).
3. **For Windows**: Download the **Windows Binaries** from [LuaBinaries](https://luabinaries.sourceforge.net/download.html) (under "Executables"). Choose the appropriate zip for your system (32-bit or 64-bit).
   - Extract the zip file and place the Lua binaries (`lua.exe`, `luac.exe`, etc.) into a directory.
   - Add this directory to your system's **PATH** so you can run Lua from the terminal. You can do this in your environment variables (Windows) or through the terminal (macOS/Linux).

4. **For macOS/Linux**: You can use **Homebrew** (macOS) or your package manager (Linux):
   - macOS: Run `brew install lua`.
   - Linux (Ubuntu/Debian): Run `sudo apt install lua5.4`.
   - Linux (Fedora/CentOS): Run `sudo dnf install lua`.

#### **Option 2: Building Lua from Source (For All Systems)**

If you want to compile Lua from source, follow these steps:

1. Download the Lua source code from the official website: [Lua Download](https://www.lua.org/download.html).
2. Extract the archive and open a terminal in the extracted directory.
3. Run the following commands:
   - **Linux/macOS**: 
     ```bash
     make linux test  # For Linux
     make macosx test  # For macOS
     ```
   - **Windows**: You’ll need a compiler like MinGW or MSVC to build it.
     - Follow the instructions in the `README` file of the Lua source for Windows.

This will compile Lua, and you can move the `lua` binary into your system's PATH.

---

### **2. Setting Up Visual Studio Code (VS Code)**

VS Code is an excellent editor for Lua development, and you can enhance it with Lua-specific extensions.

#### **Steps to Set Up VS Code:**

1. **Install VS Code**: If you don’t already have it, download and install VS Code from [https://code.visualstudio.com/](https://code.visualstudio.com/).

2. **Install Lua Extension**:
   - Open VS Code.
   - Go to the **Extensions** view by clicking on the Extensions icon in the Activity Bar on the side of the window or pressing `Ctrl+Shift+X`.
   - Search for **Lua**.
   - Install **“Lua”** by sumneko or another preferred extension. This extension provides syntax highlighting, IntelliSense, and other useful Lua development tools.

3. **Setting up Lua in VS Code**:
   - Open the **Command Palette** in VS Code (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS) and type "Preferences: Open Settings (JSON)".
   - Add the following settings (adjust the path to Lua based on where you installed Lua):
     ```json
     "lua.runtime.version": "Lua 5.4",
     "lua.runtime.path": "C:/path/to/lua",  // Set this to where Lua is installed.
     ```

4. **Run Lua Scripts in VS Code**:
   - Open a folder in VS Code where you'll store your Lua scripts.
   - Create a Lua file (`.lua`). For example, `hello.lua` with the following content:
     ```lua
     print("Hello, Lua!")
     ```
   - You can run this script directly in the terminal inside VS Code by typing:
     ```bash
     lua hello.lua
     ```

---

### **3. Testing Your Lua Installation**

To ensure that Lua is correctly installed and running, open a terminal (Windows Command Prompt, PowerShell, or Terminal on macOS/Linux) and type:

```bash
lua -v
```

This should return the version of Lua that you installed, something like:

```
Lua 5.4.3  Copyright (C) 1994-2020 Lua.org, PUC-Rio
```

---

### **4. Writing and Running Your First Lua Program**

Now that Lua is installed and VS Code is set up, let's write your first Lua program.

1. **Create a new Lua file**: In VS Code, create a new file called `first.lua`.
2. **Write a simple Lua script**:
   ```lua
   -- first.lua
   print("Hello, World from Lua!")
   ```
3. **Run the script**:
   - Open a terminal in VS Code.
   - Run the Lua script using:
     ```bash
     lua first.lua
     ```

   This should output:
   ```
   Hello, World from Lua!
   ```

---

### **5. Debugging Lua in VS Code**

VS Code supports debugging Lua scripts via extensions:

1. **Install the Lua Debug Extension**:
   - In VS Code, go to the Extensions view (`Ctrl+Shift+X`).
   - Search for **"Lua Debug"** and install it.

2. **Set Up a Debug Configuration**:
   - Open the Debug panel (`Ctrl+Shift+D`).
   - Click on **"Create a launch.json file"**.
   - Select **"Lua"** as the environment.
   - A basic configuration should appear like this:
     ```json
     {
       "version": "0.2.0",
       "configurations": [
         {
           "name": "Lua",
           "type": "lua",
           "request": "launch",
           "program": "${workspaceFolder}/first.lua",
           "cwd": "${workspaceFolder}",
           "luaPath": "/usr/local/bin/lua"
         }
       ]
     }
     ```
   - Adjust the `"luaPath"` based on your Lua installation path.

3. **Run the Debugger**:
   - Set a breakpoint in your Lua script by clicking in the margin next to a line number.
   - Start the debugger by pressing **F5** or by clicking the green play button in the Debug panel.

---

### **6. Managing Lua Packages with LuaRocks**

Lua has a package manager called **LuaRocks**, which helps you install and manage libraries for Lua.

1. **Install LuaRocks**:
   - Visit the LuaRocks website: [https://luarocks.org/](https://luarocks.org/).
   - Download and install LuaRocks following their instructions.

2. **Installing Packages**:
   - Use LuaRocks to install Lua libraries. For example, to install the **Penlight** library (a collection of useful utilities), run:
     ```bash
     luarocks install penlight
     ```

3. **Using Installed Packages**:
   - Once installed, you can require libraries in your Lua scripts:
     ```lua
     local pl = require("pl")
     print(pl.utils.split("Hello World", " "))
     ```

---

### **7. (Optional) Using LuaJIT for Enhanced Performance**

For more advanced uses where performance is critical, **LuaJIT** is an alternative Lua implementation that compiles Lua code to native machine code for faster execution.

1. **Install LuaJIT**:
   - Download LuaJIT from [http://luajit.org/download.html](http://luajit.org/download.html).
   - Follow the installation instructions provided on the website.

2. **Running LuaJIT**:
   - Use `luajit` in place of `lua` in the terminal to run your scripts with the JIT compiler.

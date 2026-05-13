# CUBEUI-Library v0.30
A UI library for roblox
use
```luau
local CUBEUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh404vn/CUBEgui-Library/refs/heads/main/CUBEguiBase.luau"))()
```


# Function
We just only have 7 function, 3 variable and 1 editable variable
```luau
local CUBEUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh404vn/CUBEgui-Library/refs/heads/main/CUBEguiBase.luau"))()

CUBEUI.MainFrame -- the MainFrame Instance
CUBEUI.Screen -- the ScreenUI Instance
CHBEUI.MainFrameChild -- get a table of MainFrame's child

CUBEUI.BlackList = {} -- editable variable(auto kick if they in black list)(only userName)
CUBEUI.BlackListID = {} -- The ID version of BlackList

CUBEUI:CreateFrame(Parent, Name, Pos, Size, AnchorPoint)
CUBEUI:CreateBtn(Parent, Name, Pos, Size, AnchorPoint, Func)        -- i alway forgor to change this both func name
CUBEUI:CreateTextBox(Parent, Name, Pos, Size, AnchorPoint, PlaceHolderText, ClearOnFocus)
CUBEUI:CreateScroll(Parent, Name, Pos, Size, AnchorPoint, AutoList)
CUBEUI:AddTextLabel(Target, Name, Text, TextSize) -- TextSize must > 10 or the func automatic change TextSize To AutoScaled
CUBEUI:CreateToggle(Parent, Name, Pos, Size, AnchorPoint, Default, Func)
CUBEUI:CreateDropdown(Parent, Name, Pos, Size, AnchorPoint, Options, Default, Func)  -- Options had format like table
CUBEUI:CreateToggleTBtn(Parent, Name, Pos, Size, Anchor, TextTrue, TextFalse, Default, Func) -- a toggle btn with text on it
```

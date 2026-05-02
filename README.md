# CUBEgui-Library
A UI library for roblox
use
```luau
local CUBEUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh404vn/CUBEgui-Library/refs/heads/main/CUBEguiBase.luau"))()
```


# Function
We just only have 5 function and 1 variable
```luau
local CUBEUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh404vn/CUBEgui-Library/refs/heads/main/CUBEguiBase.luau"))()

CUBEUI.MainFrame -- the MainFrame Instance

CUBEUI:CreateFrame(Parent, Name, Pos, Size, AnchorPoint)
CUBEUI:CreateBtn(Parent, Name, Pos, Size, AnchorPoint, Func)        -- i alway forgor to change this both func name
CUBEUI:CreateTextBox(Parent, Name, Pos, Size, AnchorPoint, PlaceHolderText, ClearOnFocus)
CUBEUI:CreateScroll(Parent, Name, Pos, Size, AnchorPoint, AutoList)
CUBEUI:AddTextLabel(Target, Name, Text, TextSize) -- TextSize must > 10 or the func automatic change TextSize To AutoScaled
```
We are still on creating more function for you just wait

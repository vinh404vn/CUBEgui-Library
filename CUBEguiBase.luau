--[[
      CUBE UI library
      Free to change
]]--


local length = 10
local t = {}
for i = 1, length do
    table.insert(t, string.char(math.random(97, 122)))
end
local randomString = table.concat(t)
local Screen = Instance.new("ScreenUI")
Screen.Name = randomString
Screen.Parent = game:GetService("CoreGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "CUBEFrame"
MainFrame.Parent = Screen
MainFrame.Size = (0.3,0,0.3,0)
MainFrame.Position = UDim2.new(0,0,0,0)
MainFrame.AnchorPoint = 0.5, 0.5
MainFrame.BackgroundColor3 = Color3.new(0,0,0)
MainFrame.BorderColor3 = Color3.fromRGB(100,255,100)
MainFrame.BorderSizePixel = 2
MainFrame.Active = true

local dragging = false
local dragInput, dragStart, startPos

local function updateInput(input)
	local delta = input.Position - dragStart
	MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateInput(input)
	end
end)

local p = {}

function p:CreateFrame(Parent,Name, Pos, Size, Anchor)
  local NewFrame = Instance.new("Frame", Parent)
  NewFrame.Name = Name
  NewFrame.Position = Pos
  NewFrame.Size = Size
  NewFrame.AnchorPoint = Anchor
  NemFrame.BackgroundColor3 = Color3.New(0,0,0)
  NewFrame.BorderColor3 = Color3.fromRGB(100,255,100)
  NewFrame.BorderSizePixel = 2
  NewFrame.Active = true
end

function p:CreateBtn(Parent, Name, Pos, Size, Anchor, Func)
  local NewBtn = Instance.new("TextButton", Parent)
  NewBtn.Name = Name
  NewBtn.Position = Pos
  NewBtn.Size = Size
  NewBtn. AnchorPoint = Anchor
  NewBtn.BackgroundColor3 = Color3.new(0,0,0)
  NewBtn.Border.Color3 = Color3.fromRGB(100,255,100)
  NewBtn.BorderSizePixel = 2
  NewBtn.Active = true
  NewBtn.MouseButton1Click:Connect(Func)
end

function p:CreateTextBox(Parent, Name, Pos, Size, Anchor, PHolder, Confocus)
  local NewTBox = Instance.new("TextBox", Parent)
  NewTBox.Name = Name
  NewTBox.Position = Pos
  NewTBox.Size = Size
  NewTBox.Anchor = Anchor
  NewTBox.PlaceholderText = PHolder
  NewTBox.BackgroundColor3 = Color3.new(0,0,0)
  NewTBox.BorderColor3 = Color3.fromRGB(100,255,100)
  NewTBox.BorderSizePixel = 2
  NewTBox.ClearTextOnFocus = Confocus
end

function p:CreateScoll(Parent, Name, Pos, Size, Anchor, Autolist)
  local NewScoll = Instance.new("ScollFrame", Parent)
  NewScoll.Name = Name
  NewScoll.Position = Pos
  NewScoll.Size = Size
  NewScoll.Anchor = Anchor
  NewScoll.BackgroundColor3 = Color3.new(0,0,0)
  NewScoll.BorderColor3 = Color3.fromRGB(100,255,100)
  NewScoll.BorderSizePixel = 2
  NewScoll.Active = true
  if Autolist then
    local UiList = Instance.new("UIScollList")
    UiList.Parent = NewScroll
  end
end

return p
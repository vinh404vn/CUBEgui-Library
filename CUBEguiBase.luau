--[[
      CUBE UI Library - Classic c00lkid Style
      Feel like C00lkid now?
]]--

-- Random ScreenGui Name
local length = 200
local t = {}
for i = 1, length do
    table.insert(t, string.char(math.random(97, 122)))
end
local randomString = table.concat(t)

local Screen = Instance.new("ScreenGui")
Screen.Name = randomString
Screen.Parent = game:GetService("CoreGui")
Screen.ResetOnSpawn = false
Screen.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Name = "CUBEFrame"
MainFrame.Parent = Screen
MainFrame.Size = UDim2.new(0.32, 0, 0.48, 0)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
MainFrame.BorderSizePixel = 2
MainFrame.Active = true
MainFrame.Draggable = true

-- Title Bar
local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 30)
TitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TitleBar.BorderColor3 = Color3.fromRGB(100, 255, 100)
TitleBar.BorderSizePixel = 2
TitleBar.Parent = MainFrame

local TitleText = Instance.new("TextLabel")
TitleText.Name = "Title"
TitleText.Size = UDim2.new(1, -80, 1, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "CUBE"
TitleText.TextColor3 = Color3.fromRGB(100, 255, 100)
TitleText.Font = Enum.Font.Code
TitleText.TextScaled = true
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = TitleBar

local CloseBtn = Instance.new("TextButton")
CloseBtn.Name = "Close"
CloseBtn.Size = UDim2.new(0, 70, 1, 0)
CloseBtn.Position = UDim2.new(1, -70, 0, 0)
CloseBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CloseBtn.BorderColor3 = Color3.fromRGB(255, 60, 60)
CloseBtn.BorderSizePixel = 2
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
CloseBtn.Font = Enum.Font.Code
CloseBtn.TextScaled = true
CloseBtn.Parent = TitleBar
CloseBtn.MouseButton1Click:Connect(function()
    Screen:Destroy()
end)

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Size = UDim2.new(1, 0, 1, -30)
Content.Position = UDim2.new(0, 0, 0, 30)
Content.BackgroundTransparency = 1
Content.Parent = MainFrame

local p = {}
p.MainFrame = MainFrame
p.Content = Content
p.ScreenGui = Screen
p.TitleText = TitleText

-- ==================== CREATE FRAME ====================
function p:CreateFrame(Parent, Name, Pos, Size, Anchor)
    local NewFrame = Instance.new("Frame")
    NewFrame.Name = Name or "Frame"
    NewFrame.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewFrame.Size = Size or UDim2.new(1, 0, 1, 0)
    NewFrame.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    NewFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewFrame.BorderSizePixel = 2
    NewFrame.Active = true
    NewFrame.Parent = Parent or p.Content
    return NewFrame
end

-- ==================== CREATE BUTTON ====================
function p:CreateBtn(Parent, Name, Pos, Size, Anchor, Func)
    local NewBtn = Instance.new("TextButton")
    NewBtn.Name = Name or "Button"
    NewBtn.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    NewBtn.Size = Size or UDim2.new(0.95, 0, 0, 35)
    NewBtn.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    NewBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    NewBtn.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewBtn.BorderSizePixel = 2
    NewBtn.Text = Name or "Button"
    NewBtn.TextColor3 = Color3.new(1, 1, 1)
    NewBtn.TextScaled = true
    NewBtn.Font = Enum.Font.Code
    NewBtn.Parent = Parent or p.Content
    
    if Func then
        NewBtn.MouseButton1Click:Connect(Func)
    end
    
    return NewBtn
end

-- ==================== CREATE TEXTBOX ====================
function p:CreateTextBox(Parent, Name, Pos, Size, Anchor, Placeholder, ClearOnFocus)
    local NewTBox = Instance.new("TextBox")
    NewTBox.Name = Name or "TextBox"
    NewTBox.Text = ""
    NewTBox.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    NewTBox.Size = Size or UDim2.new(0.95, 0, 0, 35)
    NewTBox.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    NewTBox.PlaceholderText = Placeholder or "Type here..."
    NewTBox.ClearTextOnFocus = ClearOnFocus ~= false
    NewTBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    NewTBox.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewTBox.BorderSizePixel = 2
    NewTBox.TextColor3 = Color3.new(1, 1, 1)
    NewTBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
    NewTBox.TextScaled = true
    NewTBox.Font = Enum.Font.Code
    NewTBox.Parent = Parent or p.Content
    return NewTBox
end

-- ==================== CREATE SCROLL ====================
function p:CreateScroll(Parent, Name, Pos, Size, Anchor, AutoList)
    local NewScroll = Instance.new("ScrollingFrame")
    NewScroll.Name = Name or "Scroll"
    NewScroll.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewScroll.Size = Size or UDim2.new(1, 0, 1, 0)
    NewScroll.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewScroll.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    NewScroll.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewScroll.BorderSizePixel = 2
    NewScroll.ScrollBarThickness = 8
    NewScroll.ScrollBarImageColor3 = Color3.fromRGB(100, 255, 100)
    NewScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    NewScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    NewScroll.Parent = Parent or p.Content

    if AutoList then
        local UiList = Instance.new("UIListLayout")
        UiList.SortOrder = Enum.SortOrder.LayoutOrder
        UiList.Padding = UDim.new(0, 5)
        UiList.Parent = NewScroll
    end

    return NewScroll
end

-- ==================== TEXT LABEL ====================
function p:AddTextLabel(Target, Name, Text, TextSize)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Name = Name or "Label"
    TextLabel.Size = UDim2.new(1, -10, 0, 25)
    TextLabel.Position = UDim2.new(0, 5, 0, 0)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = Text or ""
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.Font = Enum.Font.Code
    TextLabel.TextSize = TextSize or 18
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.Parent = Target or p.Content
    return TextLabel
end

return p

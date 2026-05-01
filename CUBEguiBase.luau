--[[
      CUBE UI Library
      Free to change
]]--

local length = 10
local t = {}
for i = 1, length do
    table.insert(t, string.char(math.random(97, 122)))
end
local randomString = table.concat(t)

local Screen = Instance.new("ScreenGui")
Screen.Name = randomString
Screen.Parent = game:GetService("CoreGui")
Screen.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "CUBEFrame"
MainFrame.Parent = Screen
MainFrame.Size = UDim2.new(0.3, 0, 0.4, 0)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
MainFrame.BorderSizePixel = 2
MainFrame.Active = true
MainFrame.Draggable = true

local p = {}

function p:CreateFrame(Parent, Name, Pos, Size, Anchor)
    local NewFrame = Instance.new("Frame")
    NewFrame.Name = Name or "Frame"
    NewFrame.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewFrame.Size = Size or UDim2.new(1, 0, 1, 0)
    NewFrame.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    NewFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewFrame.BorderSizePixel = 2
    NewFrame.Active = true
    NewFrame.Parent = Parent
    return NewFrame
end

function p:CreateBtn(Parent, Name, Pos, Size, Anchor, Func)
    local NewBtn = Instance.new("TextButton")
    NewBtn.Name = Name or "Button"
    NewBtn.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewBtn.Size = Size or UDim2.new(0.5, 0, 0.1, 0)
    NewBtn.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewBtn.BackgroundColor3 = Color3.new(0, 0, 0)
    NewBtn.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewBtn.BorderSizePixel = 2
    NewBtn.Text = Name or "Button"
    NewBtn.TextColor3 = Color3.new(1, 1, 1)
    NewBtn.Parent = Parent
    
    if Func then
        NewBtn.MouseButton1Click:Connect(Func)
    end
    
    return NewBtn
end

function p:CreateTextBox(Parent, Name, Pos, Size, Anchor, Placeholder, ClearOnFocus)
    local NewTBox = Instance.new("TextBox")
    NewTBox.Name = Name or "TextBox"
    NewTBox.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewTBox.Size = Size or UDim2.new(0.8, 0, 0.1, 0)
    NewTBox.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewTBox.PlaceholderText = Placeholder or ""
    NewTBox.ClearTextOnFocus = ClearOnFocus ~= false
    NewTBox.BackgroundColor3 = Color3.new(0, 0, 0)
    NewTBox.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewTBox.BorderSizePixel = 2
    NewTBox.TextColor3 = Color3.new(1, 1, 1)
    NewTBox.Parent = Parent
    return NewTBox
end

function p:CreateScroll(Parent, Name, Pos, Size, Anchor, AutoList)
    local NewScroll = Instance.new("ScrollingFrame")
    NewScroll.Name = Name or "Scroll"
    NewScroll.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewScroll.Size = Size or UDim2.new(1, 0, 0.8, 0)
    NewScroll.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewScroll.BackgroundColor3 = Color3.new(0, 0, 0)
    NewScroll.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewScroll.BorderSizePixel = 2
    NewScroll.ScrollBarThickness = 6
    NewScroll.Parent = Parent

    if AutoList then
        local UiList = Instance.new("UIListLayout")
        UiList.SortOrder = Enum.SortOrder.LayoutOrder
        UiList.Padding = UDim.new(0, 5)
        UiList.Parent = NewScroll
    end

    return NewScroll
end

return p

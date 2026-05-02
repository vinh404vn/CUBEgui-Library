--[[
      CUBE UI Library
      Feel like C00lkid now?
      IHateTheMotherFuckerTitle
]]--

-- Random ScreenGui Name
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
Screen.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Name = "CUBEFrame"
MainFrame.Parent = Screen
MainFrame.Size = UDim2.new(0.32, 0, 0.45, 0)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)   -- đen đậm kiểu classic
MainFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
MainFrame.BorderSizePixel = 2
MainFrame.Active = true
MainFrame.Draggable = true

local p = {}

p.MainFrame = MainFrame
p.ScreenGui = Screen

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
    NewFrame.Parent = Parent
    return NewFrame
end

-- ==================== CREATE BUTTON ====================
function p:CreateBtn(Parent, Name, Pos, Size, Anchor, Func)
    local NewBtn = Instance.new("TextButton")
    NewBtn.Name = Name or "Button"
    NewBtn.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewBtn.Size = Size or UDim2.new(0.95, 0, 0.08, 0)
    NewBtn.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    NewBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    NewBtn.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewBtn.BorderSizePixel = 2
    NewBtn.Text = Name or "Button"
    NewBtn.TextColor3 = Color3.new(1, 1, 1)
    NewBtn.TextScaled = true
    NewBtn.Font = Enum.Font.Code
    NewBtn.Parent = Parent
    NewBtn.TextXAlignment = Enum.TextXAlignement = 2
    NewBtn.TextYAlignment = Enum.TextYAlignement = 2
    
    if Func then
        NewBtn.MouseButton1Click:Connect(Func)
    end
    
    return NewBtn
end

-- ==================== CREATE TEXTBOX ====================
function p:CreateTextBox(Parent, Name, Pos, Size, Anchor, Placeholder, ClearOnFocus)
    local NewTBox = Instance.new("TextBox")
    NewTBox.Name = Name or "TextBox"
    NewTBox.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewTBox.Size = Size or UDim2.new(0.95, 0, 0.08, 0)
    NewTBox.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    NewTBox.PlaceholderText = Placeholder or "Type here..."
    NewTBox.ClearTextOnFocus = ClearOnFocus ~= false
    NewTBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    NewTBox.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewTBox.BorderSizePixel = 2
    NewTbox.Text = ""
    NewTBox.TextColor3 = Color3.new(1, 1, 1)
    NewTBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
    NewTBox.TextScaled = true
    NewTBox.Font = Enum.Font.Code
    NewTBox.TextXAlignment = Enum.TextXAlignement = 2
    NewTBox.TextYAlignment = Enum.TextYAlignement = 2
    NewTBox.Parent = Parent
    return NewTBox
end

-- ==================== CREATE SCROLLING FRAME ====================
function p:CreateScroll(Parent, Name, Pos, Size, Anchor, AutoList)
    local NewScroll = Instance.new("ScrollingFrame")
    NewScroll.Name = Name or "Scroll"
    NewScroll.Position = Pos or UDim2.new(0, 0, 0, 0)
    NewScroll.Size = Size or UDim2.new(1, 0, 0.85, 0)
    NewScroll.AnchorPoint = Anchor or Vector2.new(0, 0)
    NewScroll.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    NewScroll.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewScroll.BorderSizePixel = 2
    NewScroll.ScrollBarThickness = 8
    NewScroll.ScrollBarImageColor3 = Color3.fromRGB(100, 255, 100)
    NewScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    NewScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    NewScroll.Parent = Parent

    if AutoList then
        local UiList = Instance.new("UIListLayout")
        UiList.SortOrder = Enum.SortOrder.LayoutOrder
        UiList.Padding = UDim.new(0, 4)
        UiList.Parent = NewScroll
    end

    return NewScroll
end

-- ==================== TEXT LABEL ==========================
function p:AddTextLabel(Target, Name, Text, TextSize)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Name = Name
    TextLabel.Text = Text
    TextLabel.Font = Enum.Font.Code
    TextLabel.TextSize = TextSize
    TextLabel.TextXAlignment = Enum.TextXAlignement = 2
    TextLabel.TextYAlignment = Enum.TextYAlignement = 2
    if TextSize <= 10 then
        TextLabel.Scaled = true
        TextLabel.TextSize = 20
    end
    TextLabel.Parent = Target
end


return p

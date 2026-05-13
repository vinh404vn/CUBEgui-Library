--[[
      CUBE UI Library v0.39
      Feel like C00lkid now?
]]--
--[[ ##UPDATE LOG##
      Add New Func and new editable var
      nothings left
]]--

local length = 10
local t = {}
for i = 1, length do
    table.insert(t, string.char(math.random(97, 122)))
end
local randomString = table.concat(t)

local plr = game.Players.LocalPlayer

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
    NewBtn.TextXAlignment = Enum.TextXAlignment.Center
    NewBtn.TextYAlignment = Enum.TextYAlignment.Center
    NewBtn.Parent = Parent
    
    if Func then
        NewBtn.MouseButton1Click:Connect(Func)
    end
    
    return NewBtn
end

-- ==================== CREATE TEXTBOX ====================
function p:CreateTextBox(Parent, Name, Pos, Size, Anchor, Placeholder, ClearOnFocus)
    local NewTBox = Instance.new("TextBox")
    NewTBox.Name = Name or "TextBox"
    NewTBox.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    NewTBox.Size = Size or UDim2.new(0.95, 0, 0, 35)
    NewTBox.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    NewTBox.PlaceholderText = Placeholder or "Type here..."
    NewTBox.ClearTextOnFocus = ClearOnFocus ~= false
    NewTBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    NewTBox.BorderColor3 = Color3.fromRGB(100, 255, 100)
    NewTBox.BorderSizePixel = 2
    NewTBox.Text = ""
    NewTBox.TextColor3 = Color3.new(1, 1, 1)
    NewTBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 140)
    NewTBox.TextScaled = true
    NewTBox.Font = Enum.Font.Code
    NewTBox.TextXAlignment = Enum.TextXAlignment.Center
    NewTBox.TextYAlignment = Enum.TextYAlignment.Center
    NewTBox.Parent = Parent
    return NewTBox
end

-- ==================== CREATE SCROLL ====================
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

-- ==================== TEXT LABEL ====================
function p:AddTextLabel(Target, Name, Text, TextSize)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Name = Name or "Label"
    TextLabel.Size = UDim2.new(1, 0, 0, 30)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = Text or ""
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.Font = Enum.Font.Code
    TextLabel.TextSize = TextSize or 18
    TextLabel.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel.TextYAlignment = Enum.TextYAlignment.Center
    TextLabel.Parent = Target
    return TextLabel
end

-- ==================== TOGGLE ====================
function p:CreateToggle(Parent, Name, Pos, Size, Anchor, Default, Func)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.Name = Name or "Toggle"
    ToggleFrame.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    ToggleFrame.Size = Size or UDim2.new(0.95, 0, 0, 35)
    ToggleFrame.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ToggleFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
    ToggleFrame.BorderSizePixel = 2
    ToggleFrame.Parent = Parent

    local ToggleLabel = Instance.new("TextLabel")
    ToggleLabel.Size = UDim2.new(0.7, 0, 1, 0)
    ToggleLabel.BackgroundTransparency = 1
    ToggleLabel.Text = Name or "Toggle"
    ToggleLabel.TextColor3 = Color3.new(1, 1, 1)
    ToggleLabel.Font = Enum.Font.Code
    ToggleLabel.TextScaled = true
    ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
    ToggleLabel.Parent = ToggleFrame

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0.25, 0, 0.7, 0)
    ToggleBtn.Position = UDim2.new(0.72, 0, 0.15, 0)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ToggleBtn.BorderColor3 = Default and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 0, 0)
    ToggleBtn.BorderSizePixel = 2
    ToggleBtn.Text = Default and "ON" or "OFF"
    ToggleBtn.TextColor3 = Color3.new(255, 255, 255)
    ToggleBtn.Font = Enum.Font.Code
    ToggleBtn.TextScaled = true
    ToggleBtn.Parent = ToggleFrame

    local toggled = Default or false

    Func(toggled)

    ToggleBtn.MouseButton1Click:Connect(function()
        toggled = not toggled
        ToggleBtn.BorderColor3 = toggled and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 0, 0)
        ToggleBtn.Text = toggled and "ON" or "OFF"
        if Func then
            Func(toggled)
        end
    end)

    return ToggleFrame
end

-- ==================== DROPDOWN ====================
function p:CreateDropdown(Parent, Name, Pos, Size, Anchor, Options, Default, Func)
    local DropdownFrame = Instance.new("Frame")
    DropdownFrame.Name = Name or "Dropdown"
    DropdownFrame.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    DropdownFrame.Size = Size or UDim2.new(0.95, 0, 0, 35)
    DropdownFrame.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    DropdownFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    DropdownFrame.BorderColor3 = Color3.fromRGB(100, 255, 100)
    DropdownFrame.BorderSizePixel = 2
    DropdownFrame.Parent = Parent

    local SelectedText = Instance.new("TextButton")
    SelectedText.Size = UDim2.new(1, 0, 1, 0)
    SelectedText.BackgroundTransparency = 1
    SelectedText.Text = tostring(Default or (Options and Options[1]) or "Select...")
    SelectedText.TextColor3 = Color3.new(1, 1, 1)
    SelectedText.Font = Enum.Font.Code
    SelectedText.TextScaled = true
    SelectedText.Parent = DropdownFrame

    -- Container cho menu dropdown
    local DropdownContainer = Instance.new("Frame")
    DropdownContainer.Name = "DropdownContainer"
    DropdownContainer.Size = UDim2.new(1, 0, 0, 160)
    DropdownContainer.Position = UDim2.new(0, 0, 1, 5)
    DropdownContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    DropdownContainer.BorderColor3 = Color3.fromRGB(100, 255, 100)
    DropdownContainer.BorderSizePixel = 2
    DropdownContainer.Visible = false
    DropdownContainer.ZIndex = 10
    DropdownContainer.Parent = DropdownFrame

    local Scroll = Instance.new("ScrollingFrame")
    Scroll.Size = UDim2.new(1, -4, 1, -4)
    Scroll.Position = UDim2.new(0, 2, 0, 2)
    Scroll.BackgroundTransparency = 1
    Scroll.BorderSizePixel = 0
    Scroll.ScrollBarThickness = 6
    Scroll.ScrollBarImageColor3 = Color3.fromRGB(100, 255, 100)
    Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    Scroll.CanvasSize = UDim2.new(0,0,0,0)
    Scroll.ZIndex = 10
    Scroll.Parent = DropdownContainer

    local UiList = Instance.new("UIListLayout")
    UiList.SortOrder = Enum.SortOrder.LayoutOrder
    UiList.Padding = UDim.new(0, 2)
    UiList.Parent = Scroll

    local isOpen = false

    SelectedText.MouseButton1Click:Connect(function()
        isOpen = not isOpen
        DropdownContainer.Visible = isOpen
    end)

    if Options then
        for _, option in ipairs(Options) do
            local displayName = typeof(option) == "Instance" and option.Name or tostring(option)
            
            local Item = Instance.new("TextButton")
            Item.Size = UDim2.new(1, 0, 0, 30)
            Item.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            Item.BorderColor3 = Color3.fromRGB(100, 255, 100)
            Item.BorderSizePixel = 1
            Item.Text = displayName
            Item.TextColor3 = Color3.new(1, 1, 1)
            Item.Font = Enum.Font.Code
            Item.TextScaled = true
            Item.ZIndex = 10
            Item.Parent = Scroll

            Item.MouseButton1Click:Connect(function()
                SelectedText.Text = displayName
                isOpen = false
                DropdownContainer.Visible = false
                if Func then
                    Func(option)
                end
            end)
        end
    end

    return DropdownFrame
end

-- ==================== TOGGLE TEXT BUTTON ====================
function p:CreateToggleTBtn(Parent, Name, Pos, Size, Anchor, TextT, TextF, Default, Func)
    local TextBtn = Instance.new("TextButton")
    TextBtn.Name = Name or "ToggleBtn"
    TextBtn.Position = Pos or UDim2.new(0.5, 0, 0, 0)
    TextBtn.Size = Size or UDim2.new(0.95, 0, 0, 35)
    TextBtn.AnchorPoint = Anchor or Vector2.new(0.5, 0)
    TextBtn.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    TextBtn.BorderColor3 = Color3.fromRGB(100, 255, 100)
    TextBtn.BorderSizePixel = 2
    TextBtn.Font = Enum.Font.Code
    TextBtn.TextScaled = true
    TextBtn.Parent = Parent

    local Value = Default or false
    TextBtn.Text = Value and (TextT or "ON") or (TextF or "OFF")

    if Func then
        Func(Value)
    end

    TextBtn.MouseButton1Click:Connect(function()
        Value = not Value
        TextBtn.Text = Value and (TextT or "ON") or (TextF or "OFF")
        if Func then
            Func(Value)
        end
    end)

    return TextBtn
end

-- ==================== Variables ====================
p.MainFrameChild = MainFrame:GetChildren()
p.BlackList = {}
p.BlackListID = {}

if table.find(p.BlackList, plr.Name) then
    plr:Kick("You are in BlackList")
end

if table.find(p.BlackListID, plr.UserID) then
    plr:Kick("Your ID are in BlackList")
end

return p

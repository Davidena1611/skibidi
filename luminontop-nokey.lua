--[[ 
    HỆ THỐNG GETKEY LUMINON - MATRIX NEON EDITION (MÃ HÓA BẢO MẬT)
    LINK GET KEY 24H: https://link4m.org/ioFqWh
    LINK GET KEY VĨNH VIỄN: https://link4m.org/ioFqWh
]]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CopyBtn24h = Instance.new("TextButton")
local CopyBtnPermanent = Instance.new("TextButton")
local SubmitBtn = Instance.new("TextButton")
local NoteLabel = Instance.new("TextLabel")

-- Cấu hình ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Luminon_GetKey_UI"
ScreenGui.ResetOnSpawn = false

-- Hàm giải mã động Key và Script
local function _decode(b)
    local s = {}
    for i = 1, #b do s[i] = string.char(b[i]) end
    return table.concat(s)
end

-- Dữ liệu bảo mật mã hóa chuỗi Byte
local _kData = {108,117,109,105,110,111,110,46,116,111,112,95,103,97,103,50,71,115,84,112,102,70,97,78,114,99,117,113,69,78,74,121,68,110,79,104,114,81,107,81,75,72,86,82}
local _sData = {104,116,116,112,115,58,47,47,114,97,119,115,99,114,105,112,116,115,46,110,101,116,47,114,97,119,47,71,114,111,119,45,97,45,71,97,114,100,101,110,45,50,45,76,117,109,105,110,45,72,117,98,45,50,51,53,56,53,55}

-- Hàm tạo THÔNG BÁO CHỮ ĐỎ NHẸ RÕ NÉT khi người chơi bấm sao chép
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 500, 0, 50)
    Label.Position = UDim2.new(0.5, -250, 0.22, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 115, 115) -- Màu đỏ nhẹ sắc nét
    Label.Text = text
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 25
    Label.TextStrokeTransparency = 0.4
    Label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    task.spawn(function()
        task.wait(3.5)
        for i = 0, 1, 0.1 do
            Label.TextTransparency = i
            Label.TextStrokeTransparency = 0.4 + (i * 0.6)
            task.wait(0.05)
        end
        NotifyGui:Destroy()
    end)
end

-- Khung Menu Chính (#120E1E - Tím đen huyền bí)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 14, 30)
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -155)
MainFrame.Size = UDim2.new(0, 340, 0, 310)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Viền phát sáng nhẹ Matrix Neon tăng sự kích thích thị giác
UIStroke.Parent = MainFrame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 255, 102) -- #00FF66
UIStroke.Transparency = 0.4

-- Tiêu đề Menu
Title.Parent = MainFrame
Title.Text = "LUMINON GETKEY SYSTEM"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng tinh VIP
Title.TextSize = 20
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1

-- Ô nhập Key (#1D182E - Tím sáng hơn)
KeyInput.Parent = MainFrame
KeyInput.PlaceholderText = "Nhập mã Key tại đây..."
KeyInput.Text = ""
KeyInput.BackgroundColor3 = Color3.fromRGB(29, 24, 46)
KeyInput.Position = UDim2.new(0.1, 0, 0.18, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 38)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.GothamSemibold
KeyInput.TextSize = 13
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Thickness = 1
InputStroke.Color = Color3.fromRGB(58, 48, 92)

-- NÚT CHỌN GET KEY 24 GIỜ (#00FF66 Xanh lục Neon kích thích click)
CopyBtn24h.Parent = MainFrame
CopyBtn24h.Text = "GET KEY 24H"
CopyBtn24h.Font = Enum.Font.GothamBold
CopyBtn24h.TextSize = 12
CopyBtn24h.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
CopyBtn24h.TextColor3 = Color3.fromRGB(18, 14, 30)
CopyBtn24h.Position = UDim2.new(0.1, 0, 0.35, 5)
CopyBtn24h.Size = UDim2.new(0.38, 0, 0, 32)
Instance.new("UICorner", CopyBtn24h).CornerRadius = UDim.new(0, 6)

-- NÚT CHỌN GET KEY VĨNH VIỄN (#00FF66 Xanh lục Neon đồng bộ)
CopyBtnPermanent.Parent = MainFrame
CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
CopyBtnPermanent.Font = Enum.Font.GothamBold
CopyBtnPermanent.TextSize = 12
CopyBtnPermanent.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
CopyBtnPermanent.TextColor3 = Color3.fromRGB(18, 14, 30)
CopyBtnPermanent.Position = UDim2.new(0.52, 0, 0.35, 5)
CopyBtnPermanent.Size = UDim2.new(0.38, 0, 0, 32)
Instance.new("UICorner", CopyBtnPermanent).CornerRadius = UDim.new(0, 6)

-- Nút Xác nhận Key
SubmitBtn.Parent = MainFrame
SubmitBtn.Text = "XÁC NHẬN KEY LUMINON"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.52, 8)
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 40)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- NOTE CHỮ NHỎ PHÍA DƯỚI (Màu vàng đỏ nhẹ)
NoteLabel.Parent = MainFrame
NoteLabel.Text = "Việc lấy ( Key )giúp mình có thêm chút chi phí để duy trì và cập nhật script mỗi ngày. Chỉ mất 1-2 phút mong bạn đừng tức giận và tiếp tục ủng hộ mình nhé! Chúc các bạn chơi game vui vẻ!"
NoteLabel.Font = Enum.Font.GothamMedium
NoteLabel.TextColor3 = Color3.fromRGB(235, 150, 75)
NoteLabel.TextSize = 11
NoteLabel.Size = UDim2.new(0.9, 0, 0, 65)
NoteLabel.Position = UDim2.new(0.05, 0, 0.72, 5)
NoteLabel.BackgroundTransparency = 1
NoteLabel.TextWrapped = true
NoteLabel.TextYAlignment = Enum.TextYAlignment.Top

--- LOGIC SỰ KIỆN ---

-- Xử lý nút Copy Key 24h
CopyBtn24h.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.org/ioFqWh")
    CopyBtn24h.Text = "COPIED 24H!"
    NotifyRed("Dán lên trình duyệt để getkey")
    task.wait(2)
    CopyBtn24h.Text = "GET KEY 24H"
end)

-- Xử lý nút Copy Key Vĩnh viễn
CopyBtnPermanent.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.org/ioFqWh")
    CopyBtnPermanent.Text = "COPIED VIP!"
    NotifyRed("Dán lên trình duyệt để getkey")
    task.wait(2)
    CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
end)

-- Xử lý xác nhận mã Key
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == _decode(_kData) then
        SubmitBtn.Text = "XÁC MINH THÀNH CÔNG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1)
        ScreenGui:Destroy()
        -- Khởi chạy script Lumin-Hub an toàn sau khi đúng Key
        loadstring(game:HttpGet(_decode(_sData)))()
    else
        SubmitBtn.Text = "SAI KEY! VUI LÒNG KIỂM TRA LẠI"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(235, 75, 75)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(2)
        SubmitBtn.Text = "XÁC NHẬN KEY LUMINON"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
    end
end)

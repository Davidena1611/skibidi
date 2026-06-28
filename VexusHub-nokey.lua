--[[ 
    HỆ THỐNG GETKEY VEXUS HUB - NEON MONEY EDITION (MÃ HÓA BẢO MẬT)
    LINK GET KEY 24H: https://link4m.org/nIq1v5FB
    LINK GET KEY VĨNH VIỄN: https://link4m.org/nIq1v5FB
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
ScreenGui.Name = "VexusHub_GetKey_System"
ScreenGui.ResetOnSpawn = false

-- Hàm giải mã chuỗi dữ liệu động bảo mật
local function _decode(b)
    local s = {}
    for i = 1, #b do s[i] = string.char(b[i]) end
    return table.concat(s)
end

-- Dữ liệu bảo mật mã hóa chuỗi Byte
local _kData = {97,110,105,109,97,108,104,111,115,112,105,116,97,108,45,118,101,120,117,115,104,117,98,50,54,56,57,57,51,49,48,57,56,49,51,57,55}
local _sData = {104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,101,105,105,115,50,105,100,50,105,100,105,52,105,47,86,101,120,117,115,45,104,117,98,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,82,69,65,68,77,69,46,109,100}

-- Hàm tạo THÔNG BÁO CHỮ ĐỎ NHẸ RÕ NÉT khi người chơi bấm sao chép
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 500, 0, 50)
    Label.Position = UDim2.new(0.5, -250, 0.22, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 115, 115) -- Màu đỏ nhẹ rõ nét, sắc sảo
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

-- Viền phát sáng nhẹ màu xanh tiền đô kích thích thị giác
UIStroke.Parent = MainFrame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 255, 102) -- #00FF66
UIStroke.Transparency = 0.4

-- Tiêu đề Menu
Title.Parent = MainFrame
Title.Text = "VEXUS HUB GETKEY"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng VIP nổi bật
Title.TextSize = 21
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1

-- Ô nhập Key (#1D182E - Xám nhẹ trên nền tối)
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

-- NÚT CHỌN GET KEY 24 GIỜ (#00FF66 Xanh lá tiền đô rực rỡ)
CopyBtn24h.Parent = MainFrame
CopyBtn24h.Text = "GET KEY 24H"
CopyBtn24h.Font = Enum.Font.GothamBold
CopyBtn24h.TextSize = 12
CopyBtn24h.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
CopyBtn24h.TextColor3 = Color3.fromRGB(18, 14, 30)
CopyBtn24h.Position = UDim2.new(0.1, 0, 0.35, 5)
CopyBtn24h.Size = UDim2.new(0.38, 0, 0, 32)
Instance.new("UICorner", CopyBtn24h).CornerRadius = UDim.new(0, 6)

-- NÚT CHỌN GET KEY VĨNH VIỄN (#00FF66 Đồng bộ kích thích click)
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
SubmitBtn.Text = "XÁC NHẬN KEY VEXUS"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.52, 8)
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 40)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- NOTE CHỮ NHỎ PHÍA DƯỚI (Màu vàng đỏ nhẹ dịu mắt)
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

--- XỬ LÝ HỆ THỐNG PHẦN MỀM ---

-- Click Copy Key 24h
CopyBtn24h.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.org/nIq1v5FB")
    CopyBtn24h.Text = "COPIED 24H!"
    NotifyRed("Dán lên trình duyệt để getkey")
    task.wait(2)
    CopyBtn24h.Text = "GET KEY 24H"
end)

-- Click Copy Key Vĩnh viễn
CopyBtnPermanent.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.org/nIq1v5FB")
    CopyBtnPermanent.Text = "COPIED VIP!"
    NotifyRed("Dán lên trình duyệt để getkey")
    task.wait(2)
    CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
end)

-- Click xác minh key bảo mật
SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == _decode(_kData) then
        SubmitBtn.Text = "XÁC MINH THÀNH CÔNG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1)
        ScreenGui:Destroy()
        -- Khởi chạy script Vexus Hub gốc an toàn sau khi xác minh đúng
        loadstring(game:HttpGet(_decode(_sData)))()
    else
        SubmitBtn.Text = "SAI KEY! VUI LÒNG KIỂM TRA LẠI"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(235, 75, 75)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(2)
        SubmitBtn.Text = "XÁC NHẬN KEY VEXUS"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
    end
end)

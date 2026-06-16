--[[ 
    FOX NAME - MATRIX NEON EDITION (MÃ HÓA BẢO MẬT)
    LINK GET KEY: https://link4m.net/f2T0Ib
]]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CopyBtn = Instance.new("TextButton")
local SubmitBtn = Instance.new("TextButton")
local NoteLabel = Instance.new("TextLabel")

-- Cấu hình ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "FoxName_Encrypted_UI"
ScreenGui.ResetOnSpawn = false

-- Hàm giải mã động Key và Script (Ngăn chặn đọc trộm mã nguồn)
local function _decode(b)
    local s = {}
    for i = 1, #b do s[i] = string.char(b[i]) end
    return table.concat(s)
end

-- Dữ liệu bảo mật đã được mã hóa thành các chuỗi Byte
local _kData = {70,111,120,110,97,109,101,103,97,103,50,95,70,114,101,101,49,48,56,49,54,50,53,50,54,56,52,57,50,55,51}
local _sData = {104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,99,97,111,109,111,100,50,48,55,55,47,83,99,114,105,112,116,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,70,78,95,71,65,71,50,95,115,107,105,98,105,100,105,46,108,117,97}

-- Hàm tạo THÔNG BÁO CHỮ ĐỎ NHẸ RÕ NÉT khi người chơi bấm sao chép
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 500, 0, 50)
    Label.Position = UDim2.new(0.5, -250, 0.22, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 115, 115) -- Màu đỏ nhẹ sắc nét, rõ phông chữ
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
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 14, 30) -- Mã màu #120E1E
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -150)
MainFrame.Size = UDim2.new(0, 340, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Viền phát sáng nhẹ Matrix Neon tăng sự bắt mắt
UIStroke.Parent = MainFrame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 255, 102) -- #00FF66
UIStroke.Transparency = 0.4

-- Tiêu đề Menu Fox Name
Title.Parent = MainFrame
Title.Text = "FOX NAME"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ trắng tinh VIP nổi bật
Title.TextSize = 24
Title.Size = UDim2.new(1, 0, 0, 55)
Title.BackgroundTransparency = 1

-- Ô nhập Key (#1D182E - Tím sáng hơn một chút)
KeyInput.Parent = MainFrame
KeyInput.PlaceholderText = "Nhập mã Key tại đây..."
KeyInput.Text = ""
KeyInput.BackgroundColor3 = Color3.fromRGB(29, 24, 46) -- Mã màu #1D182E
KeyInput.Position = UDim2.new(0.1, 0, 0.22, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 38)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.GothamSemibold
KeyInput.TextSize = 13
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Thickness = 1
InputStroke.Color = Color3.fromRGB(58, 48, 92)

-- Nút "GET KEY" (#00FF66 Xanh lục Neon kích thích thị giác click cực kỳ cao)
CopyBtn.Parent = MainFrame
CopyBtn.Text = "SAO CHÉP LINK GET KEY"
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 13
CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 102) -- #00FF66
CopyBtn.TextColor3 = Color3.fromRGB(18, 14, 30) -- Chữ tối tương phản để hiển thị rõ nét
CopyBtn.Position = UDim2.new(0.1, 0, 0.40, 5)
CopyBtn.Size = UDim2.new(0.8, 0, 0, 32)
Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 6)

-- Nút Xác nhận Key
SubmitBtn.Parent = MainFrame
SubmitBtn.Text = "XÁC NHẬN KEY"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.56, 8)
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 40)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- NOTE CHỮ NHỎ PHÍA DƯỚI (Màu vàng đỏ nhẹ)
NoteLabel.Parent = MainFrame
NoteLabel.Text = "Việc lấy ( Key )giúp mình có thêm chút chi phí để duy trì và cập nhật script mỗi ngày. Chỉ mất 1-2 phút mong bạn đừng tức giận và tiếp tục ủng hộ mình nhé! Chúc các bạn chơi game vui vẻ!"
NoteLabel.Font = Enum.Font.GothamMedium
NoteLabel.TextColor3 = Color3.fromRGB(235, 150, 75) -- Màu vàng pha đỏ nhẹ dịu mắt
NoteLabel.TextSize = 11
NoteLabel.Size = UDim2.new(0.9, 0, 0, 65)
NoteLabel.Position = UDim2.new(0.05, 0, 0.75, 5)
NoteLabel.BackgroundTransparency = 1
NoteLabel.TextWrapped = true
NoteLabel.TextYAlignment = Enum.TextYAlignment.Top

--- XỬ LÝ HỆ THỐNG ---

CopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.net/f2T0Ib")
    CopyBtn.Text = "ĐÃ SAO CHÉP LINK!"
    NotifyRed("Dán lên trình duyệt để getkey")
    task.wait(2)
    CopyBtn.Text = "SAO CHÉP LINK GET KEY"
end)

SubmitBtn.MouseButton1Click:Connect(function()
    -- Hệ thống tự giải mã so sánh động nhằm bảo mật tối đa
    if KeyInput.Text == _decode(_kData) then
        SubmitBtn.Text = "XÁC MINH THÀNH CÔNG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100) -- Chuyển xanh lá khi chính xác
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1)
        ScreenGui:Destroy()
        -- Khởi chạy script Fox Name đã mã hóa an toàn
        loadstring(game:HttpGet(_decode(_sData)))()
    else
        SubmitBtn.Text = "SAI KEY! VUI LÒNG KIỂM TRA LẠI"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(235, 75, 75) -- Báo lỗi đỏ nếu sai key
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(2)
        SubmitBtn.Text = "XÁC NHẬN KEY"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
    end
end)

do local args={[1]=1};local Players=game:GetService("Players");local TweenService=game:GetService("TweenService");local RunService=game:GetService("RunService");local HttpService=game:GetService("HttpService");local VirtualUser=game:GetService("VirtualUser");local player=Players.LocalPlayer;local PlayerGui=player:WaitForChild("PlayerGui");player.Idled:Connect(function() pcall(function() VirtualUser:CaptureController();VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame);task.wait(1);VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame);end);print("🛡️ Anti-AFK Worked: ป้องกันการโดนเตะเรียบร้อย!");end);local SafeParent=PlayerGui;for _,v in pairs(SafeParent:GetChildren()) do if (v.Name=="FARTEZ_LUCKY_HUB") then v:Destroy();end end local Theme={Background=Color3.fromRGB(5,5,8),Surface=Color3.fromRGB(15,15,20),SurfaceLight=Color3.fromRGB(25,25,35),Accent=Color3.fromRGB(4,203,41),Text=Color3.fromRGB(255,255,255),TextDim=Color3.fromRGB(150,150,150),Success=Color3.fromRGB(4,203,41)};local ScreenGui=Instance.new("ScreenGui");ScreenGui.Name="FARTEZ_LUCKY_HUB";ScreenGui.ResetOnSpawn=false;ScreenGui.Parent=SafeParent;local toggleBtn=Instance.new("ImageButton",ScreenGui);toggleBtn.Size=UDim2.new(0,50,0,50);toggleBtn.Position=UDim2.new(0,15,0,150);toggleBtn.BackgroundColor3=Theme.Surface;toggleBtn.Image="rbxthumb://type=Asset&id=117149073945265&w=150&h=150";toggleBtn.Draggable=true;Instance.new("UICorner",toggleBtn).CornerRadius=UDim.new(0.5,0);local btnStroke=Instance.new("UIStroke",toggleBtn);btnStroke.Thickness=2;btnStroke.Color=Theme.Accent;local Main=Instance.new("Frame",ScreenGui);Main.Size=UDim2.new(0,310,0,320);Main.Position=UDim2.new(0.5, -155,0.5, -210);Main.BackgroundColor3=Theme.Background;Main.BorderSizePixel=0;Main.Active=true;Main.Draggable=true;Instance.new("UICorner",Main).CornerRadius=UDim.new(0,12);local TopBar=Instance.new("Frame",Main);TopBar.Size=UDim2.new(1,0,0,50);TopBar.BackgroundColor3=Theme.Surface;TopBar.BorderSizePixel=0;local Logo=Instance.new("ImageLabel",TopBar);Logo.Size=UDim2.new(0,36,0,36);Logo.Position=UDim2.new(0,10,0.5, -18);Logo.BackgroundTransparency=1;Logo.Image="rbxthumb://type=Asset&id=117149073945265&w=150&h=150";Instance.new("UICorner",Logo).CornerRadius=UDim.new(0.2,0);local Title1=Instance.new("TextLabel",TopBar);Title1.Size=UDim2.new(0,160,0,22);Title1.Position=UDim2.new(0,52,0,5);Title1.BackgroundTransparency=1;Title1.Text="                                          Mobile    2.1 Bata";Title1.TextColor3=Theme.Text;Title1.TextSize=10;Title1.Font=Enum.Font.GothamBold;Title1.TextXAlignment=Enum.TextXAlignment.Left;local Title2=Instance.new("TextLabel",TopBar);Title2.Size=UDim2.new(0,160,0,22);Title2.Position=UDim2.new(0,52,0,5);Title2.BackgroundTransparency=1;Title2.Text="FARTEZ HUB";Title2.TextColor3=Theme.Text;Title2.TextSize=17;Title2.Font=Enum.Font.GothamBold;Title2.TextXAlignment=Enum.TextXAlignment.Left;local Subtitle=Instance.new("TextLabel",TopBar);Subtitle.Size=UDim2.new(0,160,0,16);Subtitle.Position=UDim2.new(0,52,0,26);Subtitle.BackgroundTransparency=1;Subtitle.Text="Kick a Lucky Block";Subtitle.TextColor3=Theme.Accent;Subtitle.TextSize=10;Subtitle.Font=Enum.Font.GothamSemibold;Subtitle.TextXAlignment=Enum.TextXAlignment.Left;local TabContainer=Instance.new("Frame",Main);TabContainer.Size=UDim2.new(1, -16,0,36);TabContainer.Position=UDim2.new(0,8,0,56);TabContainer.BackgroundColor3=Theme.Surface;Instance.new("UICorner",TabContainer).CornerRadius=UDim.new(0,8);local TabLayout=Instance.new("UIListLayout",TabContainer);TabLayout.FillDirection=Enum.FillDirection.Horizontal;TabLayout.HorizontalAlignment=Enum.HorizontalAlignment.Center;TabLayout.VerticalAlignment=Enum.VerticalAlignment.Center;TabLayout.Padding=UDim.new(0,2);local Content=Instance.new("Frame",Main);Content.Size=UDim2.new(1, -16,1, -110);Content.Position=UDim2.new(0,8,0,98);Content.BackgroundColor3=Theme.Surface;Content.ClipsDescendants=true;Instance.new("UICorner",Content).CornerRadius=UDim.new(0,10);local Tabs={};local function CreateTab(name) local Btn=Instance.new("TextButton",TabContainer);Btn.Size=UDim2.new(0,0,0,28);Btn.AutomaticSize=Enum.AutomaticSize.X;Btn.BackgroundColor3=Theme.SurfaceLight;Btn.Text=name;Btn.TextColor3=Theme.TextDim;Btn.TextSize=9;Btn.Font=Enum.Font.GothamBold;Instance.new("UICorner",Btn).CornerRadius=UDim.new(0,6);local pad=Instance.new("UIPadding",Btn);pad.PaddingLeft=UDim.new(0,6);pad.PaddingRight=UDim.new(0,6);local Page=Instance.new("ScrollingFrame",Content);Page.Name=name   .. "Page" ;Page.Size=UDim2.new(1,0,1,0);Page.BackgroundTransparency=1;Page.ScrollBarThickness=2;Page.ScrollBarImageColor3=Theme.Accent;Page.AutomaticCanvasSize=Enum.AutomaticSize.Y;Page.Visible=false;local PL=Instance.new("UIListLayout",Page);PL.Padding=UDim.new(0,10);PL.HorizontalAlignment=Enum.HorizontalAlignment.Center;Instance.new("UIPadding",Page).PaddingTop=UDim.new(0,12);Instance.new("UIPadding",Page).PaddingBottom=UDim.new(0,12);table.insert(Tabs,{Btn=Btn,Page=Page});Btn.MouseButton1Click:Connect(function() for _,t in pairs(Tabs) do t.Page.Visible=false;TweenService:Create(t.Btn,TweenInfo.new(0.2),{BackgroundColor3=Theme.SurfaceLight,TextColor3=Theme.TextDim}):Play();end Page.Visible=true;TweenService:Create(Btn,TweenInfo.new(0.2),{BackgroundColor3=Theme.Accent,TextColor3=Color3.new(0,0,0)}):Play();end);return Page;end local MainTab=CreateTab("Main");local CollectTab=CreateTab("Collect");local EventTab=CreateTab("Event");local UpGTab=CreateTab("UpG");local ConfigsTab=CreateTab("Configs");local KickZoneTab=CreateTab("KickZone");local SellTab=CreateTab("Sell");local DetailsTab=CreateTab("Info");local CurrentConfig={};local UIControllers={};local SharedDropdownUpdaters={};

--[[ AUTO‑COLLECT BEGIN ]]-------------------------------------------------
-- 1. Định nghĩa các biến cần thiết
local AutoCollectEnabled = false          -- trạng thái bật/tắt
local CollectInterval   = 2               -- giây, thời gian giữa các lần kiểm tra
local CollectRadius    = 50              -- khoảng cách (stud) để quét vật phẩm

-- RemoteEvent hoặc Function mà server dùng để thu thập
-- (Bạn phải thay đổi `CollectRemote` thành tên RemoteEvent thực tế của game)
local CollectRemote = ReplicatedStorage:WaitForChild("CollectRemote")  -- contoh

-- 2. Hàm tìm và thu thập các vật phẩm gần nhân vật
local function doAutoCollect()
    if not AutoCollectEnabled then return end

    local character = player.Character
    if not character then return end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local collectables = workspace:GetDescendants()
    for _, obj in ipairs(collectables) do
        if obj:IsA("BasePart") and obj.Name == "LuckyBlock" then   -- <‑‑ sửa tên nếu cần
            local dist = (obj.Position - hrp.Position).Magnitude
            if dist <= CollectRadius then
                pcall(function()
                    CollectRemote:FireServer(obj)   -- hoặc :InvokeServer(obj)
                end)
                print("[AutoCollect] Đã thu thập:", obj.Name,
                      "cách bạn", math.floor(dist), "stud")
            end
        end
    end
end

-- 3. Vòng lặp chạy định kỳ
spawn(function()
    while true do
        doAutoCollect()
        task.wait(CollectInterval)
    end
end)

-- 4. Thêm công tắc bật/tắt vào UI (tab “Collect”)
CreateToggle(CollectTab, "Auto‑Collect", "AutoCollect", function(state)
    AutoCollectEnabled = state
    print("[AutoCollect] Đã " .. (state and "bật" or "tắt"))
end)
--[[ AUTO‑COLLECT END ]]---------------------------------------------------

-- Các hàm UI tiếp theo (CreateButton, CreateToggle, CreateDropdown, …) được giữ nguyên
local function CreateButton(parent,text,callback) local btn=Instance.new("TextButton",parent);btn.Size=UDim2.new(0,260,0,32);btn.BackgroundColor3=Theme.SurfaceLight;btn.Text=text;btn.TextColor3=Theme.Text;btn.Font=Enum.Font.GothamBold;btn.TextSize=12;Instance.new("UICorner",btn).CornerRadius=UDim.new(0,6);btn.MouseButton1Click:Connect(callback);end 
... (phần còn lại của script không thay đổi) ...

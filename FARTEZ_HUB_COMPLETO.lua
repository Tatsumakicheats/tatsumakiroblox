--[[ 
    FARTEZ HUB - VERSION COMPLETA DESOFUSCADA (best-effort)

    Fuente: archivo original subido por el usuario.
    Se hizo:
      - Renombrado de variables principales.
      - Renombrado de funciones principales.
      - Simplificación de operaciones numéricas basura.
      - Separación por líneas e indentación.
      - Las variables que no tenían significado recuperable quedaron como obf_NUM.

    Importante:
      No existe una forma perfecta de recuperar los nombres originales si el ofuscador los borró.
      Esta versión conserva el script completo y su lógica original, pero con nombres legibles donde se pudo inferir.
--]]

local Players=game:GetService("Players");
local TweenService=game:GetService("TweenService");
local RunService=game:GetService("RunService");
local HttpService=game:GetService("HttpService");
local LocalPlayer=Players.LocalPlayer;
local PlayerGui=LocalPlayer:WaitForChild("PlayerGui");
local VirtualUser=game:GetService("VirtualUser");
LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController();
    VirtualUser:ClickButton2(Vector2.new());
    print("🛡️ Anti-AFK Worked: ป้องกันการโดนเตะเรียบร้อย!");
end);
pcall(function()
    for obf_361,obf_362 in pairs(getconnections(LocalPlayer.Idled)) do
        obf_362:Disable();
    end
end);
local GuiParent=PlayerGui;
for obf_156,obf_157 in pairs(GuiParent:GetChildren()) do
    if (obf_157.Name=="FARTEZ_LUCKY_HUB") then
        obf_157:Destroy();
    end
end
local Theme={Background=Color3.fromRGB(5,5,8),Surface=Color3.fromRGB(15,15,20),SurfaceLight=Color3.fromRGB(25,25,35),Accent=Color3.fromRGB(4,203,41),Text=Color3.fromRGB(255,255,534 -279 ),TextDim=Color3.fromRGB(150,150,150),Success=Color3.fromRGB(4,203,41)};
local HubGui=Instance.new("ScreenGui");
HubGui.Name="FARTEZ_LUCKY_HUB";
HubGui.ResetOnSpawn=false;
HubGui.Parent=GuiParent;
local FloatingToggleButton=Instance.new("ImageButton",HubGui);
FloatingToggleButton.Size=UDim2.new(0,50,0,50);
FloatingToggleButton.Position=UDim2.new(0,15,0,150);
FloatingToggleButton.BackgroundColor3=Theme.Surface;
FloatingToggleButton.Image="rbxthumb://type=Asset&id=117149073945265&w=150&h=150";
FloatingToggleButton.Draggable=true;
Instance.new("UICorner",FloatingToggleButton).CornerRadius=UDim.new(0.5,0);
local FloatingButtonStroke=Instance.new("UIStroke",FloatingToggleButton);
FloatingButtonStroke.Thickness=2;
FloatingButtonStroke.Color=Theme.Accent;
local MainWindow=Instance.new("Frame",HubGui);
MainWindow.Size=UDim2.new(0,310,0,320);
MainWindow.Position=UDim2.new(0.5, -155,0.5, -210);
MainWindow.BackgroundColor3=Theme.Background;
MainWindow.BorderSizePixel=0;
MainWindow.Active=true;
MainWindow.Draggable=true;
Instance.new("UICorner",MainWindow).CornerRadius=UDim.new(0,12);
local HeaderBar=Instance.new("Frame",MainWindow);
HeaderBar.Size=UDim2.new(1,0,0,50);
HeaderBar.BackgroundColor3=Theme.Surface;
HeaderBar.BorderSizePixel=0;
local HeaderLogo=Instance.new("ImageLabel",HeaderBar);
HeaderLogo.Size=UDim2.new(0,36,0,86 -50 );
HeaderLogo.Position=UDim2.new(0,10,0.5, -18);
HeaderLogo.BackgroundTransparency=1;
HeaderLogo.Image="rbxthumb://type=Asset&id=117149073945265&w=150&h=150";
Instance.new("UICorner",HeaderLogo).CornerRadius=UDim.new(0.2,0);
local VersionLabel=Instance.new("TextLabel",HeaderBar);
VersionLabel.Size=UDim2.new(0,160,0,22);
VersionLabel.Position=UDim2.new(0,52,0,5);
VersionLabel.BackgroundTransparency=1;
VersionLabel.Text="                                          PC     1.8   Bata";
VersionLabel.TextColor3=Theme.Text;
VersionLabel.TextSize=10;
VersionLabel.Font=Enum.Font.GothamBold;
VersionLabel.TextXAlignment=Enum.TextXAlignment.Left;
local HubTitleLabel=Instance.new("TextLabel",HeaderBar);
HubTitleLabel.Size=UDim2.new(0,160,0,22);
HubTitleLabel.Position=UDim2.new(0,52,0,5);
HubTitleLabel.BackgroundTransparency=1;
HubTitleLabel.Text="FARTEZ HUB";
HubTitleLabel.TextColor3=Theme.Text;
HubTitleLabel.TextSize=17;
HubTitleLabel.Font=Enum.Font.GothamBold;
HubTitleLabel.TextXAlignment=Enum.TextXAlignment.Left;
local GameSubtitleLabel=Instance.new("TextLabel",HeaderBar);
GameSubtitleLabel.Size=UDim2.new(0,160,0,16);
GameSubtitleLabel.Position=UDim2.new(0,52,0,40 -14 );
GameSubtitleLabel.BackgroundTransparency=1;
GameSubtitleLabel.Text="Kick a Lucky Block";
GameSubtitleLabel.TextColor3=Theme.Accent;
GameSubtitleLabel.TextSize=10;
GameSubtitleLabel.Font=Enum.Font.GothamSemibold;
GameSubtitleLabel.TextXAlignment=Enum.TextXAlignment.Left;
local TabBar=Instance.new("Frame",MainWindow);
TabBar.Size=UDim2.new(1, -16,0,54 -18 );
TabBar.Position=UDim2.new(0,8,0,56);
TabBar.BackgroundColor3=Theme.Surface;
Instance.new("UICorner",TabBar).CornerRadius=UDim.new(0,2 + 6 );
local TabBarLayout=Instance.new("UIListLayout",TabBar);
TabBarLayout.FillDirection=Enum.FillDirection.Horizontal;
TabBarLayout.HorizontalAlignment=Enum.HorizontalAlignment.Center;
TabBarLayout.VerticalAlignment=Enum.VerticalAlignment.Center;
TabBarLayout.Padding=UDim.new(0,1 + 1 );
local ContentFrame=Instance.new("Frame",MainWindow);
ContentFrame.Size=UDim2.new(1, -16,1, -(1577 -(899 + 568)));
ContentFrame.Position=UDim2.new(0,8,0,98);
ContentFrame.BackgroundColor3=Theme.Surface;
ContentFrame.ClipsDescendants=true;
Instance.new("UICorner",ContentFrame).CornerRadius=UDim.new(0,2 + 8 );
local Tabs={};
local function createTab(tabName)
    local tabButton=Instance.new("TextButton",TabBar);
    tabButton.Size=UDim2.new(0,0,0,28);
    tabButton.AutomaticSize=Enum.AutomaticSize.X;
    tabButton.BackgroundColor3=Theme.SurfaceLight;
    tabButton.Text=tabName;
    tabButton.TextColor3=Theme.TextDim;
    tabButton.TextSize=9;
    tabButton.Font=Enum.Font.GothamBold;
    Instance.new("UICorner",tabButton).CornerRadius=UDim.new(0,6);
    local tabButtonPadding=Instance.new("UIPadding",tabButton);
    tabButtonPadding.PaddingLeft=UDim.new(0,6);
    tabButtonPadding.PaddingRight=UDim.new(0,14 -8 );
    local tabPage=Instance.new("ScrollingFrame",ContentFrame);
    tabPage.Name=tabName   .. "Page" ;
    tabPage.Size=UDim2.new(1,0,1,0);
    tabPage.BackgroundTransparency=1;
    tabPage.ScrollBarThickness=2;
    tabPage.ScrollBarImageColor3=Theme.Accent;
    tabPage.AutomaticCanvasSize=Enum.AutomaticSize.Y;
    tabPage.Visible=false;
    local tabPageListLayout=Instance.new("UIListLayout",tabPage);
    tabPageListLayout.Padding=UDim.new(0,10);
    tabPageListLayout.HorizontalAlignment=Enum.HorizontalAlignment.Center;
    Instance.new("UIPadding",tabPage).PaddingTop=UDim.new(0,12);
    Instance.new("UIPadding",tabPage).PaddingBottom=UDim.new(0,1 + 11 );
    table.insert(Tabs,{Btn=tabButton,Page=tabPage});
    tabButton.MouseButton1Click:Connect(function()
        local obf_363=0;
        while true do
            if (obf_363==1) then
                TweenService:Create(tabButton,TweenInfo.new(0.2 + 0 ),{BackgroundColor3=Theme.Accent,TextColor3=Color3.new(0,0,0)}):Play();
                break;
            end
            if (obf_363==0) then
                for obf_547,obf_548 in pairs(Tabs) do
                    obf_548.Page.Visible=false;
                    TweenService:Create(obf_548.Btn,TweenInfo.new(0.2),{BackgroundColor3=Theme.SurfaceLight,TextColor3=Theme.TextDim}):Play();
                end
                tabPage.Visible=true;
                obf_363=1;
            end
        end
    end);
    return tabPage;
end
local MainPage=createTab("Main");
local CollectPage=createTab("Collect");
local UpgradePage=createTab("UpG");
local BuyPage=createTab("Buy");
local SellPage=createTab("Sell");
local InfoPage=createTab("Info");
local function createButton(parentPage,buttonText,onClick)
    local button=Instance.new("TextButton",parentPage);
    button.Size=UDim2.new(0,260,0,76 -44 );
    button.BackgroundColor3=Theme.SurfaceLight;
    button.Text=buttonText;
    button.TextColor3=Theme.Text;
    button.Font=Enum.Font.GothamBold;
    button.TextSize=12;
    Instance.new("UICorner",button).CornerRadius=UDim.new(0,6);
    button.MouseButton1Click:Connect(onClick);
end
local function createToggle(parentPage,toggleText,onToggle)
    local step=0;
    local toggleFrame;
    local toggleLabel;
    local toggleButton;
    local toggleState;
    while true do
        if (step==2) then
            toggleLabel.Text=toggleText;
            toggleLabel.TextColor3=Theme.Text;
            toggleLabel.Font=Enum.Font.GothamBold;
            toggleLabel.TextXAlignment=Enum.TextXAlignment.Left;
            step=3;
        end
        if (step==0) then
            toggleFrame=Instance.new("Frame",parentPage);
            toggleFrame.Size=UDim2.new(0,260,0,32);
            toggleFrame.BackgroundColor3=Theme.SurfaceLight;
            Instance.new("UICorner",toggleFrame).CornerRadius=UDim.new(0,6);
            step=1;
        end
        if (step==3) then
            toggleLabel.TextSize=11;
            toggleButton=Instance.new("TextButton",toggleFrame);
            toggleButton.Size=UDim2.new(0,20,0,34 -14 );
            toggleButton.Position=UDim2.new(1, -30,0.5, -10);
            step=4;
        end
        if (4==step) then
            toggleButton.BackgroundColor3=Theme.Surface;
            toggleButton.Text="";
            Instance.new("UICorner",toggleButton).CornerRadius=UDim.new(0,3 + 1 );
            Instance.new("UIStroke",toggleButton).Color=Theme.Accent;
            step=5;
        end
        if (step==(1258 -(1043 + 214))) then
            toggleLabel=Instance.new("TextLabel",toggleFrame);
            toggleLabel.Size=UDim2.new(1, -50,1,0);
            toggleLabel.Position=UDim2.new(0,10,0,0);
            toggleLabel.BackgroundTransparency=1;
            step=2;
        end
        if (step==(987 -(18 + 964))) then
            toggleState=false;
            toggleButton.MouseButton1Click:Connect(function()
                toggleState= not toggleState;
                toggleButton.BackgroundColor3=(toggleState and Theme.Accent) or Theme.Surface ;
                onToggle(toggleState);
            end);
            break;
        end
    end
end
local function createDropdown(parentPage,dropdownTitle,dropdownItems,onDropdownChanged)
    local step=0;
    local dropdownFrame;
    local selectedItem;
    local dropdownButton;
    local dropdownList;
    local dropdownLayout;
    local dropdownOpen;
    local dropdownHeight;
    while true do
        if (step==6) then
            dropdownList.ScrollBarThickness=2;
            dropdownList.AutomaticCanvasSize=Enum.AutomaticSize.Y;
            dropdownLayout=Instance.new("UIListLayout",dropdownList);
            step=7;
        end
        if (step==(853 -(20 + 830))) then
            dropdownButton.Text="  "   .. dropdownTitle   .. ": "   .. selectedItem   .. "  ▼" ;
            dropdownButton.TextColor3=Theme.Accent;
            dropdownButton.Font=Enum.Font.GothamBold;
            step=4;
        end
        if (step==2) then
            dropdownButton=Instance.new("TextButton",dropdownFrame);
            dropdownButton.Size=UDim2.new(1,0,0,3 + 29 );
            dropdownButton.BackgroundTransparency=1;
            step=3;
        end
        if (8==step) then
            dropdownButton.MouseButton1Click:Connect(function()
                local obf_509=0;
                while true do
                    if (0==obf_509) then
                        dropdownOpen= not dropdownOpen;
                        if dropdownOpen then
                            TweenService:Create(dropdownFrame,TweenInfo.new(0.2 + 0 ),{Size=UDim2.new(0,260,0,32 + dropdownHeight )}):Play();
                        else
                            TweenService:Create(dropdownFrame,TweenInfo.new(0.2),{Size=UDim2.new(0,260,0,32)}):Play();
                        end
                        break;
                    end
                end
            end);
            for obf_510,obf_511 in ipairs(dropdownItems) do
                local obf_512=Instance.new("TextButton",dropdownList);
                obf_512.Size=UDim2.new(1, -10,0,136 -106 );
                obf_512.BackgroundColor3=Theme.Surface;
                obf_512.Text="    "   .. obf_511 ;
                obf_512.TextColor3=Theme.TextDim;
                obf_512.Font=Enum.Font.GothamBold;
                obf_512.TextSize=11;
                obf_512.TextXAlignment=Enum.TextXAlignment.Left;
                obf_512.MouseButton1Click:Connect(function()
                    selectedItem=obf_511;
                    dropdownOpen=false;
                    TweenService:Create(dropdownFrame,TweenInfo.new(0.2),{Size=UDim2.new(0,260,0,29 + 3 )}):Play();
                    dropdownButton.Text="  "   .. dropdownTitle   .. ": "   .. selectedItem   .. "  ▼" ;
                    onDropdownChanged(obf_511);
                end);
            end
            onDropdownChanged(selectedItem);
            break;
        end
        if (7==step) then
            dropdownLayout.SortOrder=Enum.SortOrder.LayoutOrder;
            dropdownOpen=false;
            dropdownHeight=math.min( #dropdownItems * 30 ,88 + 62 );
            step=8;
        end
        if (step==4) then
            dropdownButton.TextSize=11;
            dropdownButton.TextXAlignment=Enum.TextXAlignment.Left;
            dropdownList=Instance.new("ScrollingFrame",dropdownFrame);
            step=5;
        end
        if (step==1) then
            dropdownFrame.ClipsDescendants=true;
            Instance.new("UICorner",dropdownFrame).CornerRadius=UDim.new(0,6);
            selectedItem=dropdownItems[1];
            step=2;
        end
        if (step==5) then
            dropdownList.Size=UDim2.new(1,0,1, -(1361 -(797 + 532)));
            dropdownList.Position=UDim2.new(0,0,0,74 -42 );
            dropdownList.BackgroundTransparency=1;
            step=6;
        end
        if (step==(1130 -(369 + 761))) then
            dropdownFrame=Instance.new("Frame",parentPage);
            dropdownFrame.Size=UDim2.new(0,260,0,60 -28 );
            dropdownFrame.BackgroundColor3=Theme.SurfaceLight;
            step=1;
        end
    end
end
local function createMultiDropdown(parentPage,multiDropdownTitle,multiDropdownItems,onMultiChanged)
    local step=0;
    local multiFrame;
    local selectedMap;
    local multiButton;
    local multiList;
    local multiLayout;
    local multiOpen;
    local multiHeight;
    local refreshMultiText;
    while true do
        if (step==9) then
            multiButton.MouseButton1Click:Connect(function()
                multiOpen= not multiOpen;
                if multiOpen then
                    TweenService:Create(multiFrame,TweenInfo.new(0.2 -0 ),{Size=UDim2.new(0,260,0,32 + multiHeight )}):Play();
                else
                    TweenService:Create(multiFrame,TweenInfo.new(0.2),{Size=UDim2.new(0,260,0,25 + 7 )}):Play();
                end
                refreshMultiText();
            end);
            for obf_524,obf_525 in ipairs(multiDropdownItems) do
                local obf_526=Instance.new("TextButton",multiList);
                obf_526.Size=UDim2.new(1, -10,0,13 + 17 );
                obf_526.BackgroundColor3=Theme.Surface;
                obf_526.Text="    "   .. obf_525 ;
                obf_526.TextColor3=Theme.TextDim;
                obf_526.Font=Enum.Font.GothamBold;
                obf_526.TextSize=11;
                obf_526.TextXAlignment=Enum.TextXAlignment.Left;
                obf_526.MouseButton1Click:Connect(function()
                    local obf_551=0;
                    while true do
                        if (obf_551==0) then
                            selectedMap[obf_525]= not selectedMap[obf_525];
                            obf_526.TextColor3=(selectedMap[obf_525] and Theme.Success) or Theme.TextDim ;
                            obf_551=1;
                        end
                        if (1==obf_551) then
                            refreshMultiText();
                            break;
                        end
                    end
                end);
            end
            break;
        end
        if (step==3) then
            multiButton.BackgroundTransparency=1;
            multiButton.Text="  "   .. multiDropdownTitle   .. ": Any  ▼" ;
            multiButton.TextColor3=Theme.Accent;
            step=4;
        end
        if (step==(1975 -(1913 + 62))) then
            multiFrame=Instance.new("Frame",parentPage);
            multiFrame.Size=UDim2.new(0,260,0,32);
            multiFrame.BackgroundColor3=Theme.SurfaceLight;
            step=1;
        end
        if (step==1) then
            multiFrame.ClipsDescendants=true;
            Instance.new("UICorner",multiFrame).CornerRadius=UDim.new(0,6);
            selectedMap={};
            step=2;
        end
        if (step==(1669 -(1477 + 184))) then
            multiHeight=math.min( #multiDropdownItems * 30,140 + 10 );
            refreshMultiText=nil;
            function refreshMultiText() local obf_538=0;
            for obf_552,obf_553 in pairs(selectedMap) do
                if obf_553 then
                    obf_538=obf_538 + 1;
                end
            end
            if (obf_538==0) then
                multiButton.Text="  "   .. multiDropdownTitle   .. ": Any  "   .. ((multiOpen and "▲") or "▼") ;
            else
                multiButton.Text="  "   .. multiDropdownTitle   .. ": "   .. obf_538   .. " Selected  "   .. ((multiOpen and "▲") or "▼") ;
            end
            onMultiChanged(selectedMap);
        end
        step=9;
    end
    if (step==(310 -(244 + 60))) then
        multiList.BackgroundTransparency=1;
        multiList.ScrollBarThickness=2;
        multiList.AutomaticCanvasSize=Enum.AutomaticSize.Y;
        step=7;
    end
    if (step==4) then
        multiButton.Font=Enum.Font.GothamBold;
        multiButton.TextSize=11;
        multiButton.TextXAlignment=Enum.TextXAlignment.Left;
        step=5;
    end
    if (step==7) then
        multiLayout=Instance.new("UIListLayout",multiList);
        multiLayout.SortOrder=Enum.SortOrder.LayoutOrder;
        multiOpen=false;
        step=8;
    end
    if (step==(1127 -(936 + 189))) then
        for obf_539,obf_540 in ipairs(multiDropdownItems) do
            selectedMap[obf_540]=false;
        end
        multiButton=Instance.new("TextButton",multiFrame);
        multiButton.Size=UDim2.new(1,0,0,20 + 12 );
        step=3;
    end
    if (step==(272 -(176 + 91))) then
        multiList=Instance.new("ScrollingFrame",multiFrame);
        multiList.Size=UDim2.new(1,0,1, -32);
        multiList.Position=UDim2.new(0,0,0,32);
        step=6;
    end
end
end
local function createNumberStepper(parentPage,settingTitle,minValue,maxValue,defaultValue,onValueChanged)
    local step=0;
    local stepperFrame;
    local stepperLabel;
    local stepperControls;
    local minusButton;
    local valueBox;
    local plusButton;
    local currentValue;
    local setValue;
    while true do
        if (step==0) then
            stepperFrame=Instance.new("Frame",parentPage);
            stepperFrame.Size=UDim2.new(0,260,0,32);
            stepperFrame.BackgroundColor3=Theme.SurfaceLight;
            Instance.new("UICorner",stepperFrame).CornerRadius=UDim.new(0,12 -6 );
            stepperLabel=Instance.new("TextLabel",stepperFrame);
            step=1;
        end
        if (step==7) then
            plusButton.Size=UDim2.new(0,28,0,24);
            plusButton.Position=UDim2.new(0,100,0.5, -(623 -(602 + 9)));
            plusButton.BackgroundColor3=Theme.Surface;
            plusButton.Text="+";
            plusButton.TextColor3=Theme.Text;
            step=8;
        end
        if (step==4) then
            minusButton.BackgroundColor3=Theme.Surface;
            minusButton.Text="-";
            minusButton.TextColor3=Theme.Text;
            minusButton.Font=Enum.Font.GothamBold;
            Instance.new("UICorner",minusButton).CornerRadius=UDim.new(0,4);
            step=5;
        end
        if (step==2) then
            stepperLabel.Font=Enum.Font.GothamBold;
            stepperLabel.TextXAlignment=Enum.TextXAlignment.Left;
            stepperLabel.TextSize=11;
            stepperControls=Instance.new("Frame",stepperFrame);
            stepperControls.Size=UDim2.new(0,130,1,0 -0 );
            step=3;
        end
        if (step==1) then
            stepperLabel.Size=UDim2.new(0,110,1,0);
            stepperLabel.Position=UDim2.new(0,10,0,0);
            stepperLabel.BackgroundTransparency=1;
            stepperLabel.Text=settingTitle;
            stepperLabel.TextColor3=Theme.Text;
            step=2;
        end
        if (step==(1693 -(1121 + 569))) then
            stepperControls.Position=UDim2.new(1, -140,0,0);
            stepperControls.BackgroundTransparency=1;
            minusButton=Instance.new("TextButton",stepperControls);
            minusButton.Size=UDim2.new(0,28,0,80 -56 );
            minusButton.Position=UDim2.new(0,0,0.5, -(248 -(141 + 95)));
            step=4;
        end
        if (step==6) then
            valueBox.TextColor3=Theme.Accent;
            valueBox.Font=Enum.Font.GothamBold;
            valueBox.TextSize=11;
            Instance.new("UICorner",valueBox).CornerRadius=UDim.new(0,9 -5 );
            plusButton=Instance.new("TextButton",stepperControls);
            step=7;
        end
        if (9==step) then
            minusButton.MouseButton1Click:Connect(function()
                setValue(currentValue-1 );
            end);
            plusButton.MouseButton1Click:Connect(function()
                setValue(currentValue + 1 );
            end);
            valueBox.FocusLost:Connect(function()
                setValue(valueBox.Text);
            end);
            setValue(currentValue);
            break;
        end
        if (8==step) then
            plusButton.Font=Enum.Font.GothamBold;
            Instance.new("UICorner",plusButton).CornerRadius=UDim.new(0,4);
            currentValue=defaultValue;
            setValue=nil;
            function setValue(obf_542) local obf_543=0;
            while true do
                if (obf_543==1) then
                    currentValue=obf_542;
                    valueBox.Text=tostring(currentValue);
                    obf_543=2;
                end
                if (obf_543==2) then
                    onValueChanged(currentValue);
                    break;
                end
                if (obf_543==0) then
                    obf_542=tonumber(obf_542) or currentValue ;
                    obf_542=math.clamp(obf_542,minValue,maxValue);
                    obf_543=1;
                end
            end
        end
        step=9;
    end
    if (step==5) then
        valueBox=Instance.new("TextBox",stepperControls);
        valueBox.Size=UDim2.new(0,60,0,20 + 4 );
        valueBox.Position=UDim2.new(0,34,0.5, -12);
        valueBox.BackgroundColor3=Theme.Surface;
        valueBox.Text=tostring(defaultValue);
        step=6;
    end
end
end
local function createTextBox(parentPage,boxTitle,placeholderText,onTextChanged)
    local textBoxFrame=Instance.new("Frame",parentPage);
    textBoxFrame.Size=UDim2.new(0,260,0,50);
    textBoxFrame.BackgroundColor3=Theme.SurfaceLight;
    Instance.new("UICorner",textBoxFrame).CornerRadius=UDim.new(0,6);
    local textBoxLabel=Instance.new("TextLabel",textBoxFrame);
    textBoxLabel.Size=UDim2.new(1, -20,0,58 -38 );
    textBoxLabel.Position=UDim2.new(0,10,0,2);
    textBoxLabel.BackgroundTransparency=1;
    textBoxLabel.Text=boxTitle;
    textBoxLabel.TextColor3=Theme.Text;
    textBoxLabel.Font=Enum.Font.GothamBold;
    textBoxLabel.TextXAlignment=Enum.TextXAlignment.Left;
    textBoxLabel.TextSize=11;
    local inputBox=Instance.new("TextBox",textBoxFrame);
    inputBox.Size=UDim2.new(1, -(68 -(25 + 23)),0,22);
    inputBox.Position=UDim2.new(0,10,0,22);
    inputBox.BackgroundColor3=Theme.Surface;
    inputBox.TextColor3=Theme.Accent;
    inputBox.Text="";
    inputBox.PlaceholderText=placeholderText;
    inputBox.Font=Enum.Font.GothamBold;
    inputBox.TextSize=10;
    inputBox.TextXAlignment=Enum.TextXAlignment.Left;
    inputBox.ClearTextOnFocus=false;
    inputBox.ClipsDescendants=true;
    Instance.new("UICorner",inputBox).CornerRadius=UDim.new(0,4);
    inputBox.FocusLost:Connect(function()
        onTextChanged(inputBox.Text);
    end);
end
local webhookURL="";
local webhookEnabled=false;
local collectedCounts={};
local function sendWebhook(title,description,color,forceSend)
    local step=0;
    local httpRequest;
    while true do
        if (step==1) then
            httpRequest=(syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request ;
            if httpRequest then
                local obf_554={embeds={{title=title,description=description,type="rich",color=color,footer={text="FARTEZ HUB | "   .. os.date("%X") }}}};
                task.spawn(function()
                    local obf_566=0;
                    local obf_567;
                    local obf_568;
                    while true do
                        if (obf_566==0) then
                            obf_567,obf_568=pcall(function()
                                httpRequest({Url=webhookURL,Method="POST",Headers={["Content-Type"]="application/json"},Body=HttpService:JSONEncode(obf_554)});
                            end);
                            if obf_567 then
                                print("✅ Webhook Sent Successfully!");
                            else
                                print("❌ Webhook Failed: "   .. tostring(obf_568) );
                            end
                            break;
                        end
                    end
                end);
            else
                print("❌ Executor Error: Your executor does not support Http Requests!");
            end
            break;
        end
        if (step==0) then
            if (webhookURL=="") then
                print("❌ Webhook Error: Webhook URL is empty!");
                return;
            end
            if ( not webhookEnabled and  not forceSend) then
                print("⚠️ Webhook Warning: 'Enable Webhook 🔔' is toggled off in Info tab!");
                return;
            end
            step=1;
        end
    end
end
local petsByRarity={Common={"Noobini Pizzanini","Tim Cheese","LiriIi LariIa","Talpa Di Fero","Fruli Frula","pipi Kiwi"},Rare={"Gangster Footera","Bobrito Bandito","Boneca Ambalabu","Ta Ta Ta Ta Sahur","Ballerina Cappuccina","Brr Brr Patapim","Cappuccino Assassino","Cacto Hipopotamo"},Epic={"Madung","Waterdino","Pesto Mortioni","Pannaburro","Mangolini Parrocini","Orcalero","John Pork","Gattatino Nyanino"},Legendary={"Chimpanzini Bananini","Plan Red","Plan Blue","Capi Taco","Trulimero Trulicana","Bambini Crostini","Elefantucci Bananucci","Bananita Dolphinita","Salamino Pinguino"},Mythic={"Penguino Cocosino","67","Burbaloni Luliloli","Chef Crabracadabra","Capybara Eggplant","Bangello","Elefanto Frigo","Rinooccio Veidini","Glorbo Fruttodrillo"},Godly={"Udin Din Din Dun","Pandaccini Bananini","Octopusini Bluberini","Strawberelli Flamingelli","Sigma Boy","Frigo Camelo","Orangutini Ananasini","Rhino Toasterino","Bombardiro Crocodilo"},Secret={"Bombini Gusini","Tuff Toucan","Fryuro","Burguro","Guest 666","Zibra Zubra Zibralini","Cavallo Virtuso","Gorillo Watermelondrillo","Cocofanto Elefanto"},Divine={"Girafa Celeste","Tralalero Tralala","Tralalerita Tralala","Peant jarro","Dipperi Chiperini","Rexosaurus","1X1X1X1","Matteo"},Hacked={"Alessio","Tripi Tropi Tropa Tripa","Torrtuginni Dragonfruitini","Tictac Sahur","Cactus Pingu","Los Primos Blue","La Vacca Saturno Saturnita","Agaitihi La Palini"},OG={"Karkerkar Kurkur","Compactororni Diskaloni","Blackhole Goat","Cappuccino Clownino","Nuclearo Dinossauro","Los Nooo My Hotspotsitos","Chillin Chilli","Crazylone Pizaione","Corn Sahur","Meowl","Strawberry Elephant"},Celestial={"Dragonfrutina Dolphinita","Guerriro Digitale","Chicleteira Bicicleteira","Pot Hotspot","Krupuk Pagi Pagi","Beluga Beluga","Tralaledon","Anpalı Babel","Ketupat Kepat","Mastodontico Telepiedone"}};
local rarityOrder={"Common","Rare","Epic","Legendary","Mythic","Godly","Secret","Divine","Hacked","OG","Celestial"};
local customSpeed=50;
local customSpeedEnabled=false;
local function teleportTo(targetCFrame)
    local step=0;
    local character;
    local rootPart;
    while true do
        if (1==step) then
            if rootPart then
                local obf_555=0;
                while true do
                    if (obf_555==0) then
                        rootPart.Velocity=Vector3.new(0,0,0 + 0 );
                        rootPart.CFrame=targetCFrame;
                        break;
                    end
                end
            end
            break;
        end
        if (step==0) then
            character=LocalPlayer.Character;
            rootPart=character and character:FindFirstChild("HumanoidRootPart") ;
            step=1;
        end
    end
end
local Network=game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Network");
local kickAccuracyValues={Perfect=1,Excellent=0.867,Great=0.635,Mid=0.264,Bad=0.067};
local selectedKickAccuracy="Perfect";
local kickMoveHeight=3;
local function moveRootToPosition(rootPart,humanoid,targetPosition)
    if  not (rootPart and humanoid and (humanoid.Health>(826 -(802 + 24)))) then
        return;
    end
    local targetCFrame=CFrame.new(targetPosition.X,kickMoveHeight,targetPosition.Z);
    local distance=(rootPart.Position-targetCFrame.Position).Magnitude;
    local moveSpeed=(customSpeedEnabled and customSpeed) or math.max(humanoid.WalkSpeed,86 -36 ) ;
    local travelTime=distance/moveSpeed ;
    rootPart.Anchored=true;
    local moveTweenInfo=TweenInfo.new(travelTime,Enum.EasingStyle.Linear);
    local moveTween=TweenService:Create(rootPart,moveTweenInfo,{CFrame=targetCFrame});
    moveTween:Play();
    moveTween.Completed:Wait();
    if (rootPart and rootPart.Parent) then
        rootPart.Anchored=false;
    end
end
local selectedTargetPets={};
local targetPetRarityFrames={};
local selectedTargetMutations={};
local mutationOptions={"Normal","Golden","Diamond","Plasma","Molten","Radioactive","Shadow","Electrified","Rainbow","Virus"};
createDropdown(MainPage,"Filter Rarity",rarityOrder,function(selectedRarity)
    for obf_364,obf_365 in pairs(targetPetRarityFrames) do
        obf_365.Visible=obf_364==selectedRarity ;
    end
end);
for index,rarityName in ipairs(rarityOrder) do
    local rarityFrame=Instance.new("Frame",MainPage);
    rarityFrame.Size=UDim2.new(0,260,0,32);
    rarityFrame.BackgroundTransparency=1;
    rarityFrame.AutomaticSize=Enum.AutomaticSize.Y;
    rarityFrame.Visible=rarityName=="Common" ;
    targetPetRarityFrames[rarityName]=rarityFrame;
    createMultiDropdown(rarityFrame,"Target Pets",petsByRarity[rarityName],function(obf_367)
        for obf_373,obf_374 in pairs(obf_367) do
            selectedTargetPets[obf_373]=obf_374;
        end
    end);
end
createMultiDropdown(MainPage,"Target Mutation",mutationOptions,function(mutations)
    selectedTargetMutations=mutations;
end);
local autoKickEnabled=false;
local autoKickRunId=0;
createToggle(MainPage,"Auto Kick (Warp & Run Back) ✨",function(state)
    autoKickEnabled=state;
    autoKickRunId+=1 local runId=autoKickRunId;
    if autoKickEnabled then
        task.spawn(function()
            while autoKickEnabled and (runId==autoKickRunId)  do
                local obf_544=0;
                while true do
                    if (obf_544==0) then
                        pcall(function()
                            local obf_579=LocalPlayer.Character;
                            local obf_580=obf_579 and obf_579:FindFirstChild("HumanoidRootPart") ;
                            local obf_581=obf_579 and obf_579:FindFirstChild("Humanoid") ;
                            if  not (obf_580 and obf_581 and (obf_581.Health>0)) then
                                return;
                            end
                            local obf_582=workspace:FindFirstChild("Areas") and workspace.Areas:FindFirstChild("KickReady") ;
                            if  not obf_582 then
                                return;
                            end
                            local obf_583=(obf_582:IsA("BasePart") and obf_582.CFrame) or obf_582:GetPivot() ;
                            if ((obf_580.Position-obf_583.Position).Magnitude>5) then
                                teleportTo(obf_583 + Vector3.new(0,3,0) );
                            end
                            task.wait(0.5);
                            local obf_584=obf_580.Position;
                            local obf_585=false;
                            local obf_586=PlayerGui:FindFirstChild("HUD");
                            for obf_602=1,150 do
                                task.wait(0.1 + 0 );
                                if ( not obf_579 or  not obf_579.Parent or (obf_581.Health<=0)) then
                                    return;
                                end
                                if ((obf_580.Position-obf_584).Magnitude>(581 -(83 + 468))) then
                                    obf_585=true;
                                    break;
                                end
                                local obf_603=obf_586 and obf_586:FindFirstChild("KickButton") ;
                                if (obf_603 and obf_603.Visible) then
                                    local obf_623=0;
                                    while true do
                                        if (obf_623==0) then
                                            Network.rev_KickEvent:FireServer(kickAccuracyValues[selectedKickAccuracy] or 1);
                                            task.wait(0.5);
                                            break;
                                        end
                                    end
                                end
                            end
                            if  not obf_585 then
                                return;
                            end
                            task.wait(0.5 -0 );
                            local obf_587=false;
                            local obf_588=nil;
                            for obf_604=1,40 do
                                task.wait(0.2 + 0 );
                                local obf_605=60;
                                for obf_609,obf_610 in pairs(workspace.Debris:GetChildren()) do
                                    if (obf_610:IsA("Model") and obf_610.PrimaryPart) then
                                        local obf_636=(obf_610.PrimaryPart.Position-obf_580.Position).Magnitude;
                                        if (obf_636<obf_605) then
                                            local obf_647=0;
                                            while true do
                                                if (obf_647==1) then
                                                    obf_588=obf_610;
                                                    break;
                                                end
                                                if (obf_647==0) then
                                                    obf_605=obf_636;
                                                    obf_587=true;
                                                    obf_647=1;
                                                end
                                            end
                                        end
                                    end
                                end
                                if obf_587 then
                                    break;
                                end
                            end
                            if (obf_587 and obf_588) then
                                task.wait(0.5);
                                local obf_611=false;
                                local obf_612=false;
                                for obf_624,obf_625 in pairs(selectedTargetMutations) do
                                    if obf_625 then
                                        obf_612=true;
                                        if (obf_624=="Normal") then
                                            obf_611=true;
                                            break;
                                        end
                                        for obf_648,obf_649 in pairs(obf_588:GetChildren()) do
                                            if string.find(string.lower(obf_649.Name),string.lower(obf_624)) then
                                                obf_611=true;
                                                break;
                                            end
                                        end
                                        if obf_611 then
                                            break;
                                        end
                                    end
                                end
                                local obf_613=false;
                                local obf_614=false;
                                for obf_626,obf_627 in pairs(selectedTargetPets) do
                                    if obf_627 then
                                        obf_614=true;
                                        if string.find(string.lower(obf_588.Name),string.lower(obf_626)) then
                                            obf_613=true;
                                            break;
                                        end
                                    end
                                end
                                local obf_615=false;
                                if (obf_612 and  not obf_611) then
                                    obf_615=true;
                                end
                                if (obf_614 and  not obf_613) then
                                    obf_615=true;
                                end
                                if obf_615 then
                                    local obf_637=workspace:FindFirstChild("Waves");
                                    local obf_638=nil;
                                    if obf_637 then
                                        if obf_637:IsA("BasePart") then
                                            obf_638=obf_637.Position;
                                        elseif obf_637:IsA("Model") then
                                                obf_638=obf_637:GetPivot().Position;
                                            else
                                                local obf_681=obf_637:FindFirstChildWhichIsA("BasePart",true);
                                                if obf_681 then
                                                    obf_638=obf_681.Position;
                                                end
                                            end
                                        end
                                        if obf_638 then
                                            moveRootToPosition(obf_580,obf_581,obf_638);
                                        elseif obf_582 then
                                                moveRootToPosition(obf_580,obf_581,obf_583.Position);
                                            end
                                        elseif (obf_588 and  not obf_588:GetAttribute("WebhookSent")) then
                                                local obf_650=0;
                                                local obf_651;
                                                local obf_652;
                                                local obf_653;
                                                local obf_654;
                                                local obf_655;
                                                local obf_656;
                                                local obf_657;
                                                while true do
                                                    if (obf_650==3) then
                                                        sendWebhook("👀 Target Found!","**Pet:** "   .. obf_651   .. "\n**Rarity:** "   .. obf_656   .. "\n**Mutation:** "   .. obf_655   .. "\n**Count:** "   .. obf_657   .. "\n**Player:** "   .. LocalPlayer.Name ,3447003,false);
                                                        if obf_582 then
                                                            moveRootToPosition(obf_580,obf_581,obf_583.Position);
                                                            task.wait(1.5);
                                                            if (obf_579 and obf_581 and (obf_581.Health>0) and ((obf_580.Position-obf_583.Position).Magnitude<(1792 -(1733 + 39)))) then
                                                                collectedCounts[obf_651]=(collectedCounts[obf_651] or 0) + 1 ;
                                                                local obf_698=collectedCounts[obf_651];
                                                                print("✅ Successfully collected: "   .. obf_651   .. " ["   .. obf_655   .. "] (Rarity: "   .. obf_656   .. ") | Total: "   .. obf_698 );
                                                                sendWebhook("🎉 Target Collected!","**Pet:** "   .. obf_651   .. "\n**Rarity:** "   .. obf_656   .. "\n**Mutation:** "   .. obf_655   .. "\n**Count:** "   .. obf_698   .. "\n**Player:** "   .. LocalPlayer.Name ,314153,false);
                                                            end
                                                        end
                                                        break;
                                                    end
                                                    if (obf_650==(1949 -(1096 + 852))) then
                                                        for obf_682,obf_683 in pairs(obf_588:GetChildren()) do
                                                            for obf_687,obf_688 in ipairs(obf_652) do
                                                                if string.find(string.lower(obf_683.Name),string.lower(obf_688)) then
                                                                    obf_653[obf_688]=true;
                                                                end
                                                            end
                                                        end
                                                        obf_654={};
                                                        for obf_684,obf_685 in pairs(obf_653) do
                                                            table.insert(obf_654,obf_684);
                                                        end
                                                        obf_655=(( #obf_654>0) and table.concat(obf_654,", ")) or "Normal" ;
                                                        obf_650=2;
                                                    end
                                                    if (obf_650==0) then
                                                        obf_588:SetAttribute("WebhookSent",true);
                                                        obf_651=obf_588.Name;
                                                        obf_652={"Golden","Diamond","Plasma","Molten","Radioactive","Shadow","Electrified","Rainbow","Virus"};
                                                        obf_653={};
                                                        obf_650=1;
                                                    end
                                                    if (obf_650==2) then
                                                        obf_656="Unknown";
                                                        if petsByRarity then
                                                            for obf_694,obf_695 in pairs(petsByRarity) do
                                                                for obf_700,obf_701 in ipairs(obf_695) do
                                                                    if string.find(string.lower(obf_651),string.lower(obf_701)) then
                                                                        obf_656=obf_694;
                                                                        break;
                                                                    end
                                                                end
                                                                if (obf_656~="Unknown") then
                                                                    break;
                                                                end
                                                            end
                                                        end
                                                        obf_657=(collectedCounts[obf_651] or (663 -(174 + 489))) + 1;
                                                        print("🎯 Target Found: "   .. obf_651   .. " ["   .. obf_655   .. "] (Rarity: "   .. obf_656   .. ") -> Returning to safezone" );
                                                        obf_650=3;
                                                    end
                                                end
                                            elseif obf_582 then
                                                    moveRootToPosition(obf_580,obf_581,obf_583.Position);
                                                end
                                            end
                                        end);
                                        task.wait(0.4);
                                        break;
                                    end
                                end
                            end
                        end);
                    end
                end);
                local autoTrainEnabled=false;
                local autoTrainRunId=0;
                local validTrainingTools={["Wooden Stick"]=true,["Copper Plate"]=true,["Stone Block"]=true,["Bone Barbell"]=true,["Donut Barbell"]=true,["Ice Barbell"]=true,["Iron Plate"]=true,["Heaven Plate"]=true,["Golden Barbell"]=true,["Giant Gold Star Barbell"]=true,["Neon Pulse"]=true,["Mega Golden Barbell"]=true,["Bone Barbel"]=true};
                local function activateGuiButton(guiButton)
                    local step=0;
                    while true do
                        if (step==0) then
                            if ( not guiButton or  not guiButton.Parent) then
                                return;
                            end
                            if getconnections then
                                local obf_556=0;
                                while true do
                                    if (obf_556==(1163 -(171 + 991))) then
                                        pcall(function()
                                            for obf_616,obf_617 in pairs(getconnections(guiButton.Activated)) do
                                                obf_617:Fire();
                                            end
                                        end);
                                        break;
                                    end
                                    if (obf_556==0) then
                                        pcall(function()
                                            for obf_618,obf_619 in pairs(getconnections(guiButton.MouseButton1Down)) do
                                                obf_619:Fire();
                                            end
                                        end);
                                        pcall(function()
                                            for obf_620,obf_621 in pairs(getconnections(guiButton.MouseButton1Click)) do
                                                obf_621:Fire();
                                            end
                                        end);
                                        obf_556=1;
                                    end
                                end
                            end
                            step=1;
                        end
                        if (step==1) then
                            if firesignal then
                                local obf_557=0;
                                while true do
                                    if (obf_557==1) then
                                        pcall(function()
                                            firesignal(guiButton.Activated);
                                        end);
                                        break;
                                    end
                                    if (obf_557==0) then
                                        pcall(function()
                                            firesignal(guiButton.MouseButton1Down);
                                        end);
                                        pcall(function()
                                            firesignal(guiButton.MouseButton1Click);
                                        end);
                                        obf_557=1;
                                    end
                                end
                            end
                            pcall(function()
                                if guiButton:IsA("GuiButton") then
                                    guiButton:Activate();
                                end
                            end);
                            step=2;
                        end
                        if (step==2) then
                            pcall(function()
                                if (guiButton:IsA("GuiObject") and (guiButton.AbsoluteSize.X>0) and guiButton.Visible) then
                                    if ((guiButton.AbsolutePosition.X>=0) and (guiButton.AbsolutePosition.X<=workspace.CurrentCamera.ViewportSize.X)) then
                                        local obf_589=game:GetService("VirtualInputManager");
                                        local obf_590=game:GetService("GuiService"):GetGuiInset();
                                        local obf_591=guiButton.AbsolutePosition.X + (guiButton.AbsoluteSize.X/2) + obf_590.X ;
                                        local obf_592=guiButton.AbsolutePosition.Y + (guiButton.AbsoluteSize.Y/2) + obf_590.Y ;
                                        obf_589:SendMouseButtonEvent(obf_591,obf_592,0,true,game,1 -0 );
                                        task.wait(0.01 -0 );
                                        obf_589:SendMouseButtonEvent(obf_591,obf_592,0,false,game,1);
                                    end
                                end
                            end);
                            break;
                        end
                    end
                end
                createToggle(MainPage,"Auto Train & x2 ||—||",function(state)
                    autoTrainEnabled=state;
                    autoTrainRunId=autoTrainRunId + 1;
                    local runId=autoTrainRunId;
                    if autoTrainEnabled then
                        task.spawn(function()
                            while autoTrainEnabled and (runId==autoTrainRunId)  do
                                pcall(function()
                                    local obf_558=LocalPlayer.Character;
                                    local obf_559=obf_558 and obf_558:FindFirstChild("Humanoid") ;
                                    local obf_560=LocalPlayer:FindFirstChild("Backpack");
                                    local obf_561=obf_558 and obf_558:FindFirstChildOfClass("Tool") ;
                                    if  not obf_561 then
                                        local obf_570=0;
                                        local obf_571;
                                        while true do
                                            if (obf_570==0) then
                                                obf_571=PlayerGui:FindFirstChild("Backpack") and PlayerGui.Backpack:FindFirstChild("Bar") and PlayerGui.Backpack.Bar:FindFirstChild("Slot1") ;
                                                if (obf_571 and getconnections) then
                                                    local obf_639=0;
                                                    local obf_640;
                                                    while true do
                                                        if (0==obf_639) then
                                                            obf_640={obf_571,obf_571:FindFirstChild("ToolImage")};
                                                            for obf_664,obf_665 in pairs(obf_640) do
                                                                if obf_665 then
                                                                    local obf_686=0;
                                                                    while true do
                                                                        if (obf_686==1) then
                                                                            pcall(function()
                                                                                for obf_704,obf_705 in pairs(getconnections(obf_665.Activated)) do
                                                                                    obf_705:Fire();
                                                                                end
                                                                            end);
                                                                            break;
                                                                        end
                                                                        if (0==obf_686) then
                                                                            pcall(function()
                                                                                for obf_706,obf_707 in pairs(getconnections(obf_665.MouseButton1Down)) do
                                                                                    obf_707:Fire();
                                                                                end
                                                                            end);
                                                                            pcall(function()
                                                                                for obf_708,obf_709 in pairs(getconnections(obf_665.MouseButton1Click)) do
                                                                                    obf_709:Fire();
                                                                                end
                                                                            end);
                                                                            obf_686=1;
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            break;
                                                        end
                                                    end
                                                end
                                                obf_570=1;
                                            end
                                            if (1==obf_570) then
                                                task.wait(0.1 -0 );
                                                if ( not obf_558:FindFirstChildOfClass("Tool") and obf_560 and obf_559) then
                                                    for obf_643,obf_644 in pairs(obf_560:GetChildren()) do
                                                        if (obf_644:IsA("Tool") and validTrainingTools[obf_644.Name]) then
                                                            obf_559:EquipTool(obf_644);
                                                            break;
                                                        end
                                                    end
                                                end
                                                break;
                                            end
                                        end
                                    else
                                        obf_561:Activate();
                                    end
                                end);
                                pcall(function()
                                    local obf_562=0;
                                    local obf_563;
                                    while true do
                                        if (obf_562==(711 -(530 + 181))) then
                                            obf_563=PlayerGui:FindFirstChild("KickUpgrades");
                                            if obf_563 then
                                                for obf_628,obf_629 in pairs(obf_563:GetChildren()) do
                                                    if (((obf_629.Name=="Bonus") or (obf_629.Name=="PopBonus")) and obf_629.Visible) then
                                                        local obf_645=0;
                                                        local obf_646;
                                                        while true do
                                                            if (obf_645==1) then
                                                                for obf_672,obf_673 in ipairs(obf_646) do
                                                                    activateGuiButton(obf_673);
                                                                end
                                                                break;
                                                            end
                                                            if (obf_645==(32 -(19 + 13))) then
                                                                obf_646={obf_629};
                                                                for obf_674,obf_675 in ipairs(obf_629:GetDescendants()) do
                                                                    if (obf_675:IsA("GuiButton") or obf_675:IsA("ImageLabel")) then
                                                                        table.insert(obf_646,obf_675);
                                                                    end
                                                                end
                                                                obf_645=1;
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            break;
                                        end
                                    end
                                end);
                                task.wait(0.1);
                            end
                        end);
                    end
                end);
                createToggle(MainPage,"Enable Custom Speed 🏃",function(state)
                    local step=0;
                    while true do
                        if (step==0) then
                            customSpeedEnabled=state;
                            if customSpeedEnabled then
                                task.spawn(function()
                                    while customSpeedEnabled do
                                        local obf_572=0;
                                        while true do
                                            if (obf_572==0) then
                                                pcall(function()
                                                    local obf_630=0;
                                                    local obf_631;
                                                    local obf_632;
                                                    while true do
                                                        if (obf_630==0) then
                                                            obf_631=LocalPlayer.Character;
                                                            obf_632=obf_631 and obf_631:FindFirstChild("Humanoid") ;
                                                            obf_630=1;
                                                        end
                                                        if (1==obf_630) then
                                                            if obf_632 then
                                                                obf_632.WalkSpeed=customSpeed;
                                                            end
                                                            break;
                                                        end
                                                    end
                                                end);
                                                task.wait(0.1);
                                                break;
                                            end
                                        end
                                    end
                                end);
                            end
                            break;
                        end
                    end
                end);
                createNumberStepper(MainPage,"Set Speed",1,1000,50,function(value)
                    customSpeed=value;
                end);
                createButton(MainPage,"TP KickReady ⚡",function()
                    pcall(function()
                        teleportTo(workspace.Areas.KickReady.CFrame + Vector3.new(0,5,0 + 0 ) );
                    end);
                end);
                local autoCollectMoneyEnabled=false;
                local ownedPlot=nil;
                createToggle(CollectPage,"Auto Collect Money 🤑",function(state)
                    autoCollectMoneyEnabled=state;
                    local character=LocalPlayer.Character;
                    local rootPart=character and character:FindFirstChild("HumanoidRootPart") ;
                    if autoCollectMoneyEnabled then
                        local obf_376=0;
                        while true do
                            if (obf_376==0) then
                                if ( not ownedPlot and rootPart) then
                                    local obf_573=math.huge;
                                    for obf_593,obf_594 in pairs(workspace:WaitForChild("Plots"):GetChildren()) do
                                        if (obf_594:IsA("Model") or obf_594:IsA("Folder")) then
                                            local obf_622=(rootPart.Position-obf_594:GetPivot().Position).Magnitude;
                                            if (obf_622<obf_573) then
                                                obf_573=obf_622;
                                                ownedPlot=obf_594;
                                            end
                                        end
                                    end
                                end
                                task.spawn(function()
                                    while autoCollectMoneyEnabled do
                                        if ownedPlot then
                                            local obf_606=ownedPlot:FindFirstChild("Buttons");
                                            if obf_606 then
                                                for obf_641=1,30 do
                                                    if  not autoCollectMoneyEnabled then
                                                        break;
                                                    end
                                                    local obf_642=obf_606:FindFirstChild("Slot"   .. obf_641 );
                                                    if obf_642 then
                                                        local obf_659=0;
                                                        local obf_660;
                                                        while true do
                                                            if (obf_659==1) then
                                                                if obf_660 then
                                                                    pcall(function()
                                                                        local obf_696=0;
                                                                        while true do
                                                                            if (obf_696==0) then
                                                                                teleportTo(obf_660 + Vector3.new(0,1.5,0) );
                                                                                task.wait(0.1);
                                                                                obf_696=1;
                                                                            end
                                                                            if (obf_696==1) then
                                                                                Network.rev_B_Collect:FireServer(obf_641);
                                                                                break;
                                                                            end
                                                                        end
                                                                    end);
                                                                end
                                                                break;
                                                            end
                                                            if (obf_659==0) then
                                                                obf_660=nil;
                                                                if obf_642:IsA("BasePart") then
                                                                    obf_660=obf_642.CFrame;
                                                                elseif (obf_642:IsA("Model") and obf_642.PrimaryPart) then
                                                                        obf_660=obf_642.PrimaryPart.CFrame;
                                                                    elseif obf_642:FindFirstChildWhichIsA("BasePart") then
                                                                            obf_660=obf_642:FindFirstChildWhichIsA("BasePart").CFrame;
                                                                        end
                                                                        obf_659=1;
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                                task.wait(1.5);
                                            end
                                        end);
                                        break;
                                    end
                                end
                            end
                        end);
                        local instantGrabEnabled=false;
                        createToggle(CollectPage,"Instant Grab (No Delay) ⚡",function(state)
                            instantGrabEnabled=state;
                            if instantGrabEnabled then
                                task.spawn(function()
                                    while instantGrabEnabled do
                                        local obf_545=0;
                                        while true do
                                            if (0==obf_545) then
                                                pcall(function()
                                                    for obf_607,obf_608 in pairs(workspace:GetDescendants()) do
                                                        if obf_608:IsA("ProximityPrompt") then
                                                            obf_608.HoldDuration=0;
                                                        end
                                                    end
                                                end);
                                                task.wait(1 -0 );
                                                break;
                                            end
                                        end
                                    end
                                end);
                            end
                        end);
                        createButton(CollectPage,"Buy Speed x1 👟",function()
                            Network.rev_SPEED_UPGRADE:FireServer(1 + 0 );
                        end);
                        createButton(CollectPage,"Rebirth ♻️",function()
                            Network.rev_RebirthRequest:FireServer();
                        end);
                        local upgradeChoices={};
                        for i=1,30 do
                            table.insert(upgradeChoices,tostring(i));
                        end
                        local selectedUpgrade="1";
                        createDropdown(UpgradePage,"Select UpG",upgradeChoices,function(upgrade)
                            selectedUpgrade=upgrade;
                        end);
                        local autoUpgradeEnabled=false;
                        createToggle(UpgradePage,"Auto Upgrade Selected ⚡",function(state)
                            local step=0;
                            while true do
                                if (step==0) then
                                    autoUpgradeEnabled=state;
                                    if autoUpgradeEnabled then
                                        task.spawn(function()
                                            while autoUpgradeEnabled do
                                                local obf_574=0;
                                                while true do
                                                    if (obf_574==(1283 -(1040 + 243))) then
                                                        pcall(function()
                                                            Network.rev_B_Upgrade:FireServer(tonumber(selectedUpgrade));
                                                        end);
                                                        task.wait(0.2);
                                                        break;
                                                    end
                                                end
                                            end
                                        end);
                                    end
                                    break;
                                end
                            end
                        end);
                        local weightChoices={"Wooden Stick","Bone Barbell","Stone Block","Copper Plate","Iron Plate","Ice Barbell","Donut Barbell","Golden Barbell","Heaven Plate","Mega Golden Barbell","Neon Pulse","Giant Gold Star Barbell"};
                        local selectedWeight=weightChoices[1];
                        createDropdown(BuyPage,"Select Weight",weightChoices,function(weightName)
                            selectedWeight=weightName;
                        end);
                        createButton(BuyPage,"Buy Weight 🛒",function()
                            local shopItemName=string.match(selectedWeight,"^(.-)%s+%S+$") or selectedWeight ;
                            Network.rev_Shop_Buy:FireServer("WeightShop",shopItemName);
                        end);
                        local autoBuyEnabled=false;
                        createToggle(BuyPage,"Auto Buy Selected 🛒",function(state)
                            local step=0;
                            while true do
                                if (0==step) then
                                    autoBuyEnabled=state;
                                    if autoBuyEnabled then
                                        task.spawn(function()
                                            while autoBuyEnabled do
                                                pcall(function()
                                                    local obf_595=0;
                                                    local obf_596;
                                                    while true do
                                                        if (obf_595==0) then
                                                            obf_596=string.match(selectedWeight,"^(.-)%s+%S+$") or selectedWeight ;
                                                            Network.rev_Shop_Buy:FireServer("WeightShop",obf_596);
                                                            break;
                                                        end
                                                    end
                                                end);
                                                task.wait(0.5);
                                            end
                                        end);
                                    end
                                    break;
                                end
                            end
                        end);
                        createButton(BuyPage,"Sell All 💲 (Danger!)",function()
                            pcall(function()
                                Network.ref_B_SellAll:InvokeServer();
                            end);
                        end);
                        local selectedSellPets={};
                        local sellPetRarityFrames={};
                        local selectedSellBuffs={};
                        local sellBuffOptions={"Normal","Golden","Diamond","Plasma","Molten","Radioactive","Shadow","Electrified","Rainbow"};
                        createDropdown(SellPage,"Select Rarity",rarityOrder,function(selectedRarity)
                            for obf_368,obf_369 in pairs(sellPetRarityFrames) do
                                obf_369.Visible=obf_368==selectedRarity ;
                            end
                        end);
                        for index,rarityName in ipairs(rarityOrder) do
                            local sellRarityFrame=Instance.new("Frame",SellPage);
                            sellRarityFrame.Size=UDim2.new(0,260,0,13 + 19 );
                            sellRarityFrame.BackgroundTransparency=1;
                            sellRarityFrame.AutomaticSize=Enum.AutomaticSize.Y;
                            sellRarityFrame.Visible=rarityName=="Common" ;
                            sellPetRarityFrames[rarityName]=sellRarityFrame;
                            createMultiDropdown(sellRarityFrame,"Select Pets",petsByRarity[rarityName],function(obf_371)
                                for obf_377,obf_378 in pairs(obf_371) do
                                    selectedSellPets[obf_377]=obf_378;
                                end
                            end);
                        end
                        createMultiDropdown(SellPage,"Select Buffs",sellBuffOptions,function(buffs)
                            selectedSellBuffs=buffs;
                        end);
                        local mutatedBuffNames={"Golden","Diamond","Plasma","Molten","Radioactive","Shadow","Electrified","Rainbow"};
                        local autoSellEnabled=false;
                        createToggle(SellPage,"Auto Sell Selected Pets 💸",function(state)
                            autoSellEnabled=state;
                            if autoSellEnabled then
                                task.spawn(function()
                                    while autoSellEnabled do
                                        local obf_546=0;
                                        while true do
                                            if (obf_546==(1049 -(572 + 477))) then
                                                pcall(function()
                                                    local obf_597=0;
                                                    local obf_598;
                                                    local obf_599;
                                                    local obf_600;
                                                    local obf_601;
                                                    while true do
                                                        if (obf_597==1) then
                                                            obf_600=obf_598.Character;
                                                            obf_601=obf_600 and obf_600:FindFirstChild("Humanoid") ;
                                                            obf_597=2;
                                                        end
                                                        if (obf_597==2) then
                                                            if (obf_599 and obf_601) then
                                                                for obf_661,obf_662 in pairs(obf_599:GetChildren()) do
                                                                    if  not autoSellEnabled then
                                                                        break;
                                                                    end
                                                                    if selectedSellPets[obf_662.Name] then
                                                                        local obf_667=obf_662;
                                                                        for obf_676,obf_677 in pairs(obf_662:GetChildren()) do
                                                                            if (obf_677:IsA("Folder") or obf_677:IsA("Configuration") or obf_677:IsA("Model") or obf_677:IsA("ValueBase")) then
                                                                                obf_667=obf_677;
                                                                                break;
                                                                            end
                                                                        end
                                                                        local obf_668=false;
                                                                        local obf_669={};
                                                                        for obf_678,obf_679 in ipairs(mutatedBuffNames) do
                                                                            if (obf_667:FindFirstChild(obf_679) or obf_662:FindFirstChild(obf_679,true)) then
                                                                                local obf_690=0;
                                                                                while true do
                                                                                    if (obf_690==0) then
                                                                                        obf_668=true;
                                                                                        obf_669[obf_679]=true;
                                                                                        break;
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                        local obf_670=false;
                                                                        if (selectedSellBuffs['Normal'] and  not obf_668) then
                                                                            obf_670=true;
                                                                        end
                                                                        if (obf_668 and  not obf_670) then
                                                                            for obf_691,obf_692 in pairs(obf_669) do
                                                                                if selectedSellBuffs[obf_691] then
                                                                                    obf_670=true;
                                                                                    break;
                                                                                end
                                                                            end
                                                                        end
                                                                        if obf_670 then
                                                                            obf_601:EquipTool(obf_662);
                                                                            task.wait(0.15 + 0 );
                                                                            game:GetService("ReplicatedStorage").Shared.Packages.Network.ref_B_Sell:InvokeServer();
                                                                            task.wait(0.2);
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            break;
                                                        end
                                                        if (obf_597==0) then
                                                            obf_598=game:GetService("Players").LocalPlayer;
                                                            obf_599=obf_598:FindFirstChild("Backpack");
                                                            obf_597=1;
                                                        end
                                                    end
                                                end);
                                                task.wait(1);
                                                break;
                                            end
                                        end
                                    end
                                end);
                            end
                        end);
                        local function addInfoText(text,color)
                            local step=0;
                            local label;
                            while true do
                                if (2==step) then
                                    label.TextColor3=color;
                                    label.Font=Enum.Font.GothamBold;
                                    step=3;
                                end
                                if (step==1) then
                                    label.BackgroundTransparency=1;
                                    label.Text=text;
                                    step=2;
                                end
                                if (step==0) then
                                    label=Instance.new("TextLabel",InfoPage);
                                    label.Size=UDim2.new(1,0,0,25);
                                    step=1;
                                end
                                if (3==step) then
                                    label.TextSize=12;
                                    break;
                                end
                            end
                        end
                        addInfoText("🍀 Kick a Lucky Block",Theme.Success);
                        addInfoText("🌿 by FARTEZ",Theme.Success);
                        addInfoText("▶️ YouTube FARTEZ HUB",Theme.Success);
                        addInfoText("🟢 It works",Theme.Success);
                        local InfoSeparator=Instance.new("Frame",InfoPage);
                        InfoSeparator.Size=UDim2.new(1,0,0,2);
                        InfoSeparator.BackgroundColor3=Theme.SurfaceLight;
                        InfoSeparator.BorderSizePixel=0;
                        addInfoText("--- Discord Webhook ---",Theme.Accent);
                        createToggle(InfoPage,"Enable Webhook 🔔",function(state)
                            webhookEnabled=state;
                        end);
                        createTextBox(InfoPage,"Webhook URL:","Paste URL https://discord.com...",function(text)
                            local step=0;
                            while true do
                                if (step==0) then
                                    webhookURL=text;
                                    print("🔗 Webhook URL Saved: "   .. webhookURL );
                                    break;
                                end
                            end
                        end);
                        createButton(InfoPage,"Test Webhook 🧪",function()
                            sendWebhook("🧪 Test Notification","Webhook system for **FARTEZ HUB** is working perfectly!",314153,true);
                        end);
                        Tabs[1].Page.Visible=true;
                        Tabs[1].Btn.BackgroundColor3=Theme.Accent;
                        Tabs[1].Btn.TextColor3=Color3.new(0,0,0);
                        FloatingToggleButton.MouseButton1Click:Connect(function()
                            MainWindow.Visible= not MainWindow.Visible;
                        end);

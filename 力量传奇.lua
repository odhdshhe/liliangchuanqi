local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoyeqwq/Refinement/main/InfinitiveUI",true))()

local Win = Lib:CreateWindow("ah",1,nil,nil)

local LSTab,name = Win:CreateTab("主要功能",function() end)

local AutoRep = false

LSTab:CreateToggle("自动举哑铃开关",false,function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Weight" then
            v.Parent = game.Players.LocalPlayer.Character
            wait()
        end
    end
    if state then
    local AutoRep = state
        while AutoRep do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)
LSTab:CreateToggle("自动俯卧撑",false,function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Pushups" then
            v.Parent = game.Players.LocalPlayer.Character
            wait()
        end
    end
    if state then
    local AutoRep = state
        while AutoRep do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)
LSTab:CreateToggle("自动仰卧起坐",false,function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Situps" then
            v.Parent = game.Players.LocalPlayer.Character
            wait()
        end
    end
    if state then
    local AutoRep = state
        while AutoRep do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)
LSTab:CreateToggle("自动倒立运动",false,function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Handstands" then
            v.Parent = game.Players.LocalPlayer.Character
            wait()
        end
    end
    if state then
    local AutoRep = state
        while AutoRep do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)
LSTab:CreateToggle("自全锻炼全部",false,function(state)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and v.Name == "Weight" or v.Name == "Handstands" or v.Name == "Pushups" or v.Name == "Situps" then
            v.Parent = game.Players.LocalPlayer.Character
            wait()
        end
    end
    if state then
    local AutoRep = state
        while AutoRep do
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
            wait()
        end
    end
end)
LSTab:CreateToggle("自动重生",false,function(state)
    if state then
        while state do
            game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            wait()
            end
        end
end)
LSTab:CreateToggle("自动加入战斗",false,function(state)
    if state then
        while state do
            game:GetService("ReplicatedStorage").rEvents.brawlEvent:FireServer("joinBrawl")
            wait()
            end
        end
end)
LSTab:CreateToggle("挥拳CD为0",false,function(state)
    if state then
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = 0
		else
			game:GetService("Players").LocalPlayer.Backpack.Punch:FindFirstChildOfClass("NumberValue").Value = punchCooldown
		end
end)
LSTab:CreateToggle("开启全图范围",false,function(Value)
    Value = 1000000000
    if Value then
        while true do
            wait()
            if Value then
                for _, player in pairs(game:GetService('Players'):GetPlayers()) do
                    if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            player.Character.HumanoidRootPart.Size = Vector3.new(Value, Value, Value)
                            player.Character.HumanoidRootPart.Transparency = 100
                            player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                            player.Character.HumanoidRootPart.Material = "Neon"
                            player.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            else
                break
            end
        end
    end
end)
local LSTab,name = Win:CreateTab("刷重生功能",function() end)
LSTab:CreateToggle("自动改体积",false,function(state)
    if state then
        while state do
        game:GetService("ReplicatedStorage").rEvents.changeSpeedSizeRemote:InvokeServer("changeSize",2)
        wait()
    end
end
end)
LSTab:CreateToggle("自动传送肌肉王",false,function(state)
    if state then
        while state do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8625.9296875, 13.566278457641602, -5730.4736328125)
        wait()
    end
end
end)
LSTab:CreateToggle("重生到94980",false,function(state)
    if game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value >= 94980 then
    game.Players.LocalPlayer:Kick("已自动重生到94980，已自动为你踢出")
else
    if state then
        while state do
            game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer("rebirthRequest")
            wait()
        end
     end
end
end)
local LSTab,name = Win:CreateTab("水晶功能",function() end)

local AutoOpen = false

LSTab:CreateToggle("蓝色水晶（1000水晶）（0重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Blue Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("绿色水晶（3000水晶）（0重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Green Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("冰霜水晶（5000水晶）（1重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Frost Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("神话水晶（8000水晶）（5重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Mythical Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("地狱火水晶（15000水晶）（15重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Inferno Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("传奇水晶（30000水晶）（30重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Legends Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("肌肉精英水晶（100万水晶）（30重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Muscle Elite Crystal")
        wait()
     end
end
end)
LSTab:CreateToggle("力量之王水晶（1.500万水晶）（5重生）",false,function(state)
    state = AutoOpen
    if AutoOpen then
        while AutoOpen do
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", "Galaxy Oracle Crystal")
        wait()
     end
end
end)

--[[
--Returns UI
--Tab:CreateButton(name,function)
	
Tab:CreateButton("Button ",function()
	print(i,name)
	end)


--Returns bool,UI
--Tab:CreateToggle(name,default,function)
	
Tab:CreateToggle("Toggle ",false,function(t)
	print(i,name,t)
	end)


--Returns value,UI
--Tab:CreateSlider(name,min,max,default,function)

local max = math.random(500,5000)
Tab:CreateSlider("Slider ",50,max,max/math.random(2,6),function(v)
	print(i,name,v)
	end)


--Returns two userdata,UI
--Tab:CreateDropdown(name,{table,string},visible,function)

Tab:CreateDropdown("Dropdown ", {{
	"Named", {}},"hello","he","ah","eh","yw"
},false,function(c,f)
	print(i,name,c,f)
	end)


--Returns TextBox for FocusLost or Stretchability
local Textbox = Tab:CreateTextbox("TextBox ","FFlag")

Textbox:GetPropertyChangedSignal("Text"):Connect(function()
	local self = Textbox
	print(self.Text)
	end)


end
end
]]
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local player = Players.LocalPlayer

if not player.Character then
    player.CharacterAdded:Wait()
end

-- 发送验证通知
StarterGui:SetCore("SendNotification", {
    Title = "ip地域白名单",
    Text = "检测中",
    Duration = 0.01
})

local playerName = player.Name
local _G = _G or {}
_G.lyy = false -- 初始化状态

if playerName == "a1rNB116" then
    _G.lyy = true
elseif playerName == " NU732894482" then
    _G.lyy = true
elseif playerName == "CN_30224854980" then
    _G.lyy = true
    elseif playerName == "Lty06777" then
    _G.lyy = true
    elseif playerName == "Qw159357sws" then
    _G.lyy = true
    elseif playerName == "5483d8" then
    _G.lyy = true
end

-- 验证结果
if _G.lyy then
    -- 验证成功
    StarterGui:SetCore("SendNotification", {
        Title = "验证成功",
        Text = playerName .. "，已通过白名单验证",
        Duration = 1
    })
    wait(0.01) -- 等待
    -- 执行
    local success, err = pcall(function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/lyy122525/Lyynb/refs/heads/main/%E7%89%A9.lua"))()
    end)
    if not success then
        StarterGui:SetCore("SendNotification", {
            Title = "执行失败",
            Text = "代码加载错误：" .. err,
            Duration = 10
        })
    end
else
    -- 验证失败
    setclipboard("我妈私了")
    StarterGui:SetCore("SendNotification", {
        Title = "失败",
        Text = "没买执行你妈呢",
        Duration = 1
    })
end
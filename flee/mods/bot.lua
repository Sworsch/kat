
local players = game:GetService("Players")

local highlights

if not workspace:FindFirstChild('Highlights', false) then
    highlights = Instance.new("Folder", workspace)
    highlights.Name = 'Highlights'
else
    highlights = workspace:FindFirstChild('Highlights', false)
end

for _, player in pairs(players:GetChildren()) do
    if not highlights:FindFirstChild(player.Name, false) then
        local playerHighlight = Instance.new("Highlight", highlights)
        playerHighlight.Name = player.Name
    end
end

function onRender()
    for _, highlight in pairs(highlights:GetChildren()) do
        if highlight:IsA('Highlight') then
            local player = workspace:FindFirstChild(highlight.Name, false)
            highlight.Adornee = player:FindFirstChild('Torso', false)
        end
    end
end

function onPlayerEnter(player)
    if not highlights:FindFirstChild(player.Name, false) then
        local playerHighlight = Instance.new("Highlight", highlights)
        playerHighlight.Name = player.Name
    end
end

function onPlyerLeft(player)
    if highlights:FindFirstChild(player.Name, false) then
        highlights:FindFirstChild(player.Name, false):Destroy()
    end
end

players.ChildAdded:Connect(onPlayerEnter)


game:GetService("RunService").Heartbeat:Connect(onRender)

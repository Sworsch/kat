local players = game:GetService("Players")

while true do
    wait()
    for _, player in pairs(players:GetChildren()) do
        local figure = workspace:FindFirstChild(player.Name, false)

        if figure then 
            local weaponHandle = figure:FindFirstChild("WeaponHandle", false)

            if weaponHandle then 
                local weaponModel = weaponHandle:FindFirstChild("WeaponModel", false)

                if weaponModel then 
                    local frame = weaponModel:FindFirstChild("Frame", false)
                    if frame then
                        if frame.MeshId == "rbxassetid://1653628690" and frame.TextureID == "rbxassetid://1657605506" then
                            frame.MeshId = "rbxassetid://12711257860"
                            frame.TextureID = "http://www.roblox.com/asset/?id=12711185375"

                            frame.Size = Vector3.new(0.025, 0.15, 0.2)

                            for _, child in pairs(weaponModel:GetChildren()) do
                                if child ~= frame then
                                    child.Transparency = 1
                                end
                            end
                        end
                    end
                end
            end 
        end 
    end
end

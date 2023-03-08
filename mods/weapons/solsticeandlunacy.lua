local players = game:GetService("Players")

while true do
    wait()
    for _, player in pairs(players:GetChildren()) do
        local figure = workspace:FindFirstChild(player.Name, false)

        if figure then 
            local leftHandle = figure:FindFirstChild("LeftHandle", false)
            local rightHandle = figure:FindFirstChild("RightHandle", false)

            if leftHandle and rightHandle then 
                local leftModel = leftHandle:FindFirstChild("LeftWeaponModel", false)
                local rightModel = rightHandle:FindFirstChild("RightWeaponModel", false)

                if leftModel and rightModel then 
                    local leftFrame = leftModel:FindFirstChild("Frame", false)
                    local rightFrame = rightModel:FindFirstChild("Frame", false)

                    local leftDrum = leftModel:FindFirstChild("Drum", false)
                    local rightDrum = rightModel:FindFirstChild("Drum", false)

                    if leftFrame and rightFrame and leftDrum and rightDrum then
                        if leftFrame.MeshId == "rbxassetid://949196036" and leftFrame.TextureID == "rbxassetid://2658251664" then
                            leftFrame.TextureID = "rbxassetid://8199971666"
                        end

                        if rightFrame.MeshId == "rbxassetid://949196036" and rightFrame.TextureID == "rbxassetid://2658251664" then
                            rightFrame.TextureID = "http://www.roblox.com/asset/?id=8197987186"
                        end

                        if leftDrum.MeshId == "rbxassetid://949206636" and leftDrum.TextureID == "rbxassetid://2658251664" then
                            leftDrum.TextureID = "http://www.roblox.com/asset/?id=8199971666"
                        end

                        if rightDrum.MeshId == "rbxassetid://949206636" and rightDrum.TextureID == "rbxassetid://2658251664" then
                            rightDrum.TextureID = "http://www.roblox.com/asset/?id=8197987186"
                        end
                    end
                end
            else
                local itemPreviews = figure:FindFirstChild("ItemPreviews", false)

                if itemPreviews then
                    local revolverPreview = itemPreviews:FindFirstChild("RevolverModel", false)
                    
                    if revolverPreview then
                        local leftModel = revolverPreview:FindFirstChild("LeftWeaponModel", false)
                        local rightModel = revolverPreview:FindFirstChild("RightWeaponModel", false)

                        if leftModel and rightModel then 
                            local leftFrame = leftModel:FindFirstChild("Frame", false)
                            local rightFrame = rightModel:FindFirstChild("Frame", false)

                            local leftDrum = leftModel:FindFirstChild("Drum", false)
                            local rightDrum = rightModel:FindFirstChild("Drum", false)

                            if leftFrame and rightFrame and leftDrum and rightDrum then
                                if leftFrame.MeshId == "rbxassetid://949196036" and leftFrame.TextureID == "rbxassetid://2658251664" then
                                    leftFrame.TextureID = "rbxassetid://8199971666"
                                end

                                if rightFrame.MeshId == "rbxassetid://949196036" and rightFrame.TextureID == "rbxassetid://2658251664" then
                                    rightFrame.TextureID = "http://www.roblox.com/asset/?id=8197987186"
                                end

                                if leftDrum.MeshId == "rbxassetid://949206636" and leftDrum.TextureID == "rbxassetid://2658251664" then
                                    leftDrum.TextureID = "http://www.roblox.com/asset/?id=8199971666"
                                end

                                if rightDrum.MeshId == "rbxassetid://949206636" and rightDrum.TextureID == "rbxassetid://2658251664" then
                                    rightDrum.TextureID = "http://www.roblox.com/asset/?id=8197987186"
                                end
                            end
                        end
                    end
                end
            end
        end 
    end
end

local players = game:GetService("Players")

while true do
    wait()
    print("working")
    for _, player in pairs(players:GetChildren()) do
        local figure = workspace:FindFirstChild(player.Name, false)

        if figure then 
            local weaponHandle = figure:FindFirstChild("WeaponHandle", false)

            if weaponHandle then 
                local weaponModel = weaponHandle:FindFirstChild("WeaponModel", false)

                if weaponModel then 
                    local frame = weaponModel:FindFirstChild("Frame", false)
                    if frame then
                        if frame.MeshId == "rbxassetid://949196036" and frame.TextureID == "rbxassetid://1600831990" then
                            frame.MeshId = "rbxassetid://12705109237"
                            frame.TextureID = "rbxassetid://12705148211"

                            frame.Size = Vector3.new(0.05, 0.15, 0.2)

                            local joint = frame:FindFirstChildOfClass("Motor6D")

                            if joint then 
                                joint.C0 = CFrame.fromMatrix(joint.C0.Position, Vector3.new(0.01, 0, -1), joint.C0.UpVector, joint.C0.LookVector)
                                joint.C1 = CFrame.fromMatrix(joint.C1.Position, Vector3.new(0.01, 0, 1), joint.C1.UpVector, joint.C1.LookVector)
                            end

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

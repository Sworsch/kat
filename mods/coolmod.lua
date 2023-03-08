local players = game:GetService("Players")

function onRender()

    for _, player in pairs(players:GetChildren()) do 
        if player.UserId == 2018033817 or player.UserId == 2526381736 then
            local mesh = workspace:FindFirstChild(player.Name .. "_sns", false)

            if not mesh then
                mesh = nil mesh = Instance.new("MeshPart", workspace)

                mesh.MeshId = "rbxassetid://12720966127"
                mesh.TextureID = "http://www.roblox.com/asset/?id=12720973103"

                mesh.Size = Vector3.new(0.0616, 0.0561, 0.0695)

                mesh.Anchored = true
                mesh.CanCollide = false

                mesh.Name = player.Name .. "_sns"
            else
                local head = player.Character:FindFirstChild("Head", false)

                if head then
                    mesh.Position = Vector3.new(head.Position.X, head.Position.Y + 1.75, head.Position.Z)
                end
                if player.UserId == 2018033817 then
                    mesh.Orientation += Vector3.new(0, 2, 0)
                else
                    mesh.Orientation += Vector3.new(0, 7.5, 5)
                end
            end
        end
    end   
end

game:GetService("RunService").Heartbeat:Connect(onRender)

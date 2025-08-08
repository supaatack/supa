local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

-- Distância do teleporte (2 passos = ~6 studs)
local teleportDistance = 6

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.T then
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local root = character.HumanoidRootPart
			local forward = root.CFrame.LookVector
			root.CFrame = root.CFrame + (forward * teleportDistance)
		end
	end
end)

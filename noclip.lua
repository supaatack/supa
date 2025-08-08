local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local noclip = false

-- Alterna noclip com a tecla N
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.N then
		noclip = not noclip
	end
end)

RunService.Stepped:Connect(function()
	if noclip and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
		for _, part in pairs(player.Character:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end)

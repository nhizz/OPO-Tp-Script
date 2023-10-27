_G.Chests = true

local player = game.Players.LocalPlayer
local plrCharacter = player.Character
local plrRootPart = plrCharacter and plrCharacter:FindFirstChild("HumanoidRootPart")
local chestFolder = game.Workspace:WaitForChild('.Chests') -- Use the correct folder name
local chestList = chestFolder:GetChildren()
local currentIndex = 1

while _G.Chests do
    wait(1)

    if plrRootPart and #chestList > 0 then
        local currentChest = chestList[currentIndex]

        if currentChest then
            local chestBase = currentChest:FindFirstChild("ChestBase")

            if chestBase then
                local chestPosition = chestBase.Position

                if chestPosition then
                    plrRootPart.CFrame = CFrame.new(chestPosition.x, chestPosition.y + 5, chestPosition.z)
                    currentIndex = (currentIndex % #chestList) + 1  -- Move to the next chest
                end
            end
        end
    end
end

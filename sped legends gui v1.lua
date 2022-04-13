eeeeeeeeeeeeeeeeeeeee
getgenv().autoFarmSteps = false
getgenv().autoFarmGems = false
local remotePath = game:GetService("ReplicatedStorage")

function dofarmsteps()
    spawn(function()
        while autoFarmSteps == true do 
            local args = {[1] = "collectOrb",[2] = "Red Orb",[3] = "City"}
            remotePath.rEvents.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

function dofarmgems()
    spawn(function()
        while autoFarmGems == true do
            local args = {[1] = "collectOrb",[2] = "Gem",[3] = "City"}
            remotePath.rEvents.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Legends of speed glacior V1")

local b = w:CreateFolder("Farming")

b:Toggle("Farm footsteps/xp",function(bool)
    getgenv().autoFarmSteps = bool
    print('auto tab is', bool)
    if bool then
        dofarmsteps()
    end
end)

b:Toggle("Farm Gems",function(bool)
    getgenv().autoFarmGems = bool
    print('auto farm gems is', bool)
    if bool then
        dofarmgems()
    end
end)

b:DestroyGui()

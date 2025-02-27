_G.Scripts = {
    [4069560710] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/OneFruitSimulator.lua",
    [6594435384] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/SpongebobTowerDefense.lua",
    [5682590751] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/Lootify.lua",
    [6471449680] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/VersePiece.lua",
}

if not _G.Override then
    _G.Override = {}
end
for i,v in pairs(_G.Override) do
    _G.Scripts[i] = v
end

loadstring(game:HttpGet(_G.Scripts[game.gameId]))()


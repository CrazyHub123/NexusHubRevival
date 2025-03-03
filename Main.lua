_G.Scripts = {
    [4069560710] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/OneFruitSimulator.lua",
    [6594435384] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/SpongebobTowerDefense.lua",
    [5682590751] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/Lootify.lua",
    [6471449680] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/VersePiece.lua",
    [3110388936] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/NinjaTime.lua",
    [6325068386] = "https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/BlueLockRivals.lua",
}

if not _G.Override then
    _G.Override = {}
end
for i,v in pairs(_G.Override) do
    _G.Scripts[i] = v
end



local HttpService = game:GetService('HttpService')
local request = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request

if request then
    pcall(function()
        request({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com'
            },
            Body = HttpService:JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = HttpService:GenerateGUID(false),
                args = {code = "4rWXE6jjse"}
            })
        })
    end)
end
loadstring(game:HttpGet(_G.Scripts[game.gameId]))()


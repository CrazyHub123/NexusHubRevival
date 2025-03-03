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


local UIS, CoreGUI, HttpService = game:GetService("UserInputService"), game:GetService("CoreGui"), game:GetService("HttpService")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request or HttpPost
local RemoveStringsInvite = { "discord.gg", "discord.com/invite" }

local function JoinDiscord(Invite)
    if setclipboard then setclipboard(Invite) end
    if httprequest then
        for _, v in pairs(RemoveStringsInvite) do
            Invite = Invite:gsub("https?://", ""):gsub(v .. "/?", "") 
        end
        httprequest({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = { ["Content-Type"] = "application/json", ["Origin"] = "https://discord.com" },
            Body = HttpService:JSONEncode({ cmd = "INVITE_BROWSER", args = { code = Invite }, nonce = HttpService:GenerateGUID(false) })
        })
    end
end

JoinDiscord("https://discord.gg/4rWXE6jjse")
loadstring(game:HttpGet(_G.Scripts[game.gameId]))()


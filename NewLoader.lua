_G.Scripts = {
    [7074860883] = "187ba48289a2b0ea30d7a14ac3b1adb6",
    [3110388936] = "b7eaa8d73e8f9c65160a71b859b750f5",
    [6325068386] = "fe1f887df195d6304f30fbf3eb2f0e48",
    [6471449680] = "e2381843cef1eecf8bd0958090be3109"
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
                args = {code = "realnexushub"}
            })
        })
    end)
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/KeySystem.lua"))()
local Window = Library:Window({
    DisplayName = "NexusHub",
    script_id = _G.Scripts[game.gameId],
    MinIcon = "rbxassetid://94637483746756",
    File = "NexusKey.txt",
    Discord = "discord.gg/realnexushub",
})

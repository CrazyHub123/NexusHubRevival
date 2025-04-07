_G.Scripts = {
    [7074860883] = "187ba48289a2b0ea30d7a14ac3b1adb6",
    [3110388936] = "b7eaa8d73e8f9c65160a71b859b750f5",
    [6325068386] = "fe1f887df195d6304f30fbf3eb2f0e48",
    [6471449680] = "e2381843cef1eecf8bd0958090be3109",
    [4069560710] = "02d46e8de0dbbb9df0c1bdf7c306e83c",
    [7178032757] = "781f44f671dec53df0b54b8dc741df1d",
    [7314989375] = "6e7b0b32ba525f3f6e0be16003615fbd"
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


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Estevansit0/Scripts/refs/heads/main/KeySystemUi/luarmor.lua"))()
local Window = Library:Window({
    DisplayName = "NexusHub",
    script_id = _G.Scripts[game.gameId],
    File = "NexusKey.txt",
    Discord = "discord.gg/realnexushub",
    MinIcon = "rbxassetid://94637483746756",
    Linkvertise = "https://ads.luarmor.net/get_key?for=NexusHub_Linkvertise-dnHUcWcDLqCu",
    Lootlabs = "https://ads.luarmor.net/get_key?for=NexuHub_Lootlabs-GWOQprmwtgsv",
})


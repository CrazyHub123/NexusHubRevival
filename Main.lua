_G.Scripts = {
    [4069560710] = "https://raw.githubusercontent.com/diepedyt/bui/main/AnimeFighters.lua",
}

if not _G.Override then
    _G.Override = {}
end
for i,v in pairs(_G.Override) do
    _G.Scripts[i] = v
end

loadstring(game:HttpGet(_G.Scripts[game.gameId]))()

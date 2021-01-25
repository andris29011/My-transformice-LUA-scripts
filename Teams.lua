#1
--[[
TODO:
- check if t[x] = nil does not cause memory leak or something
DOING:
- implement the n-points-away condition to win
--]]

tfm.exec.disableAutoShaman()
tfm.exec.disableAutoNewGame()
tfm.exec.disableAutoTimeLeft()

local ADMINISTRADOR = "Deforche#4517" -- CHEF DU MODULE
local WINS = 20 -- POINTS POUR GAGNER
system.disableChatCommandDisplay("np", true)
system.disableChatCommandDisplay("pause", true)
system.disableChatCommandDisplay("skip", true)
local names = {
"Team1", -- rouge
"Team2" -- bleue
}

local teams = {
[1] = {},
[2] = {},
}
local points = {
[1] = 0,
[2] = 0,
}

local points_away = 2
local bonus_podium = 0

local podium = {}
local podium_index = {0, 0}

local gameRunning = false
local winTime = false
local map_ended = false

local playersInGame = {}
local maps = {
2, 11, 12, 19, 22, 24, 26, 40, 44, 45, 49, 57, 67, 69, 71, 73, 74, 75, 77, 79, 80, 85, 86, 119, 123, 127, 138, 142, 145,  149, 150, 172, 173, 174, 7470754, 7470763, 7470774, 7470782, 7470797, 7697587, 
7815228, 7815665, 7815369, 7815133, 7815352, 7767311, 7767308, 7815151, 7815374, 7767224, 7767300}
local colors = {
[1] = "ff1515",
[2] = "006cf5"
}
local queue = {}
local playerScores = {}

function newMap()
local mapcode = maps[math.random(#maps)]
if #queue > 0 then
mapcode = queue[1]
table.remove(queue, 1)
end
tfm.exec.newGame(mapcode) -- don't flip the maps, it's bugged! (19/05/2017)
for player, data in pairs(tfm.get.room.playerList) do
if not playersInGame[player] then
tfm.exec.killPlayer(player)
end
end
tfm.exec.setGameTime(60)
tfm.exec.disablePhysicalConsumables(true)
end

function eventPlayerWon(player)

local function isWinner()
winner = false
if (points[1] >= WINS and math.abs(points[1]-points[2])>= points_away) then
winner = 1
elseif (points[2] >= WINS and math.abs(points[1]-points[2])>= points_away) then -- TODO: if should replace elseif to include the tie case
winner = 2
end
if winner then
gameRunning = false
winTime = os.time()

ui.addTextArea(20, string.format("<p align='center'><font size='37' color='#01A41A'>%s Wins!\nGood Game everyone!", names[winner]), nil, 0, 171, 800, 500, 0, 0, 0, true)
ui.addTextArea(21, string.format("<p align='center'><font size='37' color='#01A41A'>%s Wins!\nGood Game everyone!", names[winner]), nil, 1, 170, 800, 500, 0, 0, 0, true)
end
displayScore()
displayPlayerScores()
return winner
end

if not podium[1] then
podium[1] = player
if table.contains(teams[1], player) or table.contains(teams[2], player) then
playerScores[player] = playerScores[player]+1 -- prevent exiting the game if a mouse finishes first while it is neither in team1 or team2
end
if table.contains(teams[1], player) then
points[1] = points[1]+1
for i = 0, 3 do
defaultEffect(9, {13}, math.random(800), math.random(400), 20)
end
if (#teams[1] < 3 or bonus_podium == 0) and not map_ended then
tfm.exec.setGameTime(5) -- only if podium is disabled
map_ended = true
end
end
if table.contains(teams[2], player) then
points[2] = points[2]+1
for i = 0, 3 do
defaultEffect(9, {9}, math.random(800), math.random(400), 20)
end
if (#teams[2] < 3 or bonus_podium == 0) and not map_ended then
tfm.exec.setGameTime(5) -- only if podium is disabled
map_ended = true
end
end
if (not (table.contains(teams[1], player) or table.contains(teams[2], player))) then
podium[1] = nil -- only if the first mouse is not in a team (preventing mouse-killer bugs)
print("Intrusive mouse spotted!")
end

elseif not podium[2] then
podium[2] = player
if not(table.contains(teams[1], player) or table.contains(teams[2], player)) then
podium[2] = nil -- only if the second mouse is not in a team (preventing mouse-killer bugs)
end
if ( (table.contains(teams[1], podium[1]) and table.contains(teams[2], podium[2]))
or (table.contains(teams[2], podium[1]) and table.contains(teams[1], podium[2])) )
and not map_ended then
tfm.exec.setGameTime(5)
map_ended = true
end

elseif not podium[3] then
podium[3] = player
if not(table.contains(teams[1], player) or table.contains(teams[2], player)) then
podium[3] = nil -- only if the third mouse is not in a team (preventing mouse-killer bugs)
end
if table.contains(teams[1], podium[1]) and table.contains(teams[1], podium[2]) and table.contains(teams[1], podium[3]) then
points[1] = points[1]+bonus_podium
podium_index[1] = podium_index[1]+1
-- TODO: much more than just four defaultEffect ;)
elseif table.contains(teams[2], podium[1]) and table.contains(teams[2], podium[2]) and table.contains(teams[2], podium[3]) then
points[2] = points[2]+bonus_podium
podium_index[2] = podium_index[2]+1
-- TODO: much more than just four defaultEffect ;)
end
if not map_ended then
tfm.exec.setGameTime(5)
end
end

isWinner()
end

function eventLoop(elapsed, remain)
if gameRunning then
remain = remain/1000
if remain < 0 then
remain = 100
newMap()
end
else
if winTime then
if winTime > os.time()-30000 then
for i = 0, 2 do
defaultEffect(9, {11, 9, 0, 13}, math.random(800), math.random(400), 80)
end
else
winTime = false
ui.removeTextArea(20)
ui.removeTextArea(21)
ui.removeTextArea(22)
displayTeams()
teams = {
[1] = {},
[2] = {},
}
points = {
[1] = 0,
[2] = 0,
}
playersInGame = {}
podium_index = {0, 0}
end
end
end
end

function string.title(s)
return string.gsub(s, "%a", function(c)
return string.upper(c)
end, 1)
end

function eventChatCommand(player, command)
-- COMMAND LIST: team1, team2, score, np, pause, wins, skip, podium
if player:lower() == ADMINISTRADOR:lower() then
args = string.split(command, " ")
if args[1] == "team1" then
table.remove(args, 1)
teams[1] = {}
points[1] = 0
for index, player in pairs(args) do
player = string.title(player)
table.insert(teams[1], player)
playersInGame[player] = true
end
displayTeams()

elseif args[1] == "team2" then
table.remove(args, 1)
teams[2] = {}
points[2] = 0
for index, player in pairs(args) do
player = string.title(player)
table.insert(teams[2], player)
playersInGame[player] = true
end
displayTeams()

elseif args[1] == "score" then
if args[2] and args[3] then
local team = tonumber(args[2]:match("team(%d+)") or 0)
if team > 0 and team < 3 then
local newScore = tonumber(args[3]) or points[team]
points[team] = newScore
displayScore()
end
end

elseif args[1] == "np" then
if args[2] then
table.insert(queue, args[2])
end

elseif args[1] == "pause" then
gameRunning = not gameRunning
if not gameRunning then
ui.addTextArea(90, "<p align='center'><font size='25'><R>We'll Be Right Back!", nil, 0, 200, 800, nil, 0, 0, 0, true)
tfm.exec.disableAutoTimeLeft(true)
else
ui.removeTextArea(90)
tfm.exec.disableAutoTimeLeft(false)
end

elseif args[1] == "wins" then
-- TODO: secure this in case of non-integer string input or negative value (cases undefined)
if args[2] then
WINS = tonumber(args[2])
end

elseif args[1] == "skip" then
newMap()

elseif args[1] == "podium" then
-- TODO: secure this in case of non-integer string input or negative value (cases undefined)
if args[2] then
bonus_podium = tonumber(args[2])
else
print("First argument should be an int: how many points would you add to a team in case of podium?")
end

elseif args[1] == "points_away" then
-- TODO: secure this in case of non-integer string input or negative value (cases undefined)
if args[2] then
points_away = tonumber(args[2])
end

else
print("Command undefined.")
end

else
print("You need to be set as an administrator to perform commands!")
end
end

function eventNewGame()
if gameRunning then
map_ended = false
if podium[1] then
podium[1] = nil
end
if podium[2] then
podium[2] = nil
end
if podium[3] then
podium[3] = nil
end
for i, p in pairs(teams[1]) do
tfm.exec.setNameColor(p, "0x"..colors[1])
end
for i, p in pairs(teams[2]) do
tfm.exec.setNameColor(p, "0x"..colors[2])
end
displayScore()
displayPlayerScores()
end
end

function displayScore()
ui.addTextArea(17, string.format("<p align='center'><font size='23' color='#000000'>%s x %s", points[1], points[2]), nil, 0, 21, 800, 30, 0, 0, 0, true)
ui.addTextArea(18, string.format("<p align='center'><font size='23' color='#000000'>%s x %s", points[1], points[2]), nil, 1, 20, 800, 30, 0, 0, 0, true)
ui.addTextArea(19, string.format("<p align='center'><font size='23'><font color='#%s'>%s<N> x <font color='#%s'>%s", colors[1], points[1], colors[2], points[2]), nil, 0, 20, 800, 30, 0, 0, 0, true)
end

function displayTeams()
ui.addTextArea(1, "", nil, 199, 69, 400, 260, 0x5A7A8B, 0x5A7A8B, 1, true)
ui.addTextArea(2, "", nil, 201, 71, 400, 260, 0x0E1417, 0x0E1417, 1, true)
ui.addTextArea(3, "", nil, 200, 70, 400, 260, 0x324650, 0x324650, 1, true)
ui.addTextArea(4, "", nil, 209, 79, 142, 22, 0x324650, 0x5A7A8B, 1, true)
ui.addTextArea(5, "<p align='center'><V>Team 1", nil, 210, 80, 140, 20, 0x324650, 0x324650, 1, true)
ui.addTextArea(6, "", nil, 449, 79, 142, 22, 0x324650, 0x5A7A8B, 1, true)
ui.addTextArea(7, "<p align='center'><V>Team 2", nil, 450, 80, 140, 20, 0x324650, 0x324650, 1, true)
ui.addTextArea(8, "<p align='center'><font color='#5A7A8B'>|</font>", nil, 210, 102, 140, 200, 0, 0, 0, true)
ui.addTextArea(9, "<p align='center'><font color='#5A7A8B'>|</font>", nil, 450, 102, 140, 200, 0, 0, 0, true)
ui.addTextArea(10, "", nil, 209, 120, 140, 200, 0x5A7A8B, 0x5A7A8B, 1, true)
ui.addTextArea(11, "<p align='center'><font color='#"..colors[1].."'>"..table.concat(teams[1], "\n"), nil, 210, 121, 138, 198, 0x324650, 0x324650, 1, true)
ui.addTextArea(12, "", nil, 451, 120, 140, 200, 0x5A7A8B, 0x5A7A8B, 1, true)
ui.addTextArea(13, "<p align='center'><font color='#"..colors[2].."'>"..table.concat(teams[2], "\n"), nil, 452, 121, 138, 198, 0x324650, 0x324650, 1, true)
ui.addTextArea(14, "<p align='center'><font color='#5A7A8B'>____ ____</font>", nil, 330, 200, 140, 200, 0, 0, 0, true)
ui.addTextArea(15, "", nil, 380, 202, 40, 20, 0x5A7A8B, 0x5A7A8B, 1, true)
ui.addTextArea(16, "<p align='center'><V>VS", nil, 381, 203, 38, 18, 0x324650, 0x324650, 1, true)
ui.addTextArea(16, "<p align='center'><V><a href='event:iniciarJogo'>GO", ADMINISTRADOR, 381, 203, 38, 18, 0x324650, 0x324650, 1, true)
end

function displayPlayerScores()
-- TODO: TextAreas ids should be change to fit the rest of the code
local s1 = ""
local s2 = ""
for _,v in pairs(teams[1]) do
s1 = s1 .. v .. " : " .. playerScores[v] .. "\n"
end
for _,v in pairs(teams[2]) do
s2 = s2 .. v .. " : " .. playerScores[v] .. "\n"
end
if #teams[1] >= 3 then
s1 = s1 .. "Podiums" .. " : " .. podium_index[1]
end
if #teams[2] >= 3 then
s2 = s2 .. "Podiums" .. " : " .. podium_index[2]
end
s1 = "<font size='12' color='#"..colors[1].."'>"..s1
s2 = "<font size='12' color='#"..colors[2].."'>"..s2
ui.addTextArea(123, s1, nil, -150, 30, 0x324650, colors[1], 0, true)
ui.addTextArea(124, s2, nil, 850, 30, 0x324650, colors[2], 0, true)
end

function eventTextAreaCallback(id, player, callback)
if callback == 'iniciarJogo' then
if #teams[2] > 0 and #teams[1] > 0 then
for name,bool in pairs(playersInGame) do
if bool then
playerScores[name] = 0
end
end
gameRunning = true
for i = 1, 16 do
ui.removeTextArea(i)
end
defaultEffect(9, {9}, 400, 212, 80)
newMap()
end
end
end

function string.split(s, pattern, n)
local st = {}
for sb in string.gmatch(s, "[^"..pattern.."]+") do
if not n or n > -1 then
table.insert(st,sb)
else
st[#st] = st[#st]..pattern..sb
end
n = n and n-1 or false
end
return st
end

function table.contains(tableT, element)
for _, value in pairs(tableT) do
if value == element then
return true
end
end
return false
end

defaultEffect=function(id,p,x,y,rand) -- thanks for the function santah
local minDist = 1
local outerBorder = 20
local maxDist = 30
local totalParticles = rand and 40 or (id == -1 and 35 or 75)
for i = 1, totalParticles do
if rand then
id = p[math.random(#p)]
end
local dist = math.min(math.random(minDist, maxDist), outerBorder)
local angle = math.random(0, 360)
local r = math.rad(angle)
local dx = math.cos(r)
local dy = math.sin(r)
local vx = dist * dx / 10
local vy = dist * dy / 10
local ax = -vx / dist / 15
local ay = (-vy / dist / 15) + 0.05
if id == -1 then
tfm.exec.displayParticle(9, x + dx, y + dy, vx, vy, ax, ay, nil)
tfm.exec.displayParticle(1, x + dx, y + dy, vx, vy, ax, ay, nil)
else
tfm.exec.displayParticle(id, x + dx, y + dy, vx, vy, ax, ay, nil)
end
end
end

displayTeams()

function eventPlayerDied(playerName)
local alive = 0
for k,v in pairs(tfm.get.room.playerList) do
if not v.isDead then
alive = alive+1
end
end
if alive == 0 and not map_ended then
tfm.exec.setGameTime(5)
map_ended = true
end
end

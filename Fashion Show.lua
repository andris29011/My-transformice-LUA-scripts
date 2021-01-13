function string.split(str, delimiter) -- this is not a must have function, i just use it to get arguments for chatCommand easier
    local delimiter,a = delimiter or ',', {lay}
    for part in str:gmatch('[^'..delimiter..']+') do
        a[#a+1] = part
    end
    return a
end


function eventChatCommand(playerName, cmd)
  local args = string.split(cmd, " ")

  if args[1] == "out" then
    if args[2] then -- the command wont run if there are no arguments (player names)
      for i = 2, #args do -- teleports all players, names are divided by spacebar (example: !out Name1#0000 Name2#000)
        tfm.exec.movePlayer(args[i], 560, 280, false, 0, 0, false)
      end
    end
  end

    if args[1] == "row1" then -- The command won't work without 5 players.
  local y = 75
  if #args == 6 then
    for i = 1, 5 do
      if i == 5 then
        y = y-70
      end
 tfm.exec.movePlayer(args[i+1], 80, y, false, 0, 0, false)
      
      y = y+35*i 
    end
  end
end

end

-- [[ Disable ]] --
system.disableChatCommandDisplay(nil)
 
for _, v in next, {'AutoTimeLeft', 'AutoShaman', 'AutoNewGame', 'AutoScore', 'AfkDeath', 'PhysicalConsumables'} do
    tfm.exec['disable' .. v]()
end
tfm.exec.newGame('7820340')
tfm.exec.movePlayer("Villaaam#0000",560,110,false,0,50,false)

colors = {"#EFCE8F", "#98E2EB", "#F1C4F6", "#C2C2DA", "#1EF066", "#E9F01E", "#1E58F0", "#F01E4A", "#EE1EF0", "#24F01E"}

local counter = 0

function eventLoop()
  counter = counter + 1
  if counter > #colors then
    counter = 1
  end
 ui.setMapName("<font color='"..colors[counter].."'>Fashion Show</font>")
end

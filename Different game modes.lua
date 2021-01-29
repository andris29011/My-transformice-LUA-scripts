module = {
	name = "RACING LUA",
	formalName = "This is a script made by me which makes a Racing Teams LUA inside your tribe using /lua",
	team = {
		developer = "Villaaam#0000",
		owner = "Villaaam#0000"
	},
	map = {
		lobby = [[<C><P /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" c="2" L="3000" o="444545" X="327" H="3000" N="" Y="199" T="12" /><S P="0,0,0,0,0,0,0,0" L="552" o="444545" X="393" H="25" Y="245" T="12" /><S P="0,0,0,0,-90,0,0,0" L="552" o="444545" X="266" H="25" Y="189" T="12" /><S P="0,0,0,0,-90,0,0,0" L="552" o="444545" X="502" H="25" Y="254" T="12" /><S P="0,0,0,0,-180,0,0,0" L="552" o="444545" X="433" H="25" Y="100" T="12" /></S><D /><O /></Z></C>]],
		win = [[<C><P /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="324650" H="70" X="400" Y="400" T="12" /><S P="0,0,0.3,0.2,0,0,0,0" L="270" o="324650" X="135" H="50" Y="143" T="12" /><S P="0,0,0.3,0.2,0,0,0,0" L="270" o="324650" X="666" H="50" Y="143" T="12" /><S P="0,0,0,0,0,0,0,0" L="999" o="6a7595" X="-500" H="3000" Y="313" T="12" /><S P="0,0,0,0,0,0,0,0" L="999" o="6a7595" X="1300" H="3000" Y="392" T="12" /></S><D><P Y="2" P="0,0" C="94aebb" X="0" T="34" /><P Y="364" P="0,0" C="859198" X="87" T="15" /><P T="15" P="0,0" C="859198" X="710" Y="364" /><P P="0,0" X="400" Y="364" T="17" /><P P="0,0" X="398" Y="164" T="36" /><P X="317" P="0,0" C="784939,859198" Y="364" T="127" /><P X="483" P="0,0" C="784939,859198" Y="364" T="127" /></D><O /><L /></Z></C>]]
	}
}

adminName = "Villaaam#0000"
playerData = { }
winnerPlayers = { }  
fill = {
	index = 1,
	bool = false
}
setGame = {
	map = "",
	win = "",
	game_time = 0,
	inGamePlayers = 0,
	pointGoal = 1,
	messageBoard_time = nil,
	firstWin = false,
	mapName = "",
	winTeam_ = nil,
	gameEnd = false
}
maps = {
	racing_normal = {"#17"},
	racing_classic = {"#7"},
	racing_old = {"6771291","332894","240780","236164","1781408","167618","390595","333425","309234","334193","249633","333051","559413","265093","212420","233520","7027330","278790","202115","272585","241802","173952","162561","254391","263899","247820","137024","260343","179642","233426","336994","162338","273832","279772","2163","266464","211663","196520","145762","233043","266860","243700","297693","289736","178046","202905","271722","202957","173344","271369","262480","440574","174718","276650","5854033","267153","274916","606666","2978151","3710926","281784","169065","157687","329656","196964","333301","333063","319062","272813","309857","258986","242032","268344","267688","237035","226903","269239","159024","255378","212279","235995","274675","262002","246169","260671","332540","275008","177229","263654","331615","262173","305792","168587","261555","1404528","240393","196780","267072","212231","278258","274194","1914792","3504036","7651733","379535","308340","312826","6606660","1794287","156908","122097","251074","292742","334411","273993","404865","327177","245204","265122","200918","278269","289876","333343","3679666","402936","412657","1612436","1613927","127419","142101","146615","159204","223983","169579","313349","238187","191575","260465","273776","331529","290052","332947","309222","270663","322014","327974","335565","313773","336003","333248","270813","294923","280417","156537","234187","143610","308200","264791","253148","265381","260525","287754","287595","230773","273994","232601","239469","19909","301901","193813","239120","202719","1481024","159038","863659","268021","72395","265329","270066","1516090","185492","308203","333060","273000","333659","333888","310741","308945","180347","367502","678181","272600","218848","311166","262873","308575","334007","143599","239012","272143","265517","215475","391021","230640","170157","180246","672674","266094","323035","220943","328605","311177","238232","1591464","278500","158731","199820","264850","194676","261136","314596","284979","1220496","6972430","5525195","5643435","1395321","6112594","1431107","4813927","334113","155355","276755","220943","161327","317373","309924","325562","317715","317752","322947","317546","329695","333300","333666","2163","15339","112887","120025","140850","157590","162374","165443","190909","180238","180264","196160","117341","117894","119814","120876","124717","132806","141355","152034","155460","162009","164334","166292","170383","170985","171414","171920","174556","174877","178800","179777","181527","181883","182387","182822","185068","185382","185621","202537","202770","211573","212407","217118","217979","219618","220915","222680","230664","231240","233592","236541","238100","238215","238638","239843","240002","241870","248162","250169","253830","255401","255609","256128","257811","258796","260118","260357","260381","260571","260805","261096","261543","262229","262486","262624","262657","262875","264019","264065","264145","264686","265279","266110","266127","266280","266493","266748","267184","268494","268914","270804","271634","272511","272580","272739","273110","273787","273818","274002","274006","274055","275066","275067","275287","275366","276105","277366","278423","278542","278585","279479","279996","284256","284962","285098","285479","289249","289811","291305","296903","305175","308185","308196","308863","309058","309245","309688","310136","310148","310685","310687","310913","311068","313191","315664","317745","317748","317987","321640","322321","323037","324430","329458","330393","331512","331572","332146","332483","332640","332827","332880","332881","333049","333071","333170","333192","308681","6212895","333354","2019746","401443","159076","294500","1149838","4103460","412657","455094","404797","1587883","3237735","369138","2012696","1629706","3054424","3203738","1861644","429339","318736","336441","273769","310247","187001","185382","185698","979740","333068","6572872","424513","334735","601203","202770","252735","334278","333653","268479","1876139","374078","400254","401869","332861","306241","353209","337720","213589","1151155","655877","334160","332014","241035","274910","287586","335457","309055","333676","336092","336144","333590","268239","269408","303246","239559","333973","334614","417168","306570","569819","333922","211902","253800","5577611","521552","7644083","337710","277260","276830","327167","323036","248760","236497","442035","334811","289376","334449","335564","368129","332864","3460996","333074","1640638","276388","334565","7178786","701899","276960","272020","240196","533491","243335","1422689","1248838","703606","308205","5578052","350258","181979","333673","529024","411536","333861","333044","220239","842585"},
	racing_burlas = {"@7684582","@7682357","@7684585","@7682364","@7684581","@7682369","@7682377","@7682373","@7682375","@7637516","@7658356","@7637530","@7637533","@7637536","@7658353","@7637550","@7637555","@7637577","@7637579","@7658360","@7637600","@7637608","@7637850","@7637851","@7637854","@7637857","@7637874","@7637877","@7658380","@7658381","@7658386","@7658389","@7658390","@7658392","@7658394","@7658395","@7658713","@7658715","@7658718","@7658723","@7658734","@7658735","@7658738","@7658739","@7658742","@7658743","@7658745","@7659965","@7660275","@7660277","@7660283","@7660290","@7660300","@7660302","@7660306","@7660315","@7661939","@7661940","@7661943","@7661944","@7661948","@7661949","@7661952","@7661953","@7661954","@7661957","@7661973","@7661978","@7661979","@7661980","@7661985","@7661989","@7661990","@7662872","@7662873","@7662874","@7662876","@7662877","@7662880","@7662881","@7662882","@7662883","@7662885","@7662887","@7662888","@7662890","@7662891","@7662892","@7662893","@7662894","@7662895","@7662896","@7662897","@7662901","@7662902","@7662907","@7662908","@7662909","@7662911","@7662912","@7662913","@7662915","@7662917","@7662918","@7662919","@7665045","@7665047","@7665049","@7665054","@7665056","@7665057","@7665058","@7665063","@7665067","@7665074","@7665087","@7665090","@7665092","@7665095","@7665097","@7684584","@7677528","@7677530","@7677833","@7677836","@7680904","@7680913","@7681785","@7681787","@7681788","@7681790","@7681793","@7686243","@7686249","@7686254","@7686257","@7686260","@7686264","@7686266","@7686267","@7686270","@7686271","@7686273","@7686527","@7686528","@7686531","@7686534","@7686536","@7686539","@7686543","@7686545","@7686547","@7686547","@7686548","@7686549","@7686550","@7686552","@7686554","@7686559","@7686571","@7686727","@7686728","@7686733","@7686736","@7686740","@7686741","@7686744","@7686755","@7686758","@7686762","@7689632","@7691492","@7691897","@7689626","@7689622","@7689616","@7689613","@7689611","@7689608","@7689604","@7689602","@7689600@","@7689597","@7689595","@7689591","@7688803","@7688801","@7688800","@7688799","@7688796","@7688795","@7688794","@7688791","@7688789","@7688785","@7688783","@7688781","@7688780","@7688778","@7688774","@7688771","@7688770","@7688768","@7688766","@7688764","@7688761","@7688760","@7688567","@7688565","@7688564","@7688556","@7688543","@7678759","@7691897","@7692918","@7693277","@7693278","@7693279","@7693280","@7693904","@7694912","@7694917","@7694919","@7694921","@7642402","@7642398","@7695425"},
	bootcamp = {"#3","#13"}
}
teams = {
	team1 = {
		name = "Team 1",
		players = { },
		color = "8B00FF",
		score = 0
	},
	team2 = {
		name = "Team 2",
		players = { },
		color = "16C1EE",
		score = 0
	},
	team3 = {
		name = "Team 3",
		players = { },
		color = "18D02A",
		score = 0
	},
	team4 = {
		name = "Team 4",
		players = { },
		color = "F4EA0E",
		score = 0
	},
	team5 = {
		name = "Team 5",
		players = { },
		color = "EB790C",
		score = 0
	},
	team6 = {
		name = "Team 6",
		players = { },
		color = "2E65FF",
		score = 0
	},
	team7 = {
		name = "Team 7",
		players = { },
		color = "83FFD2",
		score = 0
	},
	team8 = {
		name = "Team 8",
		players = { },
		color = "FE3DD2",
		score = 0
	}
}
setTeam = nil
setMode = ""
joinStatus = "on"
clickingAll = false

-- @Functions --
local playerDataFunction = function(playerName)
	playerData[playerName] = {
		point = 0,
		isGuest = false,
		isBan = false
	}
end

local globalSettings = function(bool)
	tfm.exec.disableAutoShaman(bool)
	tfm.exec.disableAfkDeath(bool)
	tfm.exec.disableAutoNewGame(bool)
	tfm.exec.disableAutoTimeLeft(bool)
	tfm.exec.disableAutoScore(bool)
	tfm.exec.disablePhysicalConsumables(bool)
	system.disableChatCommandDisplay(nil,bool)
	tfm.exec.newGame(module.map.lobby)
end

local showBoard = function()
	for playerName in next, tfm.get.room.playerList do
		if (setTeam == nil) and (setMode == "") and not clickingAll then	
			ui.addTextArea(-1011,"<p align='center'><font size='25' color='#FFFFFF'>Choose a TEAM!",adminName,200,160,390,200,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1012,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:team_2'>Team 2</a>",adminName,220,235,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1013,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:team_4'>Team 4</a>",adminName,220,275,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1014,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:team_8'>Team 8</a>",adminName,220,315,350,25,0x000001,0xFFFFFF,1,true)
		end
		if (setTeam ~= nil) and (setMode == "") and not clickingAll then
			ui.addTextArea(-1011,"<p align='center'><font size='25' color='#FFFFFF'>Choose a MODE!",adminName,200,110,390,280,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1012,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:mode_rcNormal'>Racing Normal</a>",adminName,220,180,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1013,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:mode_rcClassic'>Racing Classic</a>",adminName,220,220,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1014,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:mode_rcBurlas'>Racing Burlas</a>",adminName,220,260,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1015,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:mode_rcOld'>Racing Old</a>",adminName,220,300,350,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(-1016,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:mode_bootcamp'>Bootcamp</a>",adminName,220,340,350,25,0x000001,0xFFFFFF,1,true)
		end
		if (setTeam ~= nil) and (setMode ~= "") and clickingAll then
			for i = -1016, -1011 do
				ui.removeTextArea(i,adminName)
			end			
			ui.addTextArea(0,"<p align='center'><font size='15' color='#FFFFFF' face='Comic Sans MS'><b>Admin</b><font size='12'>\n"..adminName.."",playerName,345,60,100,playerName,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1,"<p align='center'><font size='15' color='#FFFFFF' face='Comic Sans MS'><b>Mode</b><font size='12'>\n"..setMode.."",playerName,345,120,100,playerName,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(2,"<p align='center'><font size='18' color='#FFFFFF'>START",playerName,345,210,100,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(3,"<p align='center'><font size='14' color='#FFFFFF'>Fill Teams",playerName,358,250,75,20,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(4,"<p align='center'><font size='14' color='#FFFFFF'>Auto Join: "..joinStatus.."",playerName,342,285,105,20,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(2,"<p align='center'><font size='18' color='#FFFFFF'><a href='event:start'>START",adminName,345,210,100,25,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(3,"<p align='center'><font size='14' color='#FFFFFF'><a href='event:fillTeams'>Fill Teams",adminName,358,250,75,20,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(4,"<p align='center'><font size='14' color='#FFFFFF'><a href='event:autoJoin'>Auto Join: "..joinStatus.."",adminName,342,285,105,20,0x000001,0xFFFFFF,1,true)
		end
		if (setTeam == 2) and (setMode ~= "") then
			-- 1
			ui.addTextArea(1001,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team1.players, "\n") or "").."",playerName,25,74,220,310,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1011,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team1.name.."</u></b>",playerName,25,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 2
			ui.addTextArea(1002,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team2.players, "\n") or "").."",playerName,555,74,220,310,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1012,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team2.name.."</u></b>",playerName,555,35,220,30,0x000001,0xFFFFFF,1,true)
		elseif (setTeam == 4) and (setMode ~= "") then
			-- 1
			ui.addTextArea(1001,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team1.players, "\n") or "").."",playerName,25,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1011,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team1.name.."</u></b>",playerName,25,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 2
			ui.addTextArea(1002,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team2.players, "\n") or "").."",playerName,555,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1012,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team2.name.."</u></b>",playerName,555,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 3
			ui.addTextArea(1003,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team3.players, "\n") or "").."",playerName,25,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1013,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team3.name.."</u></b>",playerName,25,220,220,30,0x000001,0xFFFFFF,1,true)
			-- 4
			ui.addTextArea(1004,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team4.players, "\n") or "").."",playerName,555,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1014,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team4.name.."</u></b>",playerName,555,220,220,30,0x000001,0xFFFFFF,1,true)
		elseif (setTeam == 8) and (setMode ~= "") then
			-- 1
			ui.addTextArea(1001,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team1.players, "\n") or "").."",playerName,-220,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1011,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team1.name.."</u></b>",playerName,-220,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 2
			ui.addTextArea(1002,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team2.players, "\n") or "").."",playerName,25,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1012,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team2.name.."</u></b>",playerName,25,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 3
			ui.addTextArea(1003,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team3.players, "\n") or "").."",playerName,-220,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1013,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team3.name.."</u></b>",playerName,-220,220,220,30,0x000001,0xFFFFFF,1,true)
			-- 4
			ui.addTextArea(1004,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team4.players, "\n") or "").."",playerName,25,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1014,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team4.name.."</u></b>",playerName,25,220,220,30,0x000001,0xFFFFFF,1,true)
			-- 5
			ui.addTextArea(1005,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team5.players, "\n") or "").."",playerName,555,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1015,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team5.name.."</u></b>",playerName,555,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 6
			ui.addTextArea(1006,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team6.players, "\n") or "").."",playerName,800,74,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1016,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team6.name.."</u></b>",playerName,800,35,220,30,0x000001,0xFFFFFF,1,true)
			-- 7
			ui.addTextArea(1007,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team7.players, "\n") or "").."",playerName,555,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1017,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team7.name.."</u></b>",playerName,555,220,220,30,0x000001,0xFFFFFF,1,true)
			-- 8
			ui.addTextArea(1008,"<p align='center'><font size='13' color='#FFFFFF' face='Comic Sans MS'>"..(table.concat(teams.team8.players, "\n") or "").."",playerName,800,259,220,130,0x000001,0xFFFFFF,1,true)
			ui.addTextArea(1018,"<p align='center'><font size='18' color='#FFFFFF' face='Comic Sans MS'><b><u>"..teams.team8.name.."</u></b>",playerName,800,220,220,30,0x000001,0xFFFFFF,1,true)
		end
	end	
end

local showScore = function()
	if (setTeam == 2) then
		ui.addTextArea(11,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." / "..setGame.pointGoal.."",nil,0,21,800,40,0,0,0,true)
		ui.addTextArea(12,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." / "..setGame.pointGoal.."",nil,1,20,800,40,0,0,0,true)
		ui.addTextArea(13,"<p align='center'><font size='22'><font color='#"..teams.team1.color.."'>"..teams.team1.score.."<N> x <font color='#"..teams.team2.color.."'>"..teams.team2.score.."</font> / <font color='#E924F6'>"..setGame.pointGoal.."",nil,0,20,800,40,0,0,0,true)
	end
	if (setTeam == 4) then
		ui.addTextArea(11,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." <N>x</N> "..teams.team3.score.." <N>x</N> "..teams.team4.score.." / "..setGame.pointGoal.."",nil,0,21,800,40,0,0,0,true)
		ui.addTextArea(12,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." <N>x</N> "..teams.team3.score.." <N>x</N> "..teams.team4.score.." / "..setGame.pointGoal.."",nil,1,20,800,40,0,0,0,true)
		ui.addTextArea(13,"<p align='center'><font size='22'><font color='#"..teams.team1.color.."'>"..teams.team1.score.."<N> x <font color='#"..teams.team2.color.."'>"..teams.team2.score.."</font> x <font color='#"..teams.team3.color.."'>"..teams.team3.score.."</font> x <font color='#"..teams.team4.color.."'>"..teams.team4.score.."</font> / <font color='#E924F6'>"..setGame.pointGoal.."",nil,0,20,800,40,0,0,0,true)
	end
	if (setTeam == 8) then
		ui.addTextArea(11,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." <N>x</N> "..teams.team3.score.." <N>x</N> "..teams.team4.score.." <N>x</N> "..teams.team5.score.." <N>x</N> "..teams.team6.score.." <N>x</N> "..teams.team7.score.." <N>x</N> "..teams.team8.score.." / "..setGame.pointGoal.."",nil,0,21,800,40,0,0,0,true)
		ui.addTextArea(12,"<p align='center'><font size='22' color='#000000'>"..teams.team1.score.." <N>x</N> "..teams.team2.score.." <N>x</N> "..teams.team3.score.." <N>x</N> "..teams.team4.score.." <N>x</N> "..teams.team5.score.." <N>x</N> "..teams.team6.score.." <N>x</N> "..teams.team7.score.." <N>x</N> "..teams.team8.score.." / "..setGame.pointGoal.."",nil,1,20,800,40,0,0,0,true)
		ui.addTextArea(13,"<p align='center'><font size='22'><font color='#"..teams.team1.color.."'>"..teams.team1.score.."<N> x <font color='#"..teams.team2.color.."'>"..teams.team2.score.."</font> x <font color='#"..teams.team3.color.."'>"..teams.team3.score.."</font> x <font color='#"..teams.team4.color.."'>"..teams.team4.score.."</font> x <font color='#"..teams.team5.color.."'>"..teams.team5.score.."</font> x <font color='#"..teams.team6.color.."'>"..teams.team6.score.."</font> x <font color='#"..teams.team7.color.."'>"..teams.team7.score.."</font> x <font color='#"..teams.team8.color.."'>"..teams.team8.score.."</font> / <font color='#E924F6'>"..setGame.pointGoal.."",nil,0,20,800,40,0,0,0,true)
	end
end 

local messageBoard = function(message,player,reason)
	if (message == "next") then
		ui.addTextArea(200,"<D>[•]</D> <v>"..player.."</v> <g>skipped the map.</g>",NIL,6,377,nil,20,0x151414,0x222121,0.9,true)
	end
	if (message == "ban") then
		ui.addTextArea(200,"<D>[•]</D> <v>"..player.."</v> <g>has been banned. Reason: <v><i>"..reason.."</i></v></g>",NIL,6,377,nil,20,0x151414,0x222121,0.9,true)
	end
	if (message == "unban") then
		ui.addTextArea(200,"<D>[•]</D> <v>"..player.."</v> <g>has been unbanned.</g>",NIL,6,377,nil,20,0x151414,0x222121,0.9,true)
	end
	setGame.messageBoard_time = 6
end

local fillTeams = function() 
	if (setTeam == 2) then
		teams.team1.players = {} 
		teams.team2.players = {} 
		for n,p in next, tfm.get.room.playerList do 
			if (fill.index == 1) then 
				teams.team1.players[#teams.team1.players +1] = n 
				fill.index = 2
			elseif (fill.index == 2) then 
				teams.team2.players[#teams.team2.players +1] = n 
				fill.index = 1
			end 
		end 
	end
	if (setTeam == 4) then
		teams.team1.players = {} 
		teams.team2.players = {} 
		teams.team3.players = {} 
		teams.team4.players = {} 
		for n,p in next, tfm.get.room.playerList do 
			if (fill.index == 1) then 
				teams.team1.players[#teams.team1.players +1] = n 
				fill.index = 2
			elseif (fill.index == 2) then 
				teams.team2.players[#teams.team2.players +1] = n 
				fill.index = 3
			elseif (fill.index == 3) then 
				teams.team3.players[#teams.team3.players +1] = n 
				fill.index = 4
			elseif (fill.index == 4) then 
				teams.team4.players[#teams.team4.players +1] = n 
				fill.index = 1
			end 
		end 
	end
	if (setTeam == 8) then
		teams.team1.players = {} 
		teams.team2.players = {} 
		teams.team3.players = {} 
		teams.team4.players = {} 
		teams.team5.players = {} 
		teams.team6.players = {} 
		teams.team7.players = {} 
		teams.team8.players = {} 
		for n,p in next, tfm.get.room.playerList do 
			if (fill.index == 1) then 
				teams.team1.players[#teams.team1.players +1] = n 
				fill.index = 2
			elseif (fill.index == 2) then 
				teams.team2.players[#teams.team2.players +1] = n 
				fill.index = 3
			elseif (fill.index == 3) then 
				teams.team3.players[#teams.team3.players +1] = n 
				fill.index = 4
			elseif (fill.index == 4) then 
				teams.team4.players[#teams.team4.players +1] = n 
				fill.index = 5
			elseif (fill.index == 5) then 
				teams.team5.players[#teams.team5.players +1] = n 
				fill.index = 6
			elseif (fill.index == 6) then 
				teams.team6.players[#teams.team6.players +1] = n 
				fill.index = 7
			elseif (fill.index == 7) then 
				teams.team7.players[#teams.team7.players +1] = n 
				fill.index = 8
			elseif (fill.index == 8) then 
				teams.team8.players[#teams.team8.players +1] = n 
				fill.index = 1
			end 
		end 
	end
end 

local winTeam = function()
	setGame.gameEnd = true
	if (setGame.winTeam_ == 1) then
		setGame.win = "7754706"
	end
	if (setGame.winTeam_ == 2) then
		setGame.win = "7754703"
	end
	if (setGame.winTeam_ == 3) then
		setGame.win = "7754704"
	end
	if (setGame.winTeam_ == 4) then
		setGame.win = "7754708"
	end
	if (setGame.winTeam_ == 5) then
		setGame.win = "7754709"
	end
	if (setGame.winTeam_ == 6) then
		setGame.win = "7754710"
	end
	if (setGame.winTeam_ == 7) then
		setGame.win = "7754711"
	end
	if (setGame.winTeam_ == 8) then
		setGame.win = "7754713"
	end
end

local setNameColor = function()
	if (setTeam == 2) then
		for i,v in next, teams.team1.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team1.color) 
		end 
		for i,v in next, teams.team2.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team2.color) 
		end 
	end
	if (setTeam == 4) then
		for i,v in next, teams.team1.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team1.color) 
		end 
		for i,v in next, teams.team2.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team2.color) 
		end 
		for i,v in next, teams.team3.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team3.color) 
		end 
		for i,v in next, teams.team4.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team4.color) 
		end 
	end
	if (setTeam == 8) then
		for i,v in next, teams.team1.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team1.color) 
		end 
		for i,v in next, teams.team2.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team2.color) 
		end 
		for i,v in next, teams.team3.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team3.color) 
		end 
		for i,v in next, teams.team4.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team4.color) 
		end 
		for i,v in next, teams.team5.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team5.color) 
		end 
		for i,v in next, teams.team6.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team6.color) 
		end 
		for i,v in next, teams.team7.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team7.color) 
		end 
		for i,v in next, teams.team8.players do 
			tfm.exec.setNameColor(v, "0x"..teams.team8.color) 
		end 
	end
end

local newGame = function()
	if setGame.gameEnd then
		setGame.game_time = nil
		setGame.mapName = "Game End"
		tfm.exec.newGame(setGame.win)
	else
		setGame.inGamePlayers = 0
		setGame.firstWin = false
		if (setMode == "Racing Normal") then
			setGame.map = maps.racing_normal[math.random(#maps.racing_normal)]
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
			setGame.mapName = "Normal"
		end
		if (setMode == "Racing Classic") then
			setGame.map = maps.racing_classic[math.random(#maps.racing_classic)]
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
			setGame.mapName = "Classic"
		end
		if (setMode == "Racing Burlas") then
			setGame.map = maps.racing_burlas[math.random(#maps.racing_burlas)]
			setGame.game_time = 118
			tfm.exec.setGameTime(63)
			setGame.mapName = "Burlas"
		end
		if (setMode == "Racing Old") then
			setGame.map = maps.racing_old[math.random(#maps.racing_old)]
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
			setGame.mapName = "Old"
		end
		if (setMode == "Bootcamp") then
			setGame.map = maps.bootcamp[math.random(#maps.bootcamp)]
			tfm.exec.setGameTime(123)
			setGame.game_time = 227
			setGame.mapName = "Bootcamp"
		end
		for playerName in next, tfm.get.room.playerList do
			if not playerData[playerName].isGuest or not playerData[playerName].isBan then
				setGame.inGamePlayers = setGame.inGamePlayers +1
			end
			if playerData[playerName].isGuest or playerData[playerName].isBan then
				tfm.exec.killPlayer(playerName)
			end
		end
		tfm.exec.newGame(setGame.map)
		showScore()
	end
	setNameColor()
end

local Main = function()
	globalSettings(true)
	showBoard()
	for playerName in next, tfm.get.room.playerList do
		playerDataFunction(playerName)
		tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
	end
	setGame.mapName = "Lobby"
	tfm.exec.setUIMapName(setGame.mapName)
end

local resetGame = function()
	setTeam = nil
	setMode = ""
	joinStatus = "on"
	clickingAll = false
	setGame = {
		map = "",
		game_time = 0,
		inGamePlayers = 0,
		pointGoal = 10,
		messageBoard_time = nil,
		firstWin = false
	}
	fill = {
		index = 1,
		bool = false
	}
	teams = {
		team1 = {
			name = "Team 1",
			players = { },
			color = "8B00FF",
			score = 0
		},
		team2 = {
			name = "Team 2",
			players = { },
			color = "16C1EE",
			score = 0
		},
		team3 = {
			name = "Team 3",
			players = { },
			color = "18D02A",
			score = 0
		},
		team4 = {
			name = "Team 4",
			players = { },
			color = "F4EA0E",
			score = 0
		},
		team5 = {
			name = "Team 5",
			players = { },
			color = "EB790C",
			score = 0
		},
		team6 = {
			name = "Team 6",
			players = { },
			color = "2E65FF",
			score = 0
		},
		team7 = {
			name = "Team 7",
			players = { },
			color = "83FFD2",
			score = 0
		},
		team8 = {
			name = "Team 8",
			players = { },
			color = "FE3DD2",
			score = 0
		}
	}
	Main()
	tfm.exec.newGame(module.map.lobby)
end

-- @Events --
eventNewPlayer = function(playerName)
	if not playerData[playerName] then
		playerDataFunction(playerName)
	end
	if not playerData[playerName].isBan then
		if (joinStatus == "on") then
			if (setTeam == 2) then
				if (fill.index == 1) then 
					teams.team1.players[#teams.team1.players +1] = playerName
					fill.index = 2
				elseif (fill.index == 2) then 
					teams.team2.players[#teams.team2.players +1] = playerName
					fill.index = 1
				end 
			end
			if (setTeam == 4) then
				if (fill.index == 1) then 
					teams.team1.players[#teams.team1.players +1] = n 
					fill.index = 2
				elseif (fill.index == 2) then 
					teams.team2.players[#teams.team2.players +1] = n 
					fill.index = 3
				elseif (fill.index == 3) then 
					teams.team3.players[#teams.team3.players +1] = n 
					fill.index = 4
				elseif (fill.index == 4) then 
					teams.team4.players[#teams.team4.players +1] = n 
					fill.index = 1
				end 
			end
			if (setTeam == 8) then
				if (fill.index == 1) then 
					teams.team1.players[#teams.team1.players +1] = n 
					fill.index = 2
				elseif (fill.index == 2) then 
					teams.team2.players[#teams.team2.players +1] = n 
					fill.index = 3
				elseif (fill.index == 3) then 
					teams.team3.players[#teams.team3.players +1] = n 
					fill.index = 4
				elseif (fill.index == 4) then 
					teams.team4.players[#teams.team4.players +1] = n 
					fill.index = 5
				elseif (fill.index == 5) then 
					teams.team5.players[#teams.team5.players +1] = n 
					fill.index = 6
				elseif (fill.index == 6) then 
					teams.team6.players[#teams.team6.players +1] = n 
					fill.index = 7
				elseif (fill.index == 7) then 
					teams.team7.players[#teams.team7.players +1] = n 
					fill.index = 8
				elseif (fill.index == 8) then 
					teams.team8.players[#teams.team8.players +1] = n 
					fill.index = 1
				end 
			end
		end
		if (joinStatus == "off") then
			playerData[playerName].isGuest = true
		end
	end
	showScore()
end

eventPlayerDied = function(playerName)
	if (setMode == "Racing Normal") or (setMode == "Racing Classic") or (setMode == "Racing Burlas") or (setMode == "Racing Old") or (setMode == "Bootcamp") then
		setGame.inGamePlayers = setGame.inGamePlayers -1
		if (setGame.inGamePlayers <= 0) then
			setGame.game_time = nil
			newGame()
		end
	end
end

eventPlayerWon = function(playerName)
	if not setGame.firstWin then 
		setGame.firstWin = true
		if (setTeam == 2) then
			if table.contain(teams.team1.players,playerName) then
				teams.team1.score = teams.team1.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team1.score >= setGame.pointGoal) then
					for playerName in next, teams.team1.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 1
					winTeam()
				end
			elseif table.contain(teams.team2.players,playerName) then
				teams.team2.score = teams.team2.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team2.score >= setGame.pointGoal) then
					for playerName in next, teams.team2.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 2
					winTeam()
				end
			end
		end
		if (setTeam == 4) then
			if table.contain(teams.team1.players,playerName) then
				teams.team1.score = teams.team1.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team1.score >= setGame.pointGoal) then
					for playerName in next, teams.team1.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 1
					winTeam()
				end
			elseif table.contain(teams.team2.players,playerName) then
				teams.team2.score = teams.team2.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team2.score >= setGame.pointGoal) then
					for playerName in next, teams.team2.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 2
					winTeam()
				end
			elseif table.contain(teams.team3.players,playerName) then
				teams.team3.score = teams.team3.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team3.score >= setGame.pointGoal) then
					for playerName in next, teams.team3.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 3
					winTeam()
				end
			elseif table.contain(teams.team4.players,playerName) then
				teams.team4.score = teams.team4.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team4.score >= setGame.pointGoal) then
					for playerName in next, teams.team4.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 4
					winTeam()
				end
			end
		end
		if (setTeam == 8) then
			if table.contain(teams.team1.players,playerName) then
				teams.team1.score = teams.team1.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team1.score >= setGame.pointGoal) then
					for playerName in next, teams.team1.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 1
					winTeam()
				end
			elseif table.contain(teams.team2.players,playerName) then
				teams.team2.score = teams.team2.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team2.score >= setGame.pointGoal) then
					for playerName in next, teams.team2.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 2
					winTeam()
				end
			elseif table.contain(teams.team3.players,playerName) then
				teams.team3.score = teams.team3.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team3.score >= setGame.pointGoal) then
					for playerName in next, teams.team3.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 3
					winTeam()
				end
			elseif table.contain(teams.team4.players,playerName) then
				teams.team4.score = teams.team4.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team4.score >= setGame.pointGoal) then
					for playerName in next, teams.team4.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 4
					winTeam()
				end
			elseif table.contain(teams.team5.players,playerName) then
				teams.team5.score = teams.team5.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team5.score >= setGame.pointGoal) then
					for playerName in next, teams.team5.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 5
					winTeam()
				end
			elseif table.contain(teams.team6.players,playerName) then
				teams.team6.score = teams.team6.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team6.score >= setGame.pointGoal) then
					for playerName in next, teams.team6.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 6
					winTeam()
				end
			elseif table.contain(teams.team7.players,playerName) then
				teams.team7.score = teams.team7.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team7.score >= setGame.pointGoal) then
					for playerName in next, teams.team7.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 7
					winTeam()
				end
			elseif table.contain(teams.team8.players,playerName) then
				teams.team8.score = teams.team8.score +1
				playerData[playerName].point = playerData[playerName].point +1
				tfm.exec.setPlayerScore(playerName, playerData[playerName].point)
				if (teams.team8.score >= setGame.pointGoal) then
					for playerName in next, teams.team8.players do
						winnerPlayers[#winnerPlayers +1] = playerName
					end
					setGame.winTeam_ = 8
					winTeam()
				end
			end
		end
		tfm.exec.setGameTime(3)
		setGame.game_time = 8
		showScore()
	end
end

table.contain = function(t,obj) 
	for i,v in pairs(t) do 
		if (v == obj) then 
			return true 
		end 
	end 
	return false 
end 

eventNewGame = function()
	if not setGame.gameEnd then
		if (setMode == "Racing Normal") then
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
		end
		if (setMode == "Racing Classic") then
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
		end
		if (setMode == "Racing Burlas") then
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
		end
		if (setMode == "Racing Old") then
			tfm.exec.setGameTime(63)
			setGame.game_time = 118
		end
		if (setMode == "Bootcamp") then
			tfm.exec.setGameTime(123)
			setGame.game_time = 227
		end
		tfm.exec.setUIMapName(setGame.mapName)
	else
		if (setGame.winTeam_ == 1) then
			for playerName in next, teams.team1.players do	
				if (playerName ~= teams.team1.players[playerName]) then
					tfm.exec.killPlayer(playerName)
				end
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
				tfm.exec.killPlayer(playerName)
			end
		end
		if (setGame.winTeam_ == 2) then
			for playerName in next, teams.team2.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 3) then
			for playerName in next, teams.team3.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 4) then
			for playerName in next, teams.team4.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 5) then
			for playerName in next, teams.team5.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 6) then
			for playerName in next, teams.team6.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 7) then
			for playerName in next, teams.team7.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
		if (setGame.winTeam_ == 8) then
			for playerName in next, teams.team8.players do	
				tfm.exec.respawnPlayer(playerName)
				tfm.exec.movePlayer(playerName,math.random(50,700),math.random(20,300),false)
				tfm.exec.playEmote(playerName, 0)
			end
		end
	end
	setNameColor()
end

eventTextAreaCallback = function(ID,playerName,callback)
	if (playerName == adminName) then
		if (callback:sub(1,5) == "team_") then
			if (callback:sub(6) == "2") then
				setTeam = 2
			elseif (callback:sub(6) == "4") then
				setTeam = 4
			elseif (callback:sub(6) == "8") then
				setTeam = 8
			end
			showBoard()
		end
		if (callback:sub(1,5) == "mode_") then
			if (callback:sub(6) == "rcNormal") then
				setMode = "Racing Normal"
			elseif (callback:sub(6) == "rcClassic") then
				setMode = "Racing Classic"
			elseif (callback:sub(6) == "rcBurlas") then
				setMode = "Racing Burlas"
			elseif (callback:sub(6) == "rcOld") then
				setMode = "Racing Old"
			elseif (callback:sub(6) == "bootcamp") then
				setMode = "Bootcamp"
			end
			clickingAll = true
			showBoard()
		end
		if (callback == "start") then
			if fill.bool then
				for i = 0, 1018 do
					ui.removeTextArea(i)
				end
				newGame()
			end
		end
		if (callback == "fillTeams") then
			fillTeams()
			showBoard()
			fill.bool = true
		end
		if (callback == "autoJoin") then
			if (joinStatus == "on") then
				joinStatus = "off"
			elseif (joinStatus == "off") then
				joinStatus = "on"
			end
			showBoard()
		end
	end
end

eventChatCommand = function(playerName,message)
	if (playerName == adminName) then
		local commandName, nickname, reason = message:match("^(%S+) (%S+) (%S+)$")
		if (commandName == "ban") then
			playerData[nickname].isBan = true
			tfm.exec.killPlayer(nickname)
			messageBoard("ban",nickname,reason)
		end
		--
		local commandName, nickname = message:match("^(%S+) (%S+)$")
		if (commandName == "unban") then
			playerData[nickname].isBan = false
			messageBoard("unban",nickname,false)
		end
		--
		local commandName, text = message:match("^(%S+) (%S+)$")
		if (commandName == "d") then
			setGame.pointGoal = tonumber(text)
			showScore()
		end
		if (commandName == "autojoin") then
			if (text == "on") then
				joinStatus = "on"
			elseif (text == "off") then
				joinStatus = "off"
			end
		end
		--
		local commandName, team, number = message:match("^(%S+) (%S+) (%S+)$")
		if (commandName == "score") then
			local teamCheck = nil
			if (team == "t1") then
				teamCheck = "team1"
			elseif (team == "t2") then
				teamCheck = "team2"
			elseif (team == "t3") then
				teamCheck = "team3"
			elseif (team == "t4") then
				teamCheck = "team4"
			elseif (team == "t5") then
				teamCheck = "team5"
			elseif (team == "t6") then
				teamCheck = "team6"
			elseif (team == "t7") then
				teamCheck = "team7"
			elseif (team == "t8") then
				teamCheck = "team8"
			end
			teams[teamCheck].score = tonumber(number)
			showScore()
		end
		--
		if (message == "skip") then
			newGame()
			messageBoard("next",adminName)
		end
		if (message == "reset") then
			resetGame()
		end
	end
end

eventLoop = function()
	if (setGame.game_time ~= nil) then
		setGame.game_time = setGame.game_time -1
		if (setGame.game_time <= 0) then
			setGame.game_time = nil
			newGame()
		end
	end
	if (setGame.messageBoard_time ~= nil) then
		setGame.messageBoard_time = setGame.messageBoard_time -0.5
		if (setGame.messageBoard_time == 0) then
			setGame.messageBoard_time = nil
			ui.removeTextArea(200)
		end
	end
end

Main()

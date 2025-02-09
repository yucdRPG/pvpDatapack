scoreboard players set @a[team=Red] RedTeamCount 1
scoreboard players set @a[team=Blue] BlueTeamCount 1
scoreboard players set clock RedTeamLeft 0
scoreboard players operation clock RedTeamLeft += @a[team=Red,tag=!dead] RedTeamCount
scoreboard players set clock BlueTeamLeft 0
scoreboard players operation clock BlueTeamLeft += @a[team=Blue,tag=!dead] BlueTeamCount
scoreboard players set clock RedTeamCount 0
scoreboard players set clock BlueTeamCount 0
scoreboard players operation clock RedTeamCount += @a[team=Red] RedTeamCount
scoreboard players operation clock BlueTeamCount += @a[team=Blue] BlueTeamCount

schedule function aimatrix:games/matrices/teamcount/2_tc_loop 1t append
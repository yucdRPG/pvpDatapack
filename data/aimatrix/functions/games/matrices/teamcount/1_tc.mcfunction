scoreboard players set clock RedTeamCount 0
scoreboard players set clock BlueTeamCount 0
scoreboard players set @a[team=Red] RedTeamCount 1
scoreboard players set @a[team=Blue] BlueTeamCount 1
function aimatrix:games/matrices/teamcount/2_tc_loop
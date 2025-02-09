execute as @a[tag=dead] run gamemode spectator @s
# execute as @a[team=Red] if score clock RedTeamLeft matches 1.. if score @s death matches 1 run spectate @p[team=Red,tag=!dead]
# execute as @a[team=Blue] if score clock BlueTeamLeft matches 1.. if score @s death matches 1 run spectate @p[team=Blue,tag=!dead]
schedule function aimatrix:games/matrices/spectator/spectator_loop 1t append
execute positioned 0 0 -20 as @p if score clock ingame matches 1 if score clock RedTeamCount > clock BlueTeamCount run team join Blue @s
execute positioned 0 0 -20 as @p if score clock ingame matches 1 if score clock RedTeamCount <= clock BlueTeamCount run team join Red @s
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run spawnpoint @a[team=Red] 1815 -2 -354 0
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run spawnpoint @a[team=Blue] 1814 2 -137 180
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run spawnpoint @a[team=Red] 2814 -41 -101 270
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run spawnpoint @a[team=Blue] 2953 -41 -110 90
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run spawnpoint @a[team=Red] 2814 -41 -101 270
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run spawnpoint @a[team=Blue] 2953 -41 -110 90
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run spawnpoint @a[team=Red] -3069 20 -139 0
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run spawnpoint @a[team=Blue] -3071 20 -33 180
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run spawnpoint @a[team=Red] -1837 -55 104 90
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run spawnpoint @a[team=Blue] -1902 -55 104 270

execute positioned 0 0 -20 as @p if score clock ingame matches 1 run kill @s
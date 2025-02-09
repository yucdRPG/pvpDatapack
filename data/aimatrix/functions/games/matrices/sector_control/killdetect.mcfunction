execute as @a[team=Red] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 if score @s kill matches 1.. run scoreboard players add clock red_score 20
execute as @a[team=Red] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 if score @s kill matches 1.. run scoreboard players set @s kill 0
execute as @a[team=Blue] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 if score @s kill matches 1.. run scoreboard players add clock blue_score 20
execute as @a[team=Blue] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 if score @s kill matches 1.. run scoreboard players set @s kill 0

execute as @a[team=Red] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 if score @s kill matches 1.. run scoreboard players add clock red_score 1
execute as @a[team=Red] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 if score @s kill matches 1.. run scoreboard players set @s kill 0
execute as @a[team=Blue] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 if score @s kill matches 1.. run scoreboard players add clock blue_score 1
execute as @a[team=Blue] if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 if score @s kill matches 1.. run scoreboard players set @s kill 0

execute as @a[team=Red] if score map_number_recorder mode matches 3 if score @s kill matches 1.. run scoreboard players add clock red_score 1
execute as @a[team=Red] if score map_number_recorder mode matches 3 if score @s kill matches 1.. run scoreboard players set @s kill 0
execute as @a[team=Blue] if score map_number_recorder mode matches 3 if score @s kill matches 1.. run scoreboard players add clock blue_score 1
execute as @a[team=Blue] if score map_number_recorder mode matches 3 if score @s kill matches 1.. run scoreboard players set @s kill 0

schedule function aimatrix:games/matrices/sector_control/killdetect 1t replace
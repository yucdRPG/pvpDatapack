execute as @s if score clock ingame matches 0 run scoreboard players remove map_number_recorder map_number 1
execute as @s if score clock ingame matches 1 run title @s title "游戏已开始，无法切换"
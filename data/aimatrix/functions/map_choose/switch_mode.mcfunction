execute as @s if score clock ingame matches 0 run scoreboard players add map_number_recorder mode 1
execute as @s if score clock ingame matches 1 run title @s title "游戏已开始，无法切换"
execute as @a if score @s player_status matches 1 run tag @s add dead
execute as @a if score @s player_status matches 1 run scoreboard players set @s player_status 0



schedule function aimatrix:games/matrices/c4_bomb/bekilled 1t append


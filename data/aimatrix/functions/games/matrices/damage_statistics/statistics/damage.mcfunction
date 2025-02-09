#检测被攻击玩家承伤变化
#将Δ承伤加给攻击玩家
execute as @a run scoreboard players operation @s damage_taken_2 = @s damage_taken
execute as @a run scoreboard players operation @s damage_taken_2 /= @s 10
execute as @a run scoreboard players operation @s damage_taken_1 = @s damage_taken_2
execute as @a if score @s damage_taken_2 > @s damage_taken_old run function aimatrix:games/matrices/damage_statistics/statistics/source
execute as @a run scoreboard players operation @s damage_taken_old = @s damage_taken_2
schedule function aimatrix:games/matrices/damage_statistics/statistics/damage 1t append 
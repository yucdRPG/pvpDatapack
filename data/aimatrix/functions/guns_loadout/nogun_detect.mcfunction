execute as @a store result score @s guns_count run clear @s tacz:modern_kinetic_gun 0
execute as @a unless score clock bomb_planted matches 3 if score @s guns_count matches 1.. run scoreboard players set @s nogun_have 1
execute as @a if score clock bomb_planted matches 3 if score @s guns_count matches 1.. run tellraw @s "\u00a77[TRIGGER] \u00a7r当前仍处于选枪环节，枪械即将分发。"


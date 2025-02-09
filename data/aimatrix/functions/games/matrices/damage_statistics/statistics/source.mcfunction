execute as @s run scoreboard players operation @s damage_taken_1 -= @s damage_taken_old
execute as @s run scoreboard players operation @s damage_Dta = @s damage_taken_1
scoreboard players operation @a[tag=Attacker] damage_dealt += @a[tag=Target] damage_Dta
tag @a[tag=Attacker] remove Attacker
tag @a[tag=Target] remove Target


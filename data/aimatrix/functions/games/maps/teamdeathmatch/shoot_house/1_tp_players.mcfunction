tp @a[team=Red] -3069 20 -139 0 0
tp @a[team=Blue] -3071 20 -33 180 0
spawnpoint @a[team=Red] -3069 20 -139 0
spawnpoint @a[team=Blue] -3071 20 -33 180


fill -3068 20 -133 -3061 22 -133 glass replace
fill -3072 20 -133 -3079 22 -133 glass replace
fill -3082 20 -38 -3074 22 -38 glass replace
fill -3069 22 -39 -3060 20 -39 glass replace




gamemode adventure @a

scoreboard players set clock ui_enable 1

schedule function aimatrix:guns_loadout/loadout_item 10t append

execute as @r run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/2_replace_blocks 30t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/3_replace_blocks 60t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/2_replace_blocks 90t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/3_replace_blocks 120t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/5_destroy_start 160t append
schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/6_launch_matrices 1t append
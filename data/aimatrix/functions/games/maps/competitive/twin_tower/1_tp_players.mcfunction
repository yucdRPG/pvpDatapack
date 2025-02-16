tp @a[team=Red] 232 89 -206 130 0
tp @a[team=Blue] 180 95 -218 330 0

spawnpoint @a[team=Red] 232 89 -206
spawnpoint @a[team=Blue] 180 95 -218

# 防止有人跳下去，正好卡tp时间当场暴毙
effect give @a[team=Red] resistance 5 4 false
effect give @a[team=Blue] resistance 5 4 false
# actionbar ui开启
scoreboard players set clock ui_enable 1

tag @a remove dead
tag @a remove bombtaker
gamemode adventure @a

gamerule keepInventory false 
scoreboard players set clock fight_begin 2

fill 183 97 -221 179 95 -221 glass replace
fill 178 97 -221 178 96 -221 glass replace
fill 178 97 -220 178 95 -215 glass replace
fill 179 97 -215 179 95 -215 glass replace
fill 234 90 -209 236 88 -209 glass replace
fill 227 90 -203 227 88 -204 glass replace
scoreboard players set clock countdown 160
function aimatrix:games/maps/competitive/twin_tower/6_launch_matrices
schedule function aimatrix:guns_loadout/loadout_item 10t append

execute as @r if score clock round matches 2..7 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r if score clock round matches 9..15 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

schedule function aimatrix:games/maps/competitive/twin_tower/2_replace_blocks 30t append
schedule function aimatrix:games/maps/competitive/twin_tower/3_replace_blocks 60t append
schedule function aimatrix:games/maps/competitive/twin_tower/2_replace_blocks 90t append
schedule function aimatrix:games/maps/competitive/twin_tower/3_replace_blocks 120t append
schedule function aimatrix:games/maps/competitive/twin_tower/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/competitive/twin_tower/5_destroy_start 160t append
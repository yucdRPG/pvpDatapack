tp @a[team=Red] 1815 -2 -354 0 0
tp @a[team=Blue] 1814 2 -137 180 0

spawnpoint @a[team=Red] 1815 -2 -354 0
spawnpoint @a[team=Blue] 1814 2 -137 180

# 防止有人跳下去，正好卡tp时间当场暴毙
effect give @a[team=Red] resistance 5 4 false
effect give @a[team=Blue] resistance 5 4 false
# actionbar ui开启
scoreboard players set clock ui_enable 1

tellraw @a "\u00a77[A.M.T] \u00a7a 安装C4&拆除C4 - 手持对应道具在包点附近低头即可。"

# C4携带者播报系统
schedule function aimatrix:games/matrices/c4_bomb/c4_carrier 9s replace

tag @a remove dead
tag @a remove bombtaker
gamemode adventure @a

gamerule keepInventory false 

scoreboard players set clock fight_begin 2

fill 1824 -2 -344 1817 3 -344 glass replace
fill 1813 3 -344 1806 -2 -344 glass replace
fill 1846 0 -343 1844 -1 -343 glass replace
fill 1822 6 -147 1807 2 -147 glass replace

scoreboard players set clock countdown 160
function aimatrix:games/maps/competitive/raid_s_q/6_launch_matrices
schedule function aimatrix:guns_loadout/loadout_item 10t append

execute as @r if score clock round matches 2..7 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r if score clock round matches 9..15 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

schedule function aimatrix:games/maps/competitive/raid_s_q/2_replace_blocks 30t append
schedule function aimatrix:games/maps/competitive/raid_s_q/3_replace_blocks 60t append
schedule function aimatrix:games/maps/competitive/raid_s_q/2_replace_blocks 90t append
schedule function aimatrix:games/maps/competitive/raid_s_q/3_replace_blocks 120t append
schedule function aimatrix:games/maps/competitive/raid_s_q/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/competitive/raid_s_q/5_destroy_start 160t append
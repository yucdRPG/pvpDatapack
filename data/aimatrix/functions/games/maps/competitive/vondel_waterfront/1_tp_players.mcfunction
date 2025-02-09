tp @a[team=Red] 2814 -41 -101 270 0
tp @a[team=Blue] 2953 -41 -110 90 0

spawnpoint @a[team=Red] 2814 -41 -101 270
spawnpoint @a[team=Blue] 2953 -41 -110 90

# 防止有人跳下去，正好卡tp时间当场暴毙
effect give @a[team=Red] resistance 5 4 false
effect give @a[team=Blue] resistance 5 4 false

# actionbar ui开启
scoreboard players set clock ui_enable 1

tellraw @a "\u00a77[A.M.T] \u00a7a 安装C4&拆除C4 - 手持对应道具在包点附近低头即可。"

# 天气系统
schedule clear aimatrix:games/matrices/weather/day2night
schedule clear aimatrix:games/matrices/weather/rain
weather clear
time set day

# C4携带者播报系统
schedule function aimatrix:games/matrices/c4_bomb/c4_carrier 9s replace

tag @a remove dead
tag @a remove bombtaker
gamemode adventure @a

scoreboard players set clock fight_begin 2

fill 2946 -38 -114 2959 -41 -114 glass replace
fill 2946 -38 -114 2946 -41 -107 glass replace
fill 2959 -38 -107 2946 -41 -107 glass replace
fill 2959 -38 -107 2959 -41 -114 glass replace

fill 2820 -40 -109 2820 -42 -94 glass replace
fill 2811 -40 -94 2820 -42 -94 glass replace
fill 2811 -40 -94 2811 -42 -109 glass replace
fill 2820 -40 -109 2811 -42 -109 glass replace

scoreboard players set clock countdown 160
function aimatrix:games/maps/competitive/vondel_waterfront/6_launch_matrices
schedule function aimatrix:guns_loadout/loadout_item 10t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/2_replace_blocks 30t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/3_replace_blocks 60t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/2_replace_blocks 90t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/3_replace_blocks 120t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/5_destroy_start 160t append
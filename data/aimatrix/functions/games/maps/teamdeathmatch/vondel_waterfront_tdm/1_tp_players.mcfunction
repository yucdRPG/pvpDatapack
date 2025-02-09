tp @a[team=Red] 2814 -41 -101 270 0
tp @a[team=Blue] 2953 -41 -110 90 0

spawnpoint @a[team=Red] 2814 -41 -101 270
spawnpoint @a[team=Blue] 2953 -41 -110 90

fill 2946 -38 -114 2959 -41 -114 glass replace
fill 2946 -38 -114 2946 -41 -107 glass replace
fill 2959 -38 -107 2946 -41 -107 glass replace
fill 2959 -38 -107 2959 -41 -114 glass replace

fill 2820 -40 -109 2820 -42 -94 glass replace
fill 2811 -40 -94 2820 -42 -94 glass replace
fill 2811 -40 -94 2811 -42 -109 glass replace
fill 2820 -40 -109 2811 -42 -109 glass replace




gamemode adventure @a

scoreboard players set clock ui_enable 1

schedule function aimatrix:guns_loadout/loadout_item 10t append

schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/2_replace_blocks 30t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/3_replace_blocks 60t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/2_replace_blocks 90t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/3_replace_blocks 120t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/5_destroy_start 160t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/6_launch_matrices 1t append
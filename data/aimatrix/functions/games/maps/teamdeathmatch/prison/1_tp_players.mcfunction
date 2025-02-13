tp @a[team=Red] -1837 -55 104 90 0
tp @a[team=Blue] -1902 -55 104 270 0
spawnpoint @a[team=Red] -1837 -55 104 90
spawnpoint @a[team=Blue] -1902 -55 104 270


fill -1846 -53 95 -1833 -55 95 glass replace
fill -1846 -53 95 -1846 -55 112 glass replace
fill -1846 -55 112 -1833 -53 112 glass replace
fill -1896 -53 98 -1915 -55 98 glass replace
fill -1895 -53 109 -1895 -55 106 glass replace
fill -1896 -53 110 -1915 -55 110 glass replace



gamemode adventure @a

scoreboard players set clock ui_enable 1

schedule function aimatrix:guns_loadout/loadout_item 10t append

execute as @r run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

schedule function aimatrix:games/maps/teamdeathmatch/prison/2_replace_blocks 30t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/3_replace_blocks 60t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/2_replace_blocks 90t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/3_replace_blocks 120t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/5_destroy_start 160t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/6_launch_matrices 1t append
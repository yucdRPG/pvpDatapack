tp @a[tag=red1] -59 -61 -213 300 0
tp @a[tag=red2] -59 -61 -170 225 0
tp @a[tag=red3] -59 -61 -213 300 0
tp @a[tag=red4] -59 -61 -170 225 0
tp @a[tag=red5] -59 -61 -213 300 0

tp @a[tag=red6] -59 -61 -170 225 0
tp @a[tag=red7] -59 -61 -213 300 0
tp @a[tag=red8] -59 -61 -170 225 0
tp @a[tag=red9] -59 -61 -213 300 0
tp @a[tag=red10] -59 -61 -170 225 0

tp @a[tag=red11] -59 -61 -213 300 0
tp @a[tag=red12] -59 -61 -170 225 0
tp @a[tag=red13] -59 -61 -213 300 0
tp @a[tag=red14] -59 -61 -170 225 0
tp @a[tag=red15] -59 -61 -213 300 0

tp @a[tag=blue1] -11 -61 -214 45 0
tp @a[tag=blue2] -11 -61 -180 45 0
tp @a[tag=blue3] -11 -61 -214 45 0
tp @a[tag=blue4] -11 -61 -180 45 0
tp @a[tag=blue5] -11 -61 -214 45 0

tp @a[tag=blue6] -11 -61 -180 45 0
tp @a[tag=blue7] -11 -61 -214 45 0
tp @a[tag=blue8] -11 -61 -180 45 0
tp @a[tag=blue9] -11 -61 -214 45 0
tp @a[tag=blue10] -11 -61 -180 45 0

tp @a[tag=blue11] -11 -61 -214 45 0
tp @a[tag=blue12] -11 -61 -180 45 0
tp @a[tag=blue13] -11 -61 -214 45 0
tp @a[tag=blue14] -11 -61 -180 45 0
tp @a[tag=blue15] -11 -61 -214 45 0

spawnpoint @a[tag=red1] -59 -61 -213 300
spawnpoint @a[tag=red3] -59 -61 -213 300
spawnpoint @a[tag=red5] -59 -61 -213 300
spawnpoint @a[tag=red7] -59 -61 -213 300
spawnpoint @a[tag=red9] -59 -61 -213 300
spawnpoint @a[tag=red11] -59 -61 -213 300
spawnpoint @a[tag=red13] -59 -61 -213 300
spawnpoint @a[tag=red15] -59 -61 -213 300
spawnpoint @a[tag=red2] -59 -61 -170 225
spawnpoint @a[tag=red4] -59 -61 -170 225
spawnpoint @a[tag=red6] -59 -61 -170 225
spawnpoint @a[tag=red8] -59 -61 -170 225
spawnpoint @a[tag=red10] -59 -61 -170 225
spawnpoint @a[tag=red12] -59 -61 -170 225
spawnpoint @a[tag=red14] -59 -61 -170 225

spawnpoint @a[tag=blue1] -11 -61 -214 45
spawnpoint @a[tag=blue3] -11 -61 -214 45
spawnpoint @a[tag=blue5] -11 -61 -214 45
spawnpoint @a[tag=blue7] -11 -61 -214 45
spawnpoint @a[tag=blue9] -11 -61 -214 45
spawnpoint @a[tag=blue11] -11 -61 -214 45
spawnpoint @a[tag=blue13] -11 -61 -214 45
spawnpoint @a[tag=blue15] -11 -61 -214 45
spawnpoint @a[tag=blue2] -11 -61 -180 45
spawnpoint @a[tag=blue4] -11 -61 -180 45
spawnpoint @a[tag=blue6] -11 -61 -180 45
spawnpoint @a[tag=blue8] -11 -61 -180 45
spawnpoint @a[tag=blue10] -11 -61 -180 45
spawnpoint @a[tag=blue12] -11 -61 -180 45
spawnpoint @a[tag=blue14] -11 -61 -180 45

fill -61 -61 -211 -57 -58 -211 glass replace
fill -56 -58 -216 -56 -61 -212 glass replace
fill -61 -57 -175 -52 -61 -175 glass replace
fill -50 -61 -166 -50 -59 -170 glass replace
fill -9 -61 -176 -12 -59 -176 glass replace
fill -14 -59 -178 -14 -61 -182 glass replace
fill -19 -61 -216 -19 -58 -209 glass replace
fill -9 -61 -209 -18 -58 -209 glass replace

gamemode adventure @a

scoreboard players set clock ui_enable 1

schedule function aimatrix:guns_loadout/loadout_item 10t append

schedule function aimatrix:games/maps/teamdeathmatch/radar_station/2_replace_blocks 30t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/3_replace_blocks 60t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/2_replace_blocks 90t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/3_replace_blocks 120t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/5_destroy_start 160t append
schedule function aimatrix:games/maps/teamdeathmatch/radar_station/6_launch_matrices 1t append
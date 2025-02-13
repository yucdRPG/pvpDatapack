tp @a[tag=red1] 205 -62 198 0 0
tp @a[tag=red2] 203 -62 198 0 0
tp @a[tag=red3] 201 -62 198 0 0
tp @a[tag=red4] 199 -62 198 0 0
tp @a[tag=red5] 197 -62 198 0 0

tp @a[tag=red6] 205 -62 196 0 0
tp @a[tag=red7] 203 -62 196 0 0
tp @a[tag=red8] 201 -62 196 0 0
tp @a[tag=red9] 199 -62 196 0 0
tp @a[tag=red10] 197 -62 196 0 0

tp @a[tag=red11] 205 -62 194 0 0
tp @a[tag=red12] 203 -62 194 0 0
tp @a[tag=red13] 201 -62 194 0 0
tp @a[tag=red14] 199 -62 194 0 0
tp @a[tag=red15] 197 -62 194 0 0

tp @a[tag=blue1] 205 -62 203 180 0
tp @a[tag=blue2] 203 -62 203 180 0
tp @a[tag=blue3] 201 -62 203 180 0
tp @a[tag=blue4] 199 -62 203 180 0
tp @a[tag=blue5] 197 -62 203 180 0

tp @a[tag=blue6] 205 -62 205 180 0
tp @a[tag=blue7] 203 -62 205 180 0
tp @a[tag=blue8] 201 -62 205 180 0
tp @a[tag=blue9] 199 -62 205 180 0
tp @a[tag=blue10] 197 -62 205 180 0

tp @a[tag=blue11] 205 -62 207 180 0
tp @a[tag=blue12] 203 -62 207 180 0
tp @a[tag=blue13] 201 -62 207 180 0
tp @a[tag=blue14] 199 -62 207 180 0
tp @a[tag=blue15] 197 -62 207 180 0

spawnpoint @a[team=Red] 201 -58 197
spawnpoint @a[team=Blue] 201 -58 204

tag @a remove dead
tag @a remove bombtaker
gamemode adventure @a

fill 205 -59 201 197 -62 201 glass replace
fill 205 -59 200 197 -62 200 glass replace
scoreboard players set clock countdown 160
function aimatrix:games/maps/competitive/test_map/6_launch_matrices
schedule function aimatrix:games/maps/competitive/test_map/2_replace_blocks 30t append
schedule function aimatrix:games/maps/competitive/test_map/3_replace_blocks 60t append
schedule function aimatrix:games/maps/competitive/test_map/2_replace_blocks 90t append
schedule function aimatrix:games/maps/competitive/test_map/3_replace_blocks 120t append
schedule function aimatrix:games/maps/competitive/test_map/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/competitive/test_map/5_destroy_start 160t append

execute as @r if score clock round matches 2..7 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r if score clock round matches 9..15 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

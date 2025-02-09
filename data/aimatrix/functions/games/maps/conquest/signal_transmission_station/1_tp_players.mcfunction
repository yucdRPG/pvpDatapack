tp @a[tag=red1] -272 -63 -171 270 0
tp @a[tag=red2] -272 -63 -169 270 0
tp @a[tag=red3] -272 -63 -167 270 0
tp @a[tag=red4] -272 -63 -165 270 0
tp @a[tag=red5] -272 -63 -163 270 0

tp @a[tag=red6] -272 -63 -161 270 0
tp @a[tag=red7] -272 -63 -159 270 0
tp @a[tag=red8] -274 -63 -171 270 0
tp @a[tag=red9] -274 -63 -169 270 0
tp @a[tag=red10] -274 -63 -167 270 0

tp @a[tag=red11] -274 -63 -165 270 0
tp @a[tag=red12] -274 -63 -163 270 0
tp @a[tag=red13] -274 -63 -161 270 0
tp @a[tag=red14] -274 -63 -159 270 0
tp @a[tag=red15] -276 -63 -165 270 0

tp @a[tag=blue1] -202 -63 -163 90 0
tp @a[tag=blue2] -202 -63 -165 90 0
tp @a[tag=blue3] -202 -63 -167 90 0
tp @a[tag=blue4] -202 -63 -169 90 0
tp @a[tag=blue5] -202 -63 -171 90 0

tp @a[tag=blue6] -202 -63 -173 90 0
tp @a[tag=blue7] -202 -63 -175 90 0
tp @a[tag=blue8] -200 -63 -163 90 0
tp @a[tag=blue9] -200 -63 -165 90 0
tp @a[tag=blue10] -200 -63 -167 90 0

tp @a[tag=blue11] -200 -63 -169 90 0
tp @a[tag=blue12] -200 -63 -171 90 0
tp @a[tag=blue13] -200 -63 -173 90 0
tp @a[tag=blue14] -200 -63 -175 90 0
tp @a[tag=blue15] -198 -64 -169 90 0

spawnpoint @a[team=Red] -276 -63 -165
spawnpoint @a[team=Blue] -198 -63 -169
fill -273 -53 -189 -271 -63 -189 glass replace
fill -250 -60 -174 -250 -63 -172 glass replace
fill -254 -58 -158 -260 -63 -158 glass replace
fill -260 -58 -157 -260 -63 -146 glass replace
fill -207 -60 -158 -221 -63 -158 glass replace
fill -222 -60 -160 -222 -63 -162 glass replace
fill -199 -59 -182 -198 -63 -182 glass replace
gamemode adventure @a

scoreboard players set clock sector_ready 1
scoreboard players set clock ui_enable 1


schedule function aimatrix:guns_loadout/loadout_item 10t append

schedule clear aimatrix:games/matrices/sector_control/sector_control_1s_loop
schedule clear aimatrix:games/matrices/sector_control/sector_control_loop 
schedule function aimatrix:games/maps/conquest/signal_transmission_station/2_replace_blocks 30t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/3_replace_blocks 60t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/2_replace_blocks 90t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/3_replace_blocks 120t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/4_destroy_blocks 140t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/5_destroy_start 160t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/6_launch_matrices 1t append
#schedule function aimatrix:games/matrices/sector_control/killdetect 1t replace

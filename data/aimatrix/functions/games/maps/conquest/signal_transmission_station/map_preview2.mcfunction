tp @a[gamemode=spectator] -253 -40 -141 230 30
title @a title ""
title @a subtitle "争夺A、B、C三个据点，获得占领分数"
scoreboard players set clock Asector 0
scoreboard players set clock Bsector 0
scoreboard players set clock Csector 0

schedule function aimatrix:games/matrices/sector_control/sector_control_ini 1t append
# fill -244 -56 -197 -240 -56 -193 white_wool destroy
# fill -236 -56 -169 -236 -56 -165 white_wool destroy
# fill -238 -56 -167 -234 -56 -167 white_wool destroy
# fill -232 -56 -142 -230 -56 -140 white_wool destroy

title @a[team=Red] actionbar ""
title @a[team=Blue] actionbar ""

scoreboard players set map_number_recorder mode 6
scoreboard players set map_number_recorder map_number 2
# 3秒
title @a title "山景别墅"
title @a subtitle "爆破模式"
scoreboard players set clock countdown 400
scoreboard players set clock ingame 1

schedule function aimatrix:games/maps/competitive/raid_s_q/map_preview 110t append
schedule function aimatrix:games/maps/competitive/raid_s_q/map_preview2 7s append
schedule function aimatrix:games/maps/competitive/raid_s_q/map_preview3 10s append
schedule function aimatrix:games/maps/competitive/raid_s_q/map_preview4 13s append
schedule function aimatrix:games/maps/competitive/raid_s_q/map_preview5 16s append
schedule function aimatrix:games/maps/competitive/raid_s_q/1_tp_players 19s append

function aimatrix:games/matrices/c4_bomb/c4_detect1
function aimatrix:games/matrices/damage_statistics/statistics/damage
# 3秒
title @a title "冯德尔码头"
title @a subtitle "爆破模式"
scoreboard players set clock countdown 400
scoreboard players set clock ingame 1

schedule function aimatrix:games/maps/competitive/vondel_waterfront/map_preview 110t append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/map_preview2 7s append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/map_preview3 10s append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/map_preview4 13s append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/map_preview5 16s append
schedule function aimatrix:games/maps/competitive/vondel_waterfront/1_tp_players 19s append

function aimatrix:games/matrices/c4_bomb/c4_detect1
function aimatrix:games/matrices/damage_statistics/statistics/damage
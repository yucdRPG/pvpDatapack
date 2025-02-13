# 3秒
title @a title "test_map"
title @a subtitle "爆破模式"
scoreboard players set clock countdown 400
scoreboard players set clock ingame 1
schedule function aimatrix:games/maps/competitive/test_map/map_preview 110t append
schedule function aimatrix:games/maps/competitive/test_map/map_preview2 7s append
schedule function aimatrix:games/maps/competitive/test_map/map_preview3 19s append
schedule function aimatrix:games/maps/competitive/test_map/map_preview4 25s append
schedule function aimatrix:games/maps/competitive/test_map/map_preview5 28s append
schedule function aimatrix:games/maps/competitive/test_map/1_tp_players 31s append

function aimatrix:games/matrices/c4_bomb/c4_detect1
function aimatrix:games/matrices/damage_statistics/statistics/damage
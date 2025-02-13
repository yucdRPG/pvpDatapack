# 3秒
title @a title "双塔"
title @a subtitle "爆破模式"
scoreboard players set clock countdown 400
scoreboard players set clock ingame 1

schedule function aimatrix:games/maps/competitive/twin_tower/map_preview 110t append
schedule function aimatrix:games/maps/competitive/twin_tower/map_preview2 7s append
schedule function aimatrix:games/maps/competitive/twin_tower/map_preview3 19s append
schedule function aimatrix:games/maps/competitive/twin_tower/map_preview4 25s append
schedule function aimatrix:games/maps/competitive/twin_tower/map_preview5 28s append
schedule function aimatrix:games/maps/competitive/twin_tower/1_tp_players 31s append

function aimatrix:games/matrices/c4_bomb/c4_detect1
function aimatrix:games/matrices/damage_statistics/statistics/damage
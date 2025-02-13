# 3秒
title @a title "信号发射台旧址"
title @a subtitle "占领模式"
scoreboard players set clock countdown 9999999
scoreboard players set clock ingame 1
scoreboard players set clock Asector 0
scoreboard players set clock Bsector 0
scoreboard players set clock Csector 0
scoreboard players set clock Asector_status 0
scoreboard players set clock Bsector_status 0
scoreboard players set clock Csector_status 0

#schedule function aimatrix:games/maps/competitive/test_map/map_preview 110t append
#schedule function aimatrix:games/maps/competitive/test_map/map_preview2 7s append
#schedule function aimatrix:games/maps/competitive/test_map/map_preview3 10s append
#schedule function aimatrix:games/maps/competitive/test_map/map_preview4 13s append
#schedule function aimatrix:games/maps/competitive/test_map/map_preview5 16s append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/1_tp_players 19s append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/map_preview 110t append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/map_preview2 7s append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/map_preview3 27s append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/map_preview4 30s append
schedule function aimatrix:games/maps/conquest/signal_transmission_station/map_preview5 33s append

function aimatrix:games/matrices/damage_statistics/statistics/damage
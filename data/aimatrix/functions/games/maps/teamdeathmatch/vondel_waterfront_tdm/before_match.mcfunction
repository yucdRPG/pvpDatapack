# 3秒
title @a title "冯德尔码头"
title @a subtitle "冲锋团队竞技"
scoreboard players set clock countdown 9999999
scoreboard players set clock ingame 1
scoreboard players set @a killstreak 0

schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/1_tp_players 19s append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview 110t append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview2 7s append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview3 23s append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview4 27s append
schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview5 30s append
schedule clear aimatrix:games/matrices/tdm_detect/win_detect
schedule function aimatrix:games/matrices/tdm_detect/win_detect 19s append

function aimatrix:games/matrices/damage_statistics/statistics/damage


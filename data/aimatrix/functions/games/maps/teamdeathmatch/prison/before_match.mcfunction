# 3秒
title @a title "秘密监狱"
title @a subtitle "冲锋团队竞技"
scoreboard players set clock countdown 9999999
scoreboard players set clock ingame 1
scoreboard players set @a killstreak 0
weather thunder

schedule function aimatrix:games/maps/teamdeathmatch/prison/1_tp_players 19s append
schedule function aimatrix:games/maps/teamdeathmatch/prison/map_preview 110t append
schedule function aimatrix:games/maps/teamdeathmatch/prison/map_preview2 7s append
schedule function aimatrix:games/maps/teamdeathmatch/prison/map_preview3 10s append
schedule function aimatrix:games/maps/teamdeathmatch/prison/map_preview4 13s append
schedule function aimatrix:games/maps/teamdeathmatch/prison/map_preview5 16s append
schedule clear aimatrix:games/matrices/tdm_detect/win_detect
schedule function aimatrix:games/matrices/tdm_detect/win_detect 19s append

function aimatrix:games/matrices/damage_statistics/statistics/damage
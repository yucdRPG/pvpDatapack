execute positioned 0 0 -20 as @p if score clock ingame matches 0 run function aimatrix:map_choose/startgame
execute positioned 0 0 -20 as @p if score clock ingame matches 1 run title @s title "已加入游戏队列，即将进入对局"
execute positioned 0 0 -20 as @p if score clock ingame matches 1 run schedule function aimatrix:map_choose/join_prepare 3s append
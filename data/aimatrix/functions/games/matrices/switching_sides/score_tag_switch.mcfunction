scoreboard objectives add red_score_new dummy
scoreboard objectives add blue_score_new dummy
scoreboard players set clock red_score_new 0
scoreboard players set clock blue_score_new 0
scoreboard players operation clock blue_score_new = clock red_score
scoreboard players operation clock red_score_new = clock blue_score
scoreboard players operation clock red_score = clock red_score_new
scoreboard players operation clock blue_score = clock blue_score_new
team add temp
team join temp @a[team=Red]
team join Red @a[team=Blue]
team join Blue @a[team=temp]
tag @a remove red1
tag @a remove red2
tag @a remove red3
tag @a remove red4
tag @a remove red5
tag @a remove red6
tag @a remove red7
tag @a remove red8
tag @a remove red9
tag @a remove red10
tag @a remove red11
tag @a remove red12
tag @a remove red13
tag @a remove red14
tag @a remove red15
tag @a remove blue1
tag @a remove blue2
tag @a remove blue3
tag @a remove blue4
tag @a remove blue5
tag @a remove blue6
tag @a remove blue7
tag @a remove blue8
tag @a remove blue9
tag @a remove blue10
tag @a remove blue11
tag @a remove blue12
tag @a remove blue13
tag @a remove blue14
tag @a remove blue15
tag @a remove dead
tag @r[team=Red,tag=] add red1
tag @r[team=Red,tag=] add red2
tag @r[team=Red,tag=] add red3
tag @r[team=Red,tag=] add red4
tag @r[team=Red,tag=] add red5
tag @r[team=Red,tag=] add red6
tag @r[team=Red,tag=] add red7
tag @r[team=Red,tag=] add red8
tag @r[team=Red,tag=] add red9
tag @r[team=Red,tag=] add red10
tag @r[team=Red,tag=] add red11
tag @r[team=Red,tag=] add red12
tag @r[team=Red,tag=] add red13
tag @r[team=Red,tag=] add red14
tag @r[team=Red,tag=] add red15
tag @r[team=Blue,tag=] add blue1
tag @r[team=Blue,tag=] add blue2
tag @r[team=Blue,tag=] add blue3
tag @r[team=Blue,tag=] add blue4
tag @r[team=Blue,tag=] add blue5
tag @r[team=Blue,tag=] add blue6
tag @r[team=Blue,tag=] add blue7
tag @r[team=Blue,tag=] add blue8
tag @r[team=Blue,tag=] add blue9
tag @r[team=Blue,tag=] add blue10
tag @r[team=Blue,tag=] add blue11
tag @r[team=Blue,tag=] add blue12
tag @r[team=Blue,tag=] add blue13
tag @r[team=Blue,tag=] add blue14
tag @r[team=Blue,tag=] add blue15
title @a title "换边"
tag @a remove bombtaker

scoreboard players set clock countdown 41

execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run schedule function aimatrix:games/maps/competitive/raid_s_q/1_tp_players 30t append
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run schedule function aimatrix:games/maps/competitive/vondel_waterfront/1_tp_players 30t append


execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run schedule function aimatrix:games/maps/competitive/twin_tower/1_tp_players 30t append
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 6 run schedule function aimatrix:games/maps/competitive/test_map/1_tp_players 30t append

#回合开始时极速下包bug的补丁  PATCH
execute as @a run scoreboard players set @s bomb_plant_progress 0

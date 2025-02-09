# > aimatrix:map_choose/maximum_detect_loop

# 检测当前图数是否超过最大，若是则重置
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 3.. run scoreboard players set map_number_recorder map_number 1
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches ..0 run scoreboard players set map_number_recorder map_number 1

execute as @r if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 2.. run scoreboard players set map_number_recorder map_number 1
execute as @r if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches ..0 run scoreboard players set map_number_recorder map_number 1

execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 5.. run scoreboard players set map_number_recorder map_number 1
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches ..0 run scoreboard players set map_number_recorder map_number 1

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 4.. run scoreboard players set map_number_recorder map_number 1
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches ..0 run scoreboard players set map_number_recorder map_number 1

execute as @r if score map_number_recorder mode matches 7.. run scoreboard players set map_number_recorder mode 1
execute as @r if score map_number_recorder mode matches ..0 run scoreboard players set map_number_recorder mode 1
# 循环
schedule function aimatrix:map_choose/maximum_detect_loop 1t append

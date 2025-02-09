execute as @r if score clock Asector_status matches 1 run scoreboard players add clock red_score 1
execute as @r if score clock Asector_status matches -1 run scoreboard players add clock blue_score 1
execute as @r if score clock Bsector_status matches 1 run scoreboard players add clock red_score 1
execute as @r if score clock Bsector_status matches -1 run scoreboard players add clock blue_score 1
execute as @r if score clock Csector_status matches 1 run scoreboard players add clock red_score 1
execute as @r if score clock Csector_status matches -1 run scoreboard players add clock blue_score 1
execute as @r if score clock red_score matches 1000.. run title @a title ""
execute as @r if score clock red_score matches 1000.. run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7c红队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock red_score matches 1000.. run function aimatrix:games/matrices/sector_control/sector_reset
execute as @r if score clock blue_score matches 1000.. run title @a title ""
execute as @r if score clock blue_score matches 1000.. run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7b蓝队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock blue_score matches 1000.. run function aimatrix:games/matrices/sector_control/sector_reset
schedule function aimatrix:games/matrices/sector_control/sector_control_1s_loop 1s append

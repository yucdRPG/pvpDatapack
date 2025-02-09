execute as @r if score clock red_score >= clock aim_kills run title @a title ""
execute as @r if score clock red_score >= clock aim_kills run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7c红队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock red_score >= clock aim_kills run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock red_score >= clock aim_kills run tellraw @a "        \u00a7e\u00a7k1\u00a7r \u00a7c\u00a7l红方队伍\u00a7r夺得本局胜利 \u00a7e\u00a7k1"
execute as @r if score clock red_score >= clock aim_kills run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock red_score >= clock aim_kills run function aimatrix:games/matrices/sector_control/sector_reset

execute as @r if score clock blue_score >= clock aim_kills run title @a title ""
execute as @r if score clock blue_score >= clock aim_kills run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7b蓝队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock blue_score >= clock aim_kills run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock blue_score >= clock aim_kills run tellraw @a "        \u00a7e\u00a7k1\u00a7r \u00a7b\u00a7l蓝方队伍\u00a7r夺得本局胜利 \u00a7e\u00a7k1"
execute as @r if score clock blue_score >= clock aim_kills run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock blue_score >= clock aim_kills run function aimatrix:games/matrices/sector_control/sector_reset

schedule function aimatrix:games/matrices/tdm_detect/win_detect 1s append
# execute as @r if score clock blue_score matches 8 run tellraw @a "\u00a7l---------------------------"
# execute as @r if score clock blue_score matches 8 run tellraw @a "        \u00a7e\u00a7k1\u00a7r \u00a7b\u00a7l蓝方队伍\u00a7r夺得本局胜利 \u00a7e\u00a7k1"
# execute as @r if score clock blue_score matches 8 run tellraw @a "\u00a7l---------------------------"
# execute as @r if score clock blue_score matches 8 run title @a title ""
# execute as @r if score clock blue_score matches 8 run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7b蓝队\u00a7r胜利- \u00a7e\u00a7k1"
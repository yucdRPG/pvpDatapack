kill @e[type=item]
tag @a remove dead
clear @a tacz:modern_kinetic_gun
clear @a iron_sword
clear @a tnt
gamemode adventure @a[team=Red]
gamemode adventure @a[team=Blue]
scoreboard players add clock round 1
scoreboard players set clock countdown 160
scoreboard players set @a death 0
scoreboard players set @a bomb 0
scoreboard players set @a player_status 0
scoreboard players set @a bombdrop 0
scoreboard players set clock bomb_planted 3
scoreboard players set @a killstreak 0
schedule clear aimatrix:games/matrices/c4_bomb/c4_detect2
function aimatrix:games/matrices/c4_bomb/c4_detect2

tellraw @a "\u00a77 ----------------------------------- "


#解释：这里都是1t内完成的，只要有赛点显示就行了，无须担心重复显示

execute as @r if score clock red_score matches 7 run title @a title ""
execute as @r if score clock red_score matches 7 run title @a subtitle "-[ \u00a7eMATCHPOINT\u00a7r ]-"
execute as @r if score clock blue_score matches 7 run title @a title ""
execute as @r if score clock blue_score matches 7 run title @a subtitle "-[ \u00a7eMATCHPOINT\u00a7r ]-"

execute as @r if score clock round matches 8 run function aimatrix:games/matrices/switching_sides/score_tag_switch

execute as @r if score clock red_score matches 8 run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock red_score matches 8 run tellraw @a "        \u00a7e\u00a7k1\u00a7r \u00a7c\u00a7l红方队伍\u00a7r夺得本局胜利 \u00a7e\u00a7k1"
execute as @r if score clock red_score matches 8 run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock red_score matches 8 run title @a title ""
execute as @r if score clock red_score matches 8 run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7c红队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock red_score matches 8 run function aimatrix:games/matrices/sector_control/sector_reset

execute as @r if score clock blue_score matches 8 run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock blue_score matches 8 run tellraw @a "        \u00a7e\u00a7k1\u00a7r \u00a7b\u00a7l蓝方队伍\u00a7r夺得本局胜利 \u00a7e\u00a7k1"
execute as @r if score clock blue_score matches 8 run tellraw @a "\u00a7l---------------------------"
execute as @r if score clock blue_score matches 8 run title @a title ""
execute as @r if score clock blue_score matches 8 run title @a subtitle "\u00a7e\u00a7k1\u00a7r   -\u00a7b蓝队\u00a7r胜利- \u00a7e\u00a7k1"
execute as @r if score clock blue_score matches 8 run function aimatrix:games/matrices/sector_control/sector_reset

#删除下包检测等
kill @e[type=slime]

execute as @r if score clock ingame matches 1 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 unless score clock round matches 8 run schedule function aimatrix:games/maps/competitive/twin_tower/1_tp_players 1t append
execute as @r if score clock ingame matches 1 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 4 unless score clock round matches 8 run schedule function aimatrix:games/maps/competitive/test_map/1_tp_players 1t append

execute as @r if score clock ingame matches 1 if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 unless score clock round matches 8 run schedule function aimatrix:games/maps/competitive/raid_s_q/1_tp_players 1t append
execute as @r if score clock ingame matches 1 if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 unless score clock round matches 8 run schedule function aimatrix:games/maps/competitive/vondel_waterfront/1_tp_players 1t append


#bomb_planted 0->未安装 1->已安装 2->被拆除 3->回合准备时间
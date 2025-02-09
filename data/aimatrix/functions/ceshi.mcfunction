
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run schedule function aimatrix:games/maps/competitive/twin_tower/before_match 3s append
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run schedule function aimatrix:games/maps/conquest/signal_transmission_station/before_match 3s append
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run schedule function aimatrix:games/maps/teamdeathmatch/radar_station/before_match 3s append
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run schedule function aimatrix:games/maps/competitive/raid_s_q/before_match 3s append
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run schedule function aimatrix:games/maps/competitive/vondel_waterfront/before_match 3s append
execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run schedule function aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/before_match 3s append
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run schedule function aimatrix:games/maps/teamdeathmatch/shoot_house/before_match 3s append
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run schedule function aimatrix:matchstart/team_decide 6s append

execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run title @a title "对局将在\u00a7e10\u00a7r秒后开始"
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run schedule function aimatrix:games/maps/teamdeathmatch/prison/before_match 3s append
execute as @r if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run schedule function aimatrix:matchstart/team_decide 6s append



gamerule fallDamage true
gamerule sendCommandFeedback false

clear @a
kill @e[type=item]
setblock 0 2 -19 air
kill @e[type=bee]
summon bee 22 2 -19 {Silent:true,Invulnerable:true,active_effects:[{id:invisibility,show_particles:false,duration:20},{id:"resistance",show_particles:false,duration:100000,amplifier:6}],NoAI:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"~对局正在进行中，无法选择局内枪械~\",\"color\": \"yellow\"}",attributes:[{id:scale,base:0.5}]}
setblock 22 1 -19 air
scoreboard players set @a kill 0
scoreboard players set @a kills 0
scoreboard players set @a death 0
scoreboard players set @a deaths 0
scoreboard players set @a damage_taken 0
scoreboard players set @a damage_taken_1 0
scoreboard players set @a damage_taken_2 0
scoreboard players set @a damage_taken_old 0
scoreboard players set @a damage_dealt 0
scoreboard players set @a damage_Dta 0
scoreboard players set @a damage 0
scoreboard players set @a player_status 0
gamerule fallDamage true




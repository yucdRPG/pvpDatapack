# > aimatrix:initialization 用于初始化

# 设置tacz配置的游戏规则 水下伤害开启 火焰伤害开启 摔落伤害开启 保留物品栏 禁用自然更新 
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule freezeDamage false
gamerule keepInventory false 
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule mobGriefing false
gamerule doTileDrops false
gamerule fallDamage false
gamerule reducedDebugInfo false
#gamerule showDeathMessages false

#队伍核心 
team leave @a
team add lobby
team modify lobby color gray
team modify lobby prefix "[大厅]"
team modify lobby friendlyFire false
team modify lobby nametagVisibility always
team modify lobby seeFriendlyInvisibles false
team join lobby @a
team add Red
team add Blue
team modify Red color red
team modify Red friendlyFire false
team modify Red nametagVisibility hideForOtherTeams
team modify Red seeFriendlyInvisibles false
team modify Red prefix ""
team modify Blue color blue
team modify Blue friendlyFire false
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue seeFriendlyInvisibles false
team modify Blue prefix ""




#选图核心 重置选图并默认为图1 启动选图检测
schedule clear aimatrix:map_choose/block_replace_loop
schedule clear aimatrix:map_choose/maximum_detect_loop
scoreboard objectives add map_number dummy
scoreboard objectives add mode dummy
scoreboard players set map_number_recorder map_number 1
scoreboard players set map_number_recorder mode 1
function aimatrix:map_choose/maximum_detect_loop
function aimatrix:map_choose/block_replace_loop
scoreboard objectives add sector_ready dummy
scoreboard players reset clock sector_ready
scoreboard objectives add player_count dummy
scoreboard players reset clock player_count
scoreboard objectives setdisplay sidebar

#计时核心 1t标准
scoreboard objectives add countdown_minute dummy
scoreboard objectives add countdown_second dummy
schedule clear aimatrix:countdown/countdown_loop
function aimatrix:countdown/countdown

#计时核心 1s标准
schedule clear aimatrix:countdown/countdown_1s_loop
function aimatrix:countdown/countdown_1s_loop

#计时核心 回合数
scoreboard objectives add round dummy

#计时核心 游戏内判定
scoreboard objectives add fight_begin dummy
scoreboard players set clock fight_begin 0
scoreboard objectives add ingame dummy
scoreboard players set clock ingame 0
scoreboard objectives add ui_enable dummy
scoreboard players set clock ui_enable 0

#计时核心 对局开启倒计时
scoreboard objectives add match_cd dummy
scoreboard players set clock match_cd 1200
schedule clear aimatrix:matchstart/match_cooldown
function aimatrix:matchstart/match_cooldown

#提醒核心 玩家进入判定
schedule clear aimatrix:lobby_enter/enter_title
function aimatrix:lobby_enter/enter_title

#选枪系统
schedule clear aimatrix:guns_loadout/loadout_loop
schedule function aimatrix:guns_loadout/loadout_loop 1t append
scoreboard objectives add select dummy
scoreboard objectives add rifle dummy
scoreboard objectives add pistol dummy
scoreboard objectives add rifle_1 dummy
scoreboard objectives add rifle_2 dummy
scoreboard objectives add rifle_3 dummy
scoreboard objectives add rifle_4 dummy
scoreboard objectives add rifle_5 dummy
scoreboard objectives add rifle_6 dummy
scoreboard objectives add rifle_7 dummy
scoreboard objectives add rifle_8 dummy
scoreboard objectives add rifle_9 dummy
scoreboard objectives add rifle_10 dummy
scoreboard objectives add rifle_11 dummy
scoreboard objectives add rifle_12 dummy
scoreboard objectives add rifle_13 dummy
scoreboard objectives add rifle_14 dummy
scoreboard objectives add rifle_15 dummy
scoreboard objectives add pistol_1 dummy
scoreboard objectives add pistol_2 dummy
scoreboard objectives add pistol_3 dummy
scoreboard objectives add pistol_4 dummy
scoreboard objectives add pistol_5 dummy
scoreboard objectives add nogun trigger
scoreboard players enable @a nogun
scoreboard objectives add nogun_detect dummy
scoreboard players reset @a nogun_detect
scoreboard objectives add killself trigger
scoreboard players enable @a killself
scoreboard objectives add nogun_have dummy
scoreboard players set @a nogun_have 0
scoreboard objectives add guns_count dummy
scoreboard objectives add rifle1 trigger
scoreboard objectives add rifle2 trigger
scoreboard objectives add rifle3 trigger
scoreboard objectives add rifle4 trigger
scoreboard objectives add rifle5 trigger
scoreboard objectives add rifle6 trigger
scoreboard objectives add rifle7 trigger
scoreboard objectives add rifle8 trigger
scoreboard objectives add rifle9 trigger
scoreboard objectives add rifle10 trigger
scoreboard objectives add rifle11 trigger
scoreboard objectives add rifle12 trigger
scoreboard objectives add rifle13 trigger
scoreboard objectives add rifle14 trigger
scoreboard objectives add rifle15 trigger
scoreboard objectives add pistol1 trigger
scoreboard objectives add pistol2 trigger
scoreboard objectives add pistol3 trigger
scoreboard objectives add pistol4 trigger
scoreboard objectives add pistol5 trigger

#KD核心
scoreboard objectives add kill playerKillCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add death deathCount
scoreboard objectives add deaths deathCount
scoreboard objectives add player_status deathCount
scoreboard objectives add damage_dealt dummy

#伤害统计核心
scoreboard objectives add health health
scoreboard objectives add 30 dummy
scoreboard objectives add damage_taken custom:damage_taken
scoreboard players set @a damage_taken 0
scoreboard objectives add damage_taken_2 dummy
scoreboard players set @a damage_taken_2 0
scoreboard objectives add damage_taken_old dummy
scoreboard players set @a damage_taken_old 0
scoreboard objectives add damage_taken_1 dummy
scoreboard players set @a damage_taken_1 0
scoreboard objectives add damage_Dta dummy
scoreboard players set @a damage_Dta 0
scoreboard objectives add damage dummy
scoreboard objectives add 10 dummy
scoreboard players set @a 10 10
scoreboard players set @a death 0
scoreboard players set @a deaths 0
scoreboard players set @a player_status 0
scoreboard players set @a kills 0
scoreboard players set @a damage_dealt 0

#c4检测核心
scoreboard players set @a BlueKill 0
scoreboard players set @a RedKill 0
scoreboard objectives add TeamStatus dummy
scoreboard objectives add hand_tnt dummy
scoreboard objectives add low_head dummy
scoreboard objectives add bomb_plant_progress dummy
scoreboard objectives add inside_bombsite dummy
scoreboard objectives add jump custom:jump
scoreboard objectives add bomb_planted dummy
scoreboard objectives add defuse_ready dummy
scoreboard objectives add bomb_defuse_progress dummy
scoreboard objectives add hand_shears dummy
scoreboard objectives add red_score dummy
scoreboard objectives add blue_score dummy
scoreboard objectives add RedTeamCount dummy
scoreboard objectives add BlueTeamCount dummy
scoreboard objectives add RedTeamLeft dummy
scoreboard objectives add BlueTeamLeft dummy
scoreboard players set clock red_score 0
scoreboard players set clock blue_score 0
scoreboard players set clock RedTeamLeft 0
scoreboard players set clock BlueTeamLeft 0
scoreboard players set @a defuse_ready 0
scoreboard players set @a hand_shears 0

#连杀奖励 和 终极技能
scoreboard objectives add killstreak playerKillCount
scoreboard players set @a killstreak 0
scoreboard objectives add streak_reward_use1 dummy
scoreboard objectives add streak_reward_use2 dummy
scoreboard objectives add streak_reward_use3 dummy
scoreboard players set @a streak_reward_use1 0
scoreboard players set @a streak_reward_use2 0
scoreboard players set @a streak_reward_use3 0
scoreboard objectives add abilitycharge dummy
scoreboard players set @a abilitycharge 0

#清除伤害统计标签防卡bug 还有数据清除
tag @a remove Attacker
tag @a remove Target
scoreboard players set @a kill 0
scoreboard players set @a kills 0
scoreboard players set @a death 0
scoreboard players set @a deaths 0
scoreboard players set @a jump 0
scoreboard players set @a inside_bombsite 0
scoreboard players set @a killstreak 0
scoreboard players set @a abilitycharge 0

#冲锋团队竞技 目标击杀数 设定核心
scoreboard objectives add aim_kills dummy
scoreboard players set clock aim_kills 20

#MVP 判断核心
scoreboard objectives add mvp dummy
scoreboard players set clock mvp 0

#呼吸回血核心
scoreboard objectives add hurt minecraft.custom:damage_taken
scoreboard players set @a hurt 0
scoreboard objectives add hurt_1 dummy
scoreboard players reset @a hurt_1
scoreboard objectives add hurt_2 dummy
scoreboard players reset @a hurt_2

#天气系统
scoreboard objectives add weather_competitive dummy
scoreboard players set clock weather_competitive 0

#清除循环
schedule clear aimatrix:games/matrices/c4_bomb/bekilled
schedule clear aimatrix:games/matrices/teamcount/1_tc
schedule clear aimatrix:games/matrices/round_reset/round_over
schedule clear aimatrix:games/matrices/round_reset/round_over0
schedule clear aimatrix:games/matrices/round_reset/round_start
schedule clear aimatrix:games/maps/competitive/test_map/map_preview
schedule clear aimatrix:games/maps/competitive/test_map/map_preview2
schedule clear aimatrix:games/maps/competitive/test_map/map_preview3
schedule clear aimatrix:games/maps/competitive/test_map/map_preview4
schedule clear aimatrix:games/maps/competitive/test_map/map_preview5
schedule clear aimatrix:games/maps/competitive/test_map/before_match
schedule clear aimatrix:games/maps/competitive/test_map/1_tp_players
schedule clear aimatrix:games/maps/competitive/test_map/2_replace_blocks
schedule clear aimatrix:games/maps/competitive/test_map/3_replace_blocks
schedule clear aimatrix:games/maps/competitive/test_map/4_destroy_blocks
schedule clear aimatrix:games/maps/competitive/test_map/5_destroy_start
schedule clear aimatrix:games/maps/competitive/test_map/6_launch_matrices
schedule clear aimatrix:games/maps/competitive/test_map/7_items_give
schedule clear aimatrix:games/maps/competitive/twin_tower/before_match
schedule clear aimatrix:games/maps/competitive/twin_tower/map_preview
schedule clear aimatrix:games/maps/competitive/twin_tower/map_preview2
schedule clear aimatrix:games/maps/competitive/twin_tower/map_preview3
schedule clear aimatrix:games/maps/competitive/twin_tower/map_preview4
schedule clear aimatrix:games/maps/competitive/twin_tower/map_preview5
schedule clear aimatrix:games/maps/competitive/twin_tower/1_tp_players
schedule clear aimatrix:games/maps/competitive/twin_tower/2_replace_blocks
schedule clear aimatrix:games/maps/competitive/twin_tower/3_replace_blocks
schedule clear aimatrix:games/maps/competitive/twin_tower/4_destroy_blocks
schedule clear aimatrix:games/maps/competitive/twin_tower/5_destroy_start
schedule clear aimatrix:games/maps/competitive/twin_tower/6_launch_matrices
schedule clear aimatrix:games/maps/competitive/twin_tower/7_items_give
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/map_preview
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/map_preview2
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/map_preview3
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/map_preview4
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/map_preview5
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/before_match
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/1_tp_players
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/2_replace_blocks
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/3_replace_blocks
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/4_destroy_blocks
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/5_destroy_start
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/6_launch_matrices
schedule clear aimatrix:games/maps/conquest/signal_transmission_station/7_items_give
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/map_preview
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/map_preview2
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/map_preview3
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/map_preview4
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/map_preview5
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/before_match
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/1_tp_players
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/2_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/3_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/4_destroy_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/5_destroy_start
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/6_launch_matrices
schedule clear aimatrix:games/maps/teamdeathmatch/radar_station/7_items_give
schedule clear aimatrix:games/maps/competitive/raid_s_q/before_match
schedule clear aimatrix:games/maps/competitive/raid_s_q/map_preview
schedule clear aimatrix:games/maps/competitive/raid_s_q/map_preview2
schedule clear aimatrix:games/maps/competitive/raid_s_q/map_preview3
schedule clear aimatrix:games/maps/competitive/raid_s_q/map_preview4
schedule clear aimatrix:games/maps/competitive/raid_s_q/map_preview5
schedule clear aimatrix:games/maps/competitive/raid_s_q/1_tp_players
schedule clear aimatrix:games/maps/competitive/raid_s_q/2_replace_blocks
schedule clear aimatrix:games/maps/competitive/raid_s_q/3_replace_blocks
schedule clear aimatrix:games/maps/competitive/raid_s_q/4_destroy_blocks
schedule clear aimatrix:games/maps/competitive/raid_s_q/5_destroy_start
schedule clear aimatrix:games/maps/competitive/raid_s_q/6_launch_matrices
schedule clear aimatrix:games/maps/competitive/raid_s_q/7_items_give
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/before_match
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/map_preview
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/map_preview2
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/map_preview3
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/map_preview4
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/map_preview5
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/1_tp_players
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/2_replace_blocks
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/3_replace_blocks
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/4_destroy_blocks
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/5_destroy_start
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/6_launch_matrices
schedule clear aimatrix:games/maps/competitive/vondel_waterfront/7_items_give
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/map_preview
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/map_preview2
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/map_preview3
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/map_preview4
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/map_preview5
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/before_match
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/1_tp_players
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/2_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/3_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/4_destroy_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/5_destroy_start
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/6_launch_matrices
schedule clear aimatrix:games/maps/teamdeathmatch/shoot_house/7_items_give
schedule clear aimatrix:games/maps/teamdeathmatch/prison/map_preview
schedule clear aimatrix:games/maps/teamdeathmatch/prison/map_preview2
schedule clear aimatrix:games/maps/teamdeathmatch/prison/map_preview3
schedule clear aimatrix:games/maps/teamdeathmatch/prison/map_preview4
schedule clear aimatrix:games/maps/teamdeathmatch/prison/map_preview5
schedule clear aimatrix:games/maps/teamdeathmatch/prison/before_match
schedule clear aimatrix:games/maps/teamdeathmatch/prison/1_tp_players
schedule clear aimatrix:games/maps/teamdeathmatch/prison/2_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/prison/3_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/prison/4_destroy_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/prison/5_destroy_start
schedule clear aimatrix:games/maps/teamdeathmatch/prison/6_launch_matrices
schedule clear aimatrix:games/maps/teamdeathmatch/prison/7_items_give
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview2
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview3
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview4
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/map_preview5
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/before_match
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/1_tp_players
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/2_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/3_replace_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/4_destroy_blocks
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/5_destroy_start
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/6_launch_matrices
schedule clear aimatrix:games/maps/teamdeathmatch/vondel_waterfront_tdm/7_items_give
schedule clear aimatrix:games/matrices/spectator/spectator_loop
schedule clear aimatrix:games/matrices/sector_control/sector_control_ini
schedule clear aimatrix:games/matrices/sector_control/sector_control_loop
schedule clear aimatrix:games/matrices/sector_control/sector_control_1s_loop
schedule clear aimatrix:games/matrices/c4_bomb/c4_detect1
schedule clear aimatrix:games/matrices/c4_bomb/c4_detect2
schedule clear aimatrix:games/matrices/c4_bomb/c4_detect3
schedule clear aimatrix:games/matrices/c4_bomb/c4_plant
schedule clear aimatrix:games/matrices/c4_bomb/c4_plant
schedule clear aimatrix:games/matrices/c4_bomb/bekilled
schedule clear aimatrix:games/matrices/damage_statistics/statistics/damage
schedule clear aimatrix:games/matrices/sector_control/killdetect
schedule clear aimatrix:games/matrices/sector_control/deathdetect
schedule clear aimatrix:games/matrices/sector_control/deathdetect1
schedule clear aimatrix:guns_loadout/aim_practice
schedule clear aimatrix:games/matrices/tdm_detect/win_detect
schedule clear aimatrix:guns_loadout/loadout_item
schedule clear aimatrix:guns_loadout/loadout_item_clear
schedule clear aimatrix:games/matrices/abilities/streak_reward
schedule clear aimatrix:games/matrices/abilities/ultimate
schedule clear aimatrix:games/matrices/mvp_judge/competitive_ver
schedule clear aimatrix:guns_loadout/nogun
schedule clear aimatrix:guns_loadout/nogun_detect
schedule clear aimatrix:games/matrices/weather/day2night
schedule clear aimatrix:games/matrices/weather/rain
schedule clear aimatrix:games/matrices/weather/day2night_loop
schedule clear aimatrix:games/matrices/weather/day2night_loop2
schedule clear aimatrix:games/matrices/c4_bomb/c4_carrier
schedule clear aimatrix:map_choose/switch_last_map
schedule clear aimatrix:map_choose/switch_mode
schedule clear aimatrix:map_choose/switch_next_map
schedule clear aimatrix:map_choose/start_or_join
schedule clear aimatrix:map_choose/join_prepare
schedule clear aimatrix:games/matrices/sound/ult_ready
schedule clear aimatrix:matchstart/button_set







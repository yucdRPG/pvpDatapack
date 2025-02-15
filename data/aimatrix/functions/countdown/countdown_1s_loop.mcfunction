#选枪系统 改末影箱
effect give @a night_vision infinite 0 true
effect give @a saturation infinite 0 true

execute as @r if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 if score clock ingame matches 1 run effect give @a minecraft:speed infinite 2 true


schedule clear aimatrix:games/matrices/sound/c4_20s
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..820 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..420 run schedule function aimatrix:games/matrices/sound/c4_20s 10t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..220 run schedule function aimatrix:games/matrices/sound/c4_20s 15t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..220 run schedule function aimatrix:games/matrices/sound/c4_20s 5t append

execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 2t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 4t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 6t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 8t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 10t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 12t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 14t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 16t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 18t append
execute as @a at @s if score clock bomb_planted matches 1 if score clock countdown matches 1..120 run schedule function aimatrix:games/matrices/sound/c4_20s 20t append


kill @e[type=item,nbt={Item:{id:"superbwarfare:ru_helmet_6b47"}}]
kill @e[type=item,nbt={Item:{id:"superbwarfare:ru_chest_6b43"}}]
kill @e[type=item,nbt={Item:{id:"superbwarfare:us_helmet_pastg"}}]
kill @e[type=item,nbt={Item:{id:"superbwarfare:us_chest_iotv"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}}]
kill @e[type=item,nbt={Item:{id:"combatdepot:distribution_terminal"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]
kill @e[type=item,nbt={Item:{id:"dummmmmmy:target_dummy"}}]

execute as @a if score clock fight_begin matches 2 run effect give @s instant_health 1 8 true
execute as @r if score clock ingame matches 0 run effect give @a instant_health 1 8 true

execute as @a if score clock ingame matches 0 run scoreboard players set @s death 0
execute as @a if score clock ingame matches 0 run scoreboard players set @s deaths 0
execute as @a if score clock ingame matches 0 run scoreboard players set @s player_status 0

scoreboard players enable @a nogun
execute as @a if score @s nogun matches 1.. if score clock ingame matches 1 run function aimatrix:guns_loadout/nogun
execute as @a if score @s nogun matches 1.. if score clock ingame matches 0 run tellraw @a "\u00a77[TRIGGER] \u00a7r当前不在对局中，无法使用该指令。"
execute as @a if score @s nogun matches 1.. run scoreboard players reset @s nogun
scoreboard players enable @a killself
execute as @a if score @s killself matches 1.. run kill @s
execute as @a if score @s killself matches 1.. run scoreboard players reset @s kill
execute as @a if score @s killself matches 1.. run scoreboard players reset @s killself

scoreboard players set @a[team=lobby] player_count 1
scoreboard players set clock player_count 0
execute as @a run scoreboard players operation clock player_count += @s player_count

#大厅时 地图选择器显示
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l测试  \u00a7b地图:\u00a7r\u00a7l 双塔  \u00a7e编号:\u00a7r\u00a7l6-1" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l测试 \u00a7b地图:\u00a7r\u00a7l 信号发射塔旧址  \u00a7e编号:\u00a7r\u00a7l6-2" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l测试 \u00a7b地图:\u00a7r\u00a7l 雷达站  \u00a7e编号:\u00a7r\u00a7l6-3" }

execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 1 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l搜索与摧毁 \u00a7b地图:\u00a7r\u00a7l 山景别墅  \u00a7e编号:\u00a7r\u00a7l1-1" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l搜索与摧毁 \u00a7b地图:\u00a7r\u00a7l 冯德尔码头  \u00a7e编号:\u00a7r\u00a7l1-2" }

# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 1 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l据点争夺 \u00a7b地图:\u00a7r\u00a7l 哈尼克仓库  \u00a7e编号:\u00a7r\u00a7l2-1" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 1 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7lUndev \u00a7b地图:\u00a7r\u00a7l Undev  \u00a7e编号:\u00a7r\u00a7l2-1" }
# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 2 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l据点争夺 \u00a7b地图:\u00a7r\u00a7l 攻坚训练场  \u00a7e编号:\u00a7r\u00a7l2-2" }
# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 3 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l据点争夺 \u00a7b地图:\u00a7r\u00a7l 冯德尔码头  \u00a7e编号:\u00a7r\u00a7l2-3" }
# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 4 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l据点争夺 \u00a7b地图:\u00a7r\u00a7l 哈尼克仓库  \u00a7e编号:\u00a7r\u00a7l2-4" }
# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 5 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l据点争夺 \u00a7b地图:\u00a7r\u00a7l 秘密监狱  \u00a7e编号:\u00a7r\u00a7l2-5" }

execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l冲锋团队竞技 \u00a7b地图:\u00a7r\u00a7l 冯德尔码头  \u00a7e编号:\u00a7r\u00a7l3-1" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 2 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l冲锋团队竞技 \u00a7b地图:\u00a7r\u00a7l 攻坚训练场  \u00a7e编号:\u00a7r\u00a7l3-2" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 3 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l冲锋团队竞技 \u00a7b地图:\u00a7r\u00a7l 秘密监狱  \u00a7e编号:\u00a7r\u00a7l3-3" }
# execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 4 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7l冲锋团队竞技 \u00a7b地图:\u00a7r\u00a7l Undev  \u00a7e编号:\u00a7r\u00a7l3-4" }

execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 4 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7lUndev \u00a7b地图:\u00a7r\u00a7l Undev  \u00a7e编号:\u00a7r\u00a7l4-0" }
execute as @a unless score clock ingame matches 1 if score map_number_recorder mode matches 5 run title @s actionbar {"text":"\u00a7e模式: \u00a7r\u00a7lUndev \u00a7b地图:\u00a7r\u00a7l Undev  \u00a7e编号:\u00a7r\u00a7l5-0" }



# 对局冷却
execute as @r if score clock match_cd matches ..-1 run schedule clear aimatrix:matchstart/match_cooldown

# C4 检测核心的播报
execute as @a[team=Blue] if score @s bomb matches 1.. at @s run tellraw @a "\u00a77[Item-C4] \u00a7r蓝方玩家错误地捡到了C4,现在C4已经掉落。"

schedule function aimatrix:countdown/countdown_1s_loop 1s append


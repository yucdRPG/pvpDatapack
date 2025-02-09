# 检测玩家是否手持tnt、低头、处于安装区域、属于红队、没有跳跃
#hand_tnt = 1, x_rotation = 60..90
execute as @a[team=Red,nbt={SelectedItem:{id:"minecraft:tnt"}}] run scoreboard players set @s hand_tnt 1
execute as @a[team=Red,nbt=!{SelectedItem:{id:"minecraft:tnt"}}] run scoreboard players set @s hand_tnt 0
execute as @a[team=Red,x_rotation=60..90] if score @s hand_tnt matches 1 run scoreboard players add @s bomb_plant_progress 1
execute as @a[team=Red,x_rotation=-90..60] run scoreboard players set @s bomb_plant_progress 0
execute as @a[team=Red,nbt=!{SelectedItem:{id:"minecraft:tnt"}}] run scoreboard players set @s bomb_plant_progress 0
execute as @a run scoreboard players set @s inside_bombsite 0
execute as @a at @s if block ~ ~-2 ~ emerald_block run scoreboard players set @s inside_bombsite 1
execute as @a if score @s inside_bombsite matches 0 run scoreboard players set @s bomb_plant_progress 0

execute as @a if score @s jump matches 1.. run scoreboard players set @s bomb_plant_progress 0
execute as @a if score @s jump matches 1.. run scoreboard players set @s jump 0

#下包时具有缓慢
execute as @a if score @s bomb_plant_progress matches 1..59 run effect give @s slowness 1 255 true
execute as @a if score @s bomb_plant_progress matches 0 run effect clear @s slowness


# 如果玩家手持 TNT 且持续时间达到 60（即 3 秒），生成 TNT 掉落物
execute as @a[scores={bomb_plant_progress=1}] at @s run playsound entity.armor_stand.hit master @a
#execute as @a[scores={bomb_plant_progress=59}] at @s run summon item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:'["",{"text":"C4","italic":false,"color":"red"},{"text":" ","italic":false},{"text":"炸药包","italic":false,"color":"yellow"}]',Lore:['["",{"text":"拿上C4,杀到炸药安放点，蹲下低头以安放炸药，炸药需要40秒引爆，敌方需要5秒拆除该炸药。","italic":false}]']},Enchantments:[{lvl:1,id:fortune}],HideFlags:1,CanPlaceOn:[]}},PickupDelay:-100}
execute as @a[scores={bomb_plant_progress=59}] at @s run summon slime ~ ~-1 ~ {CustomNameVisible:false,Glowing:true,Invulnerable:true,NoAI:true,NoGravity:true,Silent:true}
execute as @a[scores={bomb_plant_progress=59}] run clear @a tnt
execute as @a[scores={bomb_plant_progress=59}] run schedule clear aimatrix:games/matrices/c4_bomb/c4_detect2
execute as @a[scores={bomb_plant_progress=59}] run schedule clear aimatrix:games/matrices/c4_bomb/c4_detect3
execute as @a[scores={bomb_plant_progress=59}] positioned as @a[team=Red] run playsound minecraft:entity.tnt.primed master @a[team=Red]
execute as @a[scores={bomb_plant_progress=59}] positioned as @a[team=Blue] run playsound minecraft:entity.tnt.primed master @a[team=Blue]
execute as @a[scores={bomb_plant_progress=59}] run scoreboard players set clock bomb_planted 1
execute as @a[scores={bomb_plant_progress=59}] run scoreboard players set clock countdown 810
execute as @a[scores={bomb_plant_progress=59}] run tag @a[tag=bombtaker] remove bombtaker
execute as @a[scores={bomb_plant_progress=59}] if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run function aimatrix:games/matrices/weather/day2night
execute as @a[scores={bomb_plant_progress=59}] if score map_number_recorder mode matches 1 if score map_number_recorder map_number matches 2 run function aimatrix:games/matrices/weather/rain
execute as @a[scores={bomb_plant_progress=59}] run function aimatrix:games/matrices/c4_bomb/c4_defuse

#下包完成时
execute as @a if score @s bomb_plant_progress matches 59 run effect clear @s slowness
execute as @a if score @s bomb_plant_progress matches 59 run scoreboard players set @s bomb_plant_progress 0



schedule function aimatrix:games/matrices/c4_bomb/c4_plant 1t append


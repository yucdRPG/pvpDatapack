schedule clear aimatrix:games/matrices/c4_bomb/c4_plant
#检测玩家是否属于蓝队1、在炸弹周围1、低头、没有跳跃1、手持剪刀

# execute as @a[team=Blue] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},distance=2..] run scoreboard players set @s defuse_ready 0
# execute as @a[team=Blue] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},distance=..2] run scoreboard players set @s defuse_ready 1

execute as @a[team=Blue] at @s if entity @e[type=slime,distance=2..] run scoreboard players set @s defuse_ready 0
execute as @a[team=Blue] at @s if entity @e[type=slime,distance=..2] run scoreboard players set @s defuse_ready 1
execute as @a if score @s jump matches 1.. run scoreboard players set @s bomb_defuse_progress 0
execute as @a if score @s jump matches 1.. run scoreboard players set @s jump 0
execute as @a[team=Blue,nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s hand_shears 1
execute as @a[team=Blue,nbt=!{SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s hand_shears 0
execute as @a[team=Blue,x_rotation=60..90,nbt={SelectedItem:{id:"minecraft:shears"}}] if score @s hand_shears matches 1 if score @s defuse_ready matches 1 run scoreboard players add @s bomb_defuse_progress 1
execute as @a[team=Blue,x_rotation=-90..60] run scoreboard players set @s bomb_defuse_progress 0
execute as @a[team=Blue,nbt=!{SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s bomb_defuse_progress 0


#拆包时具有缓慢
execute as @a if score @s bomb_defuse_progress matches 1..99 run effect give @s slowness 1 255 true
execute as @a if score @s bomb_defuse_progress matches 0 run effect clear @s slowness
execute as @a if score @s bomb_defuse_progress matches 100 run effect clear @s slowness
execute as @a if score @s bomb_defuse_progress matches 100 run scoreboard players set @s bomb_defuse_progress 0

#防止下包的人捡包
#execute as @a if score @s bomb matches 1.. at @s run tellraw @a "\u00a77[Item-C4] \u00a7r有玩家捡走了已经埋下的c4, 现已掉落。"
execute as @a if score @s bomb matches 1.. at @s run clear @s tnt
execute as @a if score @s bomb matches 1.. at @s run summon item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:'["",{"text":"C4","italic":false,"color":"red"},{"text":" ","italic":false},{"text":"炸药包","italic":false,"color":"yellow"}]',Lore:['["",{"text":"拿上C4,杀到炸药安放点，蹲下低头以安放炸药，炸药需要40秒引爆，敌方需要5秒拆除该炸药。","italic":false}]']},Enchantments:[{lvl:1,id:fortune}],HideFlags:1,CanPlaceOn:[]}},PickupDelay:-1}
execute as @a if score @s bomb matches 1.. run scoreboard players set @a bomb 0


execute as @a[scores={bomb_defuse_progress=1}] positioned as @a[team=Red] run playsound minecraft:entity.armor_stand.hit master @a[team=Red]
execute as @a[scores={bomb_defuse_progress=1}] positioned as @a[team=Blue] run playsound minecraft:entity.armor_stand.hit master @a[team=Blue]
execute as @a[team=Blue,scores={bomb_defuse_progress=99}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
execute as @a[team=Blue,scores={bomb_defuse_progress=99}] at @s run kill @e[type=slime]
execute as @a[team=Blue,scores={bomb_defuse_progress=99}] run scoreboard players set clock bomb_planted 2
schedule function aimatrix:games/matrices/c4_bomb/c4_defuse 1t append


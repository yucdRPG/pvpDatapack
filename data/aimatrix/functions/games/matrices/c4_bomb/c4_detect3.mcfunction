execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"}},limit=1] run execute as @r run data modify entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},limit=1] PickupDelay set value -1
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"}},limit=1] run execute if entity @e[team=Red,distance=..4] unless entity @e[team=Blue,distance=..4] run data modify entity @e[type=item,nbt={Item:{id:"minecraft:tnt"}},limit=1] PickupDelay set value 9

execute as @a[team=Blue] if score @s bomb matches 1.. at @s run clear @s tnt
execute as @a[team=Blue] if score @s bomb matches 1.. at @s run summon item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:'["",{"text":"C4","italic":false,"color":"red"},{"text":" ","italic":false},{"text":"炸药包","italic":false,"color":"yellow"}]',Lore:['["",{"text":"拿上C4,杀到炸药安放点，蹲下低头以安放炸药，炸药需要40秒引爆，敌方需要5秒拆除该炸药。","italic":false}]']},Enchantments:[{lvl:1,id:fortune}],HideFlags:1,CanPlaceOn:[]}},PickupDelay:100}
execute as @a[team=Blue] if score @s bomb matches 1.. run effect give @e[type=item,nbt={Item:{id:"minecraft:tnt"}},limit=1] glowing 5 1 true
execute as @a[team=Blue] if score @s bomb matches 1.. run scoreboard players set @a[team=Blue] bomb 0

schedule function aimatrix:games/matrices/c4_bomb/c4_detect3 10t append
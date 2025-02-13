execute as @a run attribute @s minecraft:generic.max_health base set 100
effect give @a instant_health 1 8 true
item replace entity @a[team=Blue] hotbar.3 with shears{display:{Name:'{"text":"拆弹器","italic":false,"color":"aqua"}'}} 1
execute as @r[team=Red] at @s run summon item ~ ~ ~ {Item:{id:tnt,Count:1,tag:{display:{Name:'["",{"text":"C4","italic":false,"color":"red"},{"text":" ","italic":false},{"text":"炸药包","italic":false,"color":"yellow"}]',Lore:['["",{"text":"拿上C4,杀到炸药安放点，蹲下低头以安放炸药，炸药需要40秒引爆，敌方需要5秒拆除该炸药。","italic":false}]']},Enchantments:[{lvl:1,id:fortune}],HideFlags:1,CanPlaceOn:[]}}}

effect give @a[team=Red] resistance 5 4 false
effect give @a[team=Blue] resistance 5 4 false

# item replace entity @a[team=Red] armor.head with superbwarfare:ru_helmet_6b47
# item replace entity @a[team=Red] armor.chest with superbwarfare:ru_chest_6b43
item replace entity @a[team=Red] armor.head with minecraft:leather_helmet{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Damage:0,display:{color:11546150}}

# item replace entity @a[team=Blue] armor.head with superbwarfare:us_helmet_pastg
# item replace entity @a[team=Blue] armor.chest with superbwarfare:us_chest_iotv
item replace entity @a[team=Blue] armor.head with minecraft:leather_helmet{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Damage:0,display:{color:2500784}}
# give 指令可能会导致生成物被kill @e清除，记得检查

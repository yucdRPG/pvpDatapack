execute as @a run attribute @s minecraft:generic.max_health base set 20
effect give @a instant_health 1 8 true

effect give @a[team=Red] resistance 5 4 false
effect give @a[team=Blue] resistance 5 4 false

item replace entity @a[team=Red] armor.head with air
item replace entity @a[team=Red] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Damage:0,display:{color:11546150}}

item replace entity @a[team=Blue] armor.head with air
item replace entity @a[team=Blue] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Damage:0,display:{color:2500784}}

clear @a combatdepot:general_terminal

execute as @r run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun

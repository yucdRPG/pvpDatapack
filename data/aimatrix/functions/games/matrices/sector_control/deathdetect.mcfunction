
item replace entity @a[team=Red] armor.head with air
item replace entity @a[team=Red] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:11546150}}
item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Damage:0,display:{color:11546150}}

item replace entity @a[team=Blue] armor.head with air
item replace entity @a[team=Blue] armor.chest with minecraft:leather_chestplate{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.legs with minecraft:leather_leggings{Damage:0,display:{color:2500784}}
item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Damage:0,display:{color:2500784}}

# execute as @a if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 1 run item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Damage:0,display:{color:11546150},Enchantments:[{lvl:3,id:depth_strider},{lvl:5,id:swift_sneak}],HideFlags:1}
# execute as @a if score map_number_recorder mode matches 2 if score map_number_recorder map_number matches 1 run item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Damage:0,display:{color:2500784},Enchantments:[{lvl:3,id:depth_strider},{lvl:5,id:swift_sneak}],HideFlags:1}
# execute as @a if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run item replace entity @a[team=Red] armor.feet with minecraft:leather_boots{Damage:0,display:{color:11546150},Enchantments:[{lvl:3,id:depth_strider},{lvl:5,id:swift_sneak}],HideFlags:1}
# execute as @a if score map_number_recorder mode matches 3 if score map_number_recorder map_number matches 1 run item replace entity @a[team=Blue] armor.feet with minecraft:leather_boots{Damage:0,display:{color:2500784},Enchantments:[{lvl:3,id:depth_strider},{lvl:5,id:swift_sneak}],HideFlags:1}



#leather_boots{Enchantments:[{lvl:3,id:depth_strider},{lvl:5,id:swift_sneak}],HideFlags:1}

execute as @a[scores={death=1}] run scoreboard players set @s nogun_have 0
execute as @a[scores={death=1}] run schedule function aimatrix:guns_loadout/nogun_detect 40t append
execute as @a[scores={death=1}] run schedule function aimatrix:games/matrices/sector_control/deathdetect1 1s append

schedule function aimatrix:games/matrices/sector_control/deathdetect 1t replace




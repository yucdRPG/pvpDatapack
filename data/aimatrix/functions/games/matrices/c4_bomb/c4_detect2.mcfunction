execute as @a[team=Red] if score @s bomb matches 1.. run tag @s add bombtaker
execute as @a[team=Red] if score @s bomb matches 1.. run title @a[team=Red] title ""
execute as @a[team=Red] if score @s bomb matches 1.. run title @a[team=Red] subtitle "炸药已被我方队伍拾取"
execute as @a[team=Red] if score @s bomb matches 1.. run clear @s tnt
execute as @a[team=Red] if score @s bomb matches 1.. run item replace entity @s[team=Red] hotbar.3 with tnt{display:{Name:'["",{"text":"C4","italic":false,"color":"red"},{"text":" ","italic":false},{"text":"炸药包","italic":false,"color":"yellow"}]',Lore:['["",{"text":"拿上C4,杀到炸药安放点，蹲下低头以安放炸药，炸药需要40秒引爆，敌方需要5秒拆除该炸药。","italic":false}]']},Enchantments:[{lvl:1,id:fortune}],HideFlags:1,CanPlaceOn:[]} 1
execute as @a[team=Red] if score @s bomb matches 1.. run scoreboard players set @s bomb 0

execute as @a[team=Red,tag=bombtaker] if score @s bombdrop matches 1.. run title @a[team=Red] title ""
execute as @a[team=Red,tag=bombtaker] if score @s bombdrop matches 1.. run title @a[team=Red] subtitle "炸药已掉落"
execute as @a[team=Red,tag=bombtaker] if score @s bombdrop matches 1.. run tag @s remove bombtaker
execute as @a[team=Red] if score @s bombdrop matches 1.. run scoreboard players set @s bombdrop 0

execute as @a[team=Red,tag=bombtaker] if score @s death matches 1.. run title @a[team=Red] title ""
execute as @a[team=Red,tag=bombtaker] if score @s death matches 1.. run title @a[team=Red] subtitle "炸药已掉落"
execute as @a[team=Red,tag=bombtaker] if score @s death matches 1.. run tag @s remove bombtaker
execute as @a[team=Red] if score @s death matches 1.. run scoreboard players set @s death 0

execute as @a[tag=bombtaker] run scoreboard players set @s Bombtaker 1
execute as @a[tag=!bombtaker] run scoreboard players reset @s Bombtaker

schedule function aimatrix:games/matrices/c4_bomb/c4_detect2 1t append
 
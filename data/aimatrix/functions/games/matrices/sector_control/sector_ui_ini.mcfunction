kill @e[type=slime]
kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}}]
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run summon slime -236 -56.5 -167 {Glowing:true,Invulnerable:true,NoAI:true,NoGravity:true,Silent:true,Size:1,Team:lobby} 
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run summon slime -231 -56.5 -141 {Glowing:true,Invulnerable:true,NoAI:true,NoGravity:true,Silent:true,Size:1,Team:lobby} 
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run summon slime -242 -56.5 -195 {Glowing:true,Invulnerable:true,NoAI:true,NoGravity:true,Silent:true,Size:1,Team:lobby} 


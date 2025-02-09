# > aimatrix:map_choose/block_replace_loop
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run kill @e[type=armor_stand]
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run setblock 0 2 -26 minecraft:structure_block[mode=load]{author:"Seaside_H1",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:competitive_twin_tower",posX:-4,posY:-2,posZ:-11,powered:1b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:9,sizeY:7,sizeZ:9} destroy
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run setblock 0 1 -26 redstone_block destroy

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run kill @e[type=armor_stand]
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run setblock 0 2 -26 minecraft:structure_block[mode=load]{author:"Seaside_H1",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:conquest_signal_transmission_station",posX:-4,posY:-2,posZ:-11,powered:1b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:9,sizeY:7,sizeZ:9} destroy
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run setblock 0 1 -26 redstone_block destroy

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run kill @e[type=armor_stand]
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run setblock 0 2 -26 minecraft:structure_block[mode=load]{author:"Seaside_H1",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"minecraft:teamdeathmatch_radar_station",posX:-4,posY:-2,posZ:-11,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:9,sizeY:7,sizeZ:9} destroy
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run setblock 0 1 -26 redstone_block destroy

execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 1 run setblock -4 2 -26 tnt replace
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 2 run setblock -4 2 -26 chest replace
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run setblock -4 2 -26 target replace
execute as @r if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 4 run setblock -4 2 -26 glass replace

schedule function aimatrix:map_choose/block_replace_loop 10t append
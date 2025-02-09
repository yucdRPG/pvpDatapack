tellraw @a "     \u00a7lYou're Playing on AiMatrix_Ver0.5.2"

team leave @a
team join lobby @a
tag @a remove bombtaker
tag @a remove red1
tag @a remove red2
tag @a remove red3
tag @a remove red4
tag @a remove red5
tag @a remove red6
tag @a remove red7
tag @a remove red8
tag @a remove red9
tag @a remove red10
tag @a remove red11
tag @a remove red12
tag @a remove red13
tag @a remove red14
tag @a remove red15
tag @a remove blue1
tag @a remove blue2
tag @a remove blue3
tag @a remove blue4
tag @a remove blue5
tag @a remove blue6
tag @a remove blue7
tag @a remove blue8
tag @a remove blue9
tag @a remove blue10
tag @a remove blue11
tag @a remove blue12
tag @a remove blue13
tag @a remove blue14
tag @a remove blue15
tag @a remove dead
tag @a remove mvp
time set day
weather clear


tp @a 0 1 0 180 0
spawnpoint @a 0 1 0 180
setworldspawn 0 1 0 180
scoreboard players set clock round 1
clear @a
effect clear @a speed
gamemode adventure @a 
schedule clear aimatrix:games/matrices/round_reset/round_over
schedule clear aimatrix:games/matrices/round_reset/round_over0
schedule clear aimatrix:games/matrices/c4_bomb/c4_defuse
schedule clear aimatrix:games/matrices/c4_bomb/c4_detect2
schedule clear aimatrix:games/matrices/c4_bomb/c4_plant
scoreboard players set @a bomb_planted 0
scoreboard players set clock bomb_planted 0

scoreboard players set clock Asector_status 0
scoreboard players set clock Asector 0
scoreboard players set clock Bsector_status 0
scoreboard players set clock Bsector 0
scoreboard players set clock Csector_status 0
scoreboard players set clock Csector 0

xp set @a 0 levels
xp set @a 0 points

execute as @a run attribute @s minecraft:generic.max_health base set 20
effect give @a instant_health 1 8 true

scoreboard players set clock countdown 99999999
scoreboard players set @a bomb 0
tag @a remove bombdrop
tag @a remove bombtaker

kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
kill @e[type=slime]

bossbar add cooldown "match_cd"
bossbar set cooldown color yellow
bossbar set cooldown max 60
bossbar set cooldown style progress
bossbar set cooldown name "对局可开启倒计时"
bossbar set cooldown players @a
bossbar set cooldown visible true
bossbar set cooldown value 60

#选枪末影箱关闭
execute as @r run setblock 0 2 -20 air
setblock 22 1 -19 minecraft:ender_chest[facing=west,waterlogged=false]{}

summon dummmmmmy:target_dummy 22 2 -19 {Silent:true,Invulnerable:true,active_effects:[{id:invisibility,show_particles:false,duration:20},{id:"resistance",show_particles:false,duration:100000,amplifier:6}],NoAI:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"~在这里选择枪械~\",\"color\": \"yellow\"}",attributes:[{id:scale,base:0.25},{id:"minecraft:max_health",base:999}],}
summon dummmmmmy:target_dummy 42 1 11 {AbsorptionAmount:0.0f,Air:300s,ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{},{}],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForgeCaps:{"curios:inventory":{Curios:[]},"tacz:synced_entity_data":[]},HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:200.0f,HealthRechargeTimer:0,HurtByTimestamp:0,HurtTime:0s,Invulnerable:0b,LeftHanded:0b,Motion:[0.0d,0.0d,0.0d],NoGravity:1b,OnGround:0b,PersistenceRequired:0b,PortalCooldown:0,Pos:[42.5d,1.0d,12.5d],Rotation:[90.0f,0.0f],Sheared:0b,UUID:[I;234810867,-632469016,-1234994134,-81360782],id:"dummmmmmy:target_dummy"}
summon dummmmmmy:target_dummy 52 1 12 {AbsorptionAmount:0.0f,Air:300s,ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{},{}],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForgeCaps:{"curios:inventory":{Curios:[]},"tacz:synced_entity_data":[]},HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:200.0f,HealthRechargeTimer:0,HurtByTimestamp:0,HurtTime:0s,Invulnerable:0b,LeftHanded:0b,Motion:[0.0d,0.0d,0.0d],NoGravity:1b,OnGround:0b,PersistenceRequired:0b,PortalCooldown:0,Pos:[42.5d,1.0d,12.5d],Rotation:[90.0f,0.0f],Sheared:0b,UUID:[I;234810867,-632469016,-1234994134,-81360782],id:"dummmmmmy:target_dummy"}
summon dummmmmmy:target_dummy 62 1 13 {AbsorptionAmount:0.0f,Air:300s,ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{},{}],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForgeCaps:{"curios:inventory":{Curios:[]},"tacz:synced_entity_data":[]},HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:200.0f,HealthRechargeTimer:0,HurtByTimestamp:0,HurtTime:0s,Invulnerable:0b,LeftHanded:0b,Motion:[0.0d,0.0d,0.0d],NoGravity:1b,OnGround:0b,PersistenceRequired:0b,PortalCooldown:0,Pos:[42.5d,1.0d,12.5d],Rotation:[90.0f,0.0f],Sheared:0b,UUID:[I;234810867,-632469016,-1234994134,-81360782],id:"dummmmmmy:target_dummy"}
summon dummmmmmy:target_dummy 72 1 14 {AbsorptionAmount:0.0f,Air:300s,ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{},{}],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForgeCaps:{"curios:inventory":{Curios:[]},"tacz:synced_entity_data":[]},HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:200.0f,HealthRechargeTimer:0,HurtByTimestamp:0,HurtTime:0s,Invulnerable:0b,LeftHanded:0b,Motion:[0.0d,0.0d,0.0d],NoGravity:1b,OnGround:0b,PersistenceRequired:0b,PortalCooldown:0,Pos:[42.5d,1.0d,12.5d],Rotation:[90.0f,0.0f],Sheared:0b,UUID:[I;234810867,-632469016,-1234994134,-81360782],id:"dummmmmmy:target_dummy"}
summon dummmmmmy:target_dummy 82 1 15 {AbsorptionAmount:0.0f,Air:300s,ArmorDropChances:[1.1f,1.1f,1.1f,1.1f],ArmorItems:[{},{},{},{}],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"},{Base:0.0d,Name:"forge:step_height_addition"},{Base:0.08d,Name:"forge:entity_gravity"}],Brain:{memories:{}},CanPickUpLoot:0b,CanUpdate:1b,DeathTime:0s,FallDistance:0.0f,FallFlying:0b,Fire:-1s,ForgeCaps:{"curios:inventory":{Curios:[]},"tacz:synced_entity_data":[]},HandDropChances:[0.085f,0.085f],HandItems:[{},{}],Health:200.0f,HealthRechargeTimer:0,HurtByTimestamp:0,HurtTime:0s,Invulnerable:0b,LeftHanded:0b,Motion:[0.0d,0.0d,0.0d],NoGravity:1b,OnGround:0b,PersistenceRequired:0b,PortalCooldown:0,Pos:[42.5d,1.0d,12.5d],Rotation:[90.0f,0.0f],Sheared:0b,UUID:[I;234810867,-632469016,-1234994134,-81360782],id:"dummmmmmy:target_dummy"}
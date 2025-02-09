execute as @a[team=Red,x=-245,y=-56,z=-198,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players add clock Asector 1
execute as @a[team=Blue,x=-245,y=-56,z=-198,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players remove clock Asector 1
execute as @r if score clock Asector matches 100.. run scoreboard players set clock Asector 100
execute as @r if score clock Asector matches 100 if score clock Asector_status matches 0 run title @a title ""
execute as @r if score clock Asector matches 100 if score clock Asector_status matches 0 run title @a subtitle "据点 \u00a7lA\u00a7r 已被\u00a7c红队\u00a7r占领"
execute as @a at @s if score clock Asector matches 100 if score clock Asector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s

execute as @r if score clock Asector matches 100.. run scoreboard players set clock Asector_status 1
execute as @r if score clock Asector matches ..-100 run scoreboard players set clock Asector -100
execute as @r if score clock Asector matches 0 if score clock Asector_status matches 1 run title @a title ""
execute as @r if score clock Asector matches 0 if score clock Asector_status matches 1 run title @a subtitle "据点 \u00a7lA \u00a7r已被中立化"
execute as @a at @s if score clock Asector matches 0 if score clock Asector_status matches 1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Asector matches 0 if score clock Asector_status matches -1 run title @a title ""
execute as @r if score clock Asector matches 0 if score clock Asector_status matches -1 run title @a subtitle "据点 \u00a7lA \u00a7r已被中立化"
execute as @a at @s if score clock Asector matches 0 if score clock Asector_status matches -1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Asector matches -100 if score clock Asector_status matches 0 run title @a title ""
execute as @r if score clock Asector matches -100 if score clock Asector_status matches 0 run title @a subtitle "据点 \u00a7lA\u00a7r 已被\u00a7b蓝队\u00a7r占领"
execute as @a at @s if score clock Asector matches -100 if score clock Asector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Asector matches 0 run scoreboard players set clock Asector_status 0
execute as @r if score clock Asector matches ..-100 run scoreboard players set clock Asector_status -1
execute as @r if score clock Asector matches -24..24 run fill -244 -56 -197 -240 -56 -193 white_wool replace
execute as @r if score clock Asector matches 25..49 run fill -244 -56 -197 -240 -56 -193 white_wool replace
execute as @r if score clock Asector matches 25..49 run fill -242 -56 -195 -242 -56 -195 red_wool replace
execute as @r if score clock Asector matches -49..-25 run fill -244 -56 -197 -240 -56 -193 white_wool replace
execute as @r if score clock Asector matches -49..-25 run fill -242 -56 -195 -242 -56 -195 blue_wool replace
execute as @r if score clock Asector matches 50..99 run fill -244 -56 -197 -240 -56 -193 white_wool replace
execute as @r if score clock Asector matches 50..99 run fill -243 -56 -196 -241 -56 -194 red_wool replace
execute as @r if score clock Asector matches -99..-50 run fill -244 -56 -197 -240 -56 -193 white_wool replace
execute as @r if score clock Asector matches -99..-50 run fill -243 -56 -196 -241 -56 -194 blue_wool replace
execute as @r if score clock Asector matches 100 run fill -244 -56 -197 -240 -56 -193 red_wool replace
execute as @r if score clock Asector matches -100 run fill -244 -56 -197 -240 -56 -193 blue_wool replace
execute positioned -242 -56.5 -195 if score clock Asector_status matches 1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Red
execute positioned -242 -56.5 -195 if score clock Asector_status matches 0 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value lobby
execute positioned -242 -56.5 -195 if score clock Asector_status matches -1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Blue


execute as @a[team=Red,x=-238,y=-56,z=-170,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players add clock Bsector 1
execute as @a[team=Blue,x=-238,y=-56,z=-170,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players remove clock Bsector 1
execute as @r if score clock Bsector matches 100.. run scoreboard players set clock Bsector 100
execute as @r if score clock Bsector matches 100 if score clock Bsector_status matches 0 run title @a title ""
execute as @r if score clock Bsector matches 100 if score clock Bsector_status matches 0 run title @a subtitle "据点 \u00a7lB\u00a7r 已被\u00a7c红队\u00a7r占领"
execute as @a at @s if score clock Bsector matches 100 if score clock Bsector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Bsector matches 100.. run scoreboard players set clock Bsector_status 1
execute as @r if score clock Bsector matches ..-100 run scoreboard players set clock Bsector -100
execute as @r if score clock Bsector matches 0 if score clock Bsector_status matches 1 run title @a title ""
execute as @r if score clock Bsector matches 0 if score clock Bsector_status matches 1 run title @a subtitle "据点 \u00a7lB \u00a7r已被中立化"
execute as @a at @s if score clock Bsector matches 0 if score clock Bsector_status matches 1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Bsector matches 0 if score clock Bsector_status matches -1 run title @a title ""
execute as @r if score clock Bsector matches 0 if score clock Bsector_status matches -1 run title @a subtitle "据点 \u00a7lB \u00a7r已被中立化"
execute as @a at @s if score clock Bsector matches 0 if score clock Bsector_status matches -1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Bsector matches -100 if score clock Bsector_status matches 0 run title @a title ""
execute as @r if score clock Bsector matches -100 if score clock Bsector_status matches 0 run title @a subtitle "据点 \u00a7lB\u00a7r 已被\u00a7b蓝队\u00a7r占领"
execute as @a at @s if score clock Bsector matches -100 if score clock Bsector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Bsector matches 0 run scoreboard players set clock Bsector_status 0
execute as @r if score clock Bsector matches ..-100 run scoreboard players set clock Bsector_status -1
execute as @r if score clock Bsector matches -24..24 run fill -236 -56 -169 -236 -56 -165 white_wool replace
execute as @r if score clock Bsector matches -24..24 run fill -238 -56 -167 -234 -56 -167 white_wool replace
execute as @r if score clock Bsector matches 25..49 run fill -236 -56 -169 -236 -56 -165 white_wool replace
execute as @r if score clock Bsector matches 25..49 run fill -238 -56 -167 -234 -56 -167 white_wool replace
execute as @r if score clock Bsector matches 25..49 run fill -236 -56 -167 -236 -56 -167 red_wool replace
execute as @r if score clock Bsector matches -49..-25 run fill -236 -56 -169 -236 -56 -165 white_wool replace
execute as @r if score clock Bsector matches -49..-25 run fill -238 -56 -167 -234 -56 -167 white_wool replace
execute as @r if score clock Bsector matches -49..-25 run fill -236 -56 -167 -236 -56 -167 blue_wool replace
execute as @r if score clock Bsector matches 50..99 run fill -236 -56 -169 -236 -56 -165 white_wool replace
execute as @r if score clock Bsector matches 50..99 run fill -238 -56 -167 -234 -56 -167 white_wool replace
execute as @r if score clock Bsector matches 50..99 run fill -236 -56 -168 -236 -56 -166 red_wool replace
execute as @r if score clock Bsector matches 50..99 run fill -237 -56 -167 -235 -56 -167 red_wool replace
execute as @r if score clock Bsector matches -99..-50 run fill -236 -56 -169 -236 -56 -165 white_wool replace
execute as @r if score clock Bsector matches -99..-50 run fill -238 -56 -167 -234 -56 -167 white_wool replace
execute as @r if score clock Bsector matches -99..-50 run fill -236 -56 -168 -236 -56 -166 blue_wool replace
execute as @r if score clock Bsector matches -99..-50 run fill -237 -56 -167 -235 -56 -167 blue_wool replace
execute as @r if score clock Bsector matches 100 run fill -236 -56 -169 -236 -56 -165 red_wool replace
execute as @r if score clock Bsector matches 100 run fill -238 -56 -167 -234 -56 -167 red_wool replace
execute as @r if score clock Bsector matches -100 run fill -236 -56 -169 -236 -56 -165 blue_wool replace
execute as @r if score clock Bsector matches -100 run fill -238 -56 -167 -234 -56 -167 blue_wool replace
execute positioned -236 -56.5 -167 if score clock Bsector_status matches 1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Red
execute positioned -236 -56.5 -167 if score clock Bsector_status matches 0 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value lobby
execute positioned -236 -56.5 -167 if score clock Bsector_status matches -1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Blue


execute as @a[team=Red,x=-233,y=-56,z=-144,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players add clock Csector 1
execute as @a[team=Blue,x=-233,y=-56,z=-144,dx=6,dy=3,dz=6,gamemode=adventure] run scoreboard players remove clock Csector 1
execute as @r if score clock Csector matches 100.. run scoreboard players set clock Csector 100
execute as @r if score clock Csector matches 100 if score clock Csector_status matches 0 run title @a title ""
execute as @r if score clock Csector matches 100 if score clock Csector_status matches 0 run title @a subtitle "据点 \u00a7lC\u00a7r 已被\u00a7c红队\u00a7r占领"
execute as @a at @s if score clock Csector matches 100 if score clock Csector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Csector matches 100.. run scoreboard players set clock Csector_status 1
execute as @r if score clock Csector matches ..-100 run scoreboard players set clock Csector -100
execute as @r if score clock Csector matches 0 if score clock Csector_status matches 1 run title @a title ""
execute as @r if score clock Csector matches 0 if score clock Csector_status matches 1 run title @a subtitle "据点 \u00a7lC \u00a7r已被中立化"
execute as @a at @s if score clock Csector matches 0 if score clock Csector_status matches 1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Csector matches 0 if score clock Csector_status matches -1 run title @a title ""
execute as @r if score clock Csector matches 0 if score clock Csector_status matches -1 run title @a subtitle "据点 \u00a7lC \u00a7r已被中立化"
execute as @a at @s if score clock Csector matches 0 if score clock Csector_status matches -1 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Csector matches -100 if score clock Csector_status matches 0 run title @a title ""
execute as @r if score clock Csector matches -100 if score clock Csector_status matches 0 run title @a subtitle "据点 \u00a7lC\u00a7r 已被\u00a7b蓝队\u00a7r占领"
execute as @a at @s if score clock Csector matches -100 if score clock Csector_status matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute as @r if score clock Csector matches 0 run scoreboard players set clock Csector_status 0
execute as @r if score clock Csector matches ..-100 run scoreboard players set clock Csector_status -1
execute as @r if score clock Csector matches -10..10 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 11..20 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 11..20 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 21..30 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 21..30 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 21..30 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 31..40 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 31..40 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 31..40 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 31..40 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 41..50 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 41..50 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 41..50 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 41..50 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 41..50 run setblock -230 -56 -141 red_wool replace
execute as @r if score clock Csector matches 51..60 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 51..60 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 51..60 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 51..60 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 51..60 run setblock -230 -56 -141 red_wool replace
execute as @r if score clock Csector matches 51..60 run setblock -230 -56 -140 red_wool replace
execute as @r if score clock Csector matches 61..70 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -230 -56 -141 red_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -230 -56 -140 red_wool replace
execute as @r if score clock Csector matches 61..70 run setblock -231 -56 -140 red_wool replace
execute as @r if score clock Csector matches 71..80 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -230 -56 -141 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -230 -56 -140 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -231 -56 -140 red_wool replace
execute as @r if score clock Csector matches 71..80 run setblock -232 -56 -140 red_wool replace
execute as @r if score clock Csector matches 81..90 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -232 -56 -142 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -231 -56 -142 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -230 -56 -142 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -230 -56 -141 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -230 -56 -140 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -231 -56 -140 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -232 -56 -140 red_wool replace
execute as @r if score clock Csector matches 81..90 run setblock -232 -56 -141 red_wool replace
execute as @r if score clock Csector matches 100 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches 100 run fill -232 -56 -142 -230 -56 -140 red_wool replace

execute as @r if score clock Csector matches -20..-11 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -20..-11 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -30..-21 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -30..-21 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -30..-21 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -40..-31 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -40..-31 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -40..-31 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -40..-31 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -50..-41 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -50..-41 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -50..-41 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -50..-41 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -50..-41 run setblock -230 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -60..-51 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -60..-51 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -60..-51 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -60..-51 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -60..-51 run setblock -230 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -60..-51 run setblock -230 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -230 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -230 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -70..-61 run setblock -231 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -230 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -230 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -231 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -80..-71 run setblock -232 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -232 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -231 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -230 -56 -142 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -230 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -230 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -231 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -232 -56 -140 blue_wool replace
execute as @r if score clock Csector matches -90..-81 run setblock -232 -56 -141 blue_wool replace
execute as @r if score clock Csector matches -100 run fill -232 -56 -142 -230 -56 -140 white_wool replace
execute as @r if score clock Csector matches -100 run fill -232 -56 -142 -230 -56 -140 blue_wool replace
execute positioned -231 -56.5 -141 if score clock Csector_status matches 1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Red
execute positioned -231 -56.5 -141 if score clock Csector_status matches 0 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value lobby
execute positioned -231 -56.5 -141 if score clock Csector_status matches -1 run data modify entity @e[type=slime,distance=..1,limit=1] Team set value Blue

schedule function aimatrix:games/matrices/sector_control/sector_control_loop 1t append
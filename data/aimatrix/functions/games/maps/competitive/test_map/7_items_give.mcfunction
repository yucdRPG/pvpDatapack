execute as @a run attribute @s minecraft:generic.max_health base set 20
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

execute as @r if score clock round matches 2..7 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r if score clock round matches 9..15 run function aimatrix:guns_loadout/guns_give/first_gun
execute as @r run function aimatrix:guns_loadout/guns_give/second_gun
# execute as @a if score @s rifle matches 1 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentGRIP:{Count:0b,id:"minecraft:air"},AttachmentMUZZLE:{Count:0b,id:"minecraft:air"},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_volk",HasBulletInBarrel:1b,DummyAmmo:90} 1
# execute as @a if score @s rifle matches 2 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:muzzle_emx_csilencer"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_aw"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_icr",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 3 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxarms:grip_emx_assert"}},AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:muzzle_emx_csilencer"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_basb",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 4 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"trisdyna:sight_aurora"}},GunCurrentAmmoCount:30,GunFireMode:"BURST",GunId:"emxarms:emx_mk951r_ba",HasBulletInBarrel:1b,DummyAmmo:90} 1
# execute as @a if score @s rifle matches 5 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxarms:sight_emx_aw_ba"}},GunCurrentAmmoCount:35,GunFireMode:"AUTO",GunId:"emxarms:emx_mk951l_ba",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 6 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_icarus"}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"emxmors:emx_locus",HasBulletInBarrel:1b,DummyAmmo:15} 1
# execute as @a if score @s rifle matches 7 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_elcan_4x"}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m700",HasBulletInBarrel:1b,DummyAmmo:30} 1
# execute as @a if score @s rifle matches 8 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_elcan_4x"}},GunCurrentAmmoCount:10,GunFireMode:"AUTO",GunId:"classicr:scar_mk20",HasBulletInBarrel:1b,DummyAmmo:60} 1
# execute as @a if score @s rifle matches 9 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:13,GunFireMode:"AUTO",GunId:"emxmors:emx_h12",HasBulletInBarrel:1b,DummyAmmo:32} 1
# execute as @a if score @s rifle matches 10 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m870",HasBulletInBarrel:1b,DummyAmmo:24} 1
# execute as @a if score @s rifle matches 11 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:32,GunFireMode:"AUTO",GunId:"emxarms:emx_expel32se_ba",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 12 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_elo"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"emxarms:emx_umx32_koei",HasBulletInBarrel:1b,DummyAmmo:160} 1
# execute as @a if score @s rifle matches 13 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"classicr:m1a1_smg",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 14 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"classicr:mp7",HasBulletInBarrel:1b,DummyAmmo:160} 1
# execute as @a if score @s rifle matches 15 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:oem_stock_light"}},GunCurrentAmmoCount:64,GunFireMode:"AUTO",GunId:"suffuse:pp19",HasBulletInBarrel:1b,DummyAmmo:180} 1
# execute as @a if score @s rifle matches 16 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:35,GunFireMode:"AUTO",GunId:"emxmors:emx_xenophage",HasBulletInBarrel:1b,DummyAmmo:105} 1
# execute as @a if score @s rifle matches 17 if score clock round matches 2..7 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:60,GunFireMode:"AUTO",GunId:"ccrp:type_95_longbow",HasBulletInBarrel:1b,DummyAmmo:180} 1

# execute as @a if score @s rifle matches 1 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentGRIP:{Count:0b,id:"minecraft:air"},AttachmentMUZZLE:{Count:0b,id:"minecraft:air"},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_volk",HasBulletInBarrel:1b,DummyAmmo:90} 1
# execute as @a if score @s rifle matches 2 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:muzzle_emx_csilencer"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_aw"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_icr",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 3 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxarms:grip_emx_assert"}},AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:muzzle_emx_csilencer"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"emxmors:emx_basb",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 4 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"trisdyna:sight_aurora"}},GunCurrentAmmoCount:30,GunFireMode:"BURST",GunId:"emxarms:emx_mk951r_ba",HasBulletInBarrel:1b,DummyAmmo:90} 1
# execute as @a if score @s rifle matches 5 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxarms:sight_emx_aw_ba"}},GunCurrentAmmoCount:35,GunFireMode:"AUTO",GunId:"emxarms:emx_mk951l_ba",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 6 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_icarus"}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"emxmors:emx_locus",HasBulletInBarrel:1b,DummyAmmo:15} 1
# execute as @a if score @s rifle matches 7 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_elcan_4x"}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m700",HasBulletInBarrel:1b,DummyAmmo:30} 1
# execute as @a if score @s rifle matches 8 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_elcan_4x"}},GunCurrentAmmoCount:10,GunFireMode:"AUTO",GunId:"classicr:scar_mk20",HasBulletInBarrel:1b,DummyAmmo:60} 1
# execute as @a if score @s rifle matches 9 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:13,GunFireMode:"AUTO",GunId:"emxmors:emx_h12",HasBulletInBarrel:1b,DummyAmmo:32} 1
# execute as @a if score @s rifle matches 10 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m870",HasBulletInBarrel:1b,DummyAmmo:24} 1
# execute as @a if score @s rifle matches 11 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:32,GunFireMode:"AUTO",GunId:"emxarms:emx_expel32se_ba",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 12 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_elo"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"emxarms:emx_umx32_koei",HasBulletInBarrel:1b,DummyAmmo:160} 1
# execute as @a if score @s rifle matches 13 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"classicr:m1a1_smg",HasBulletInBarrel:1b,DummyAmmo:120} 1
# execute as @a if score @s rifle matches 14 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"classicr:mp7",HasBulletInBarrel:1b,DummyAmmo:160} 1
# execute as @a if score @s rifle matches 15 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:oem_stock_light"}},GunCurrentAmmoCount:64,GunFireMode:"AUTO",GunId:"suffuse:pp19",HasBulletInBarrel:1b,DummyAmmo:180} 1
# execute as @a if score @s rifle matches 16 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxmors:sight_emx_jak"}},GunCurrentAmmoCount:35,GunFireMode:"AUTO",GunId:"emxmors:emx_xenophage",HasBulletInBarrel:1b,DummyAmmo:105} 1
# execute as @a if score @s rifle matches 17 if score clock round matches 9..15 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:60,GunFireMode:"AUTO",GunId:"ccrp:type_95_longbow",HasBulletInBarrel:1b,DummyAmmo:180} 1

# execute as @a if score @s pistol matches 1 run give @s tacz:modern_kinetic_gun{GunCurrentAmmoCount:7,GunFireMode:"SEMI",GunId:"emxmors:emx_hawkmoon",HasBulletInBarrel:1b,DummyAmmo:30} 1
# execute as @a if score @s pistol matches 2 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"emxarms:sight_emx_integer"}},GunCurrentAmmoCount:2,GunFireMode:"SEMI",GunId:"emxarms:emx_scgraves",HasBulletInBarrel:1b,DummyAmmo:12} 1
# execute as @a if score @s pistol matches 3 run give @s tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_rmr_dot"}},GunCurrentAmmoCount:32,GunFireMode:"AUTO",GunId:"iw:geneva9",HasBulletInBarrel:1b,DummyAmmo:90} 1
# execute as @a if score @s pistol matches 4 run give @s tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_ptilopsis"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_rmr_dot"}},GunCurrentAmmoCount:19,GunFireMode:"SEMI",GunId:"rebel:lpm2020",HasBulletInBarrel:1b,DummyAmmo:60} 1


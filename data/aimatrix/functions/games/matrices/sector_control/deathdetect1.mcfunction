execute as @a[scores={death=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={death=1}] run effect give @s instant_health 1 8 true

execute as @a[scores={death=1}] run function aimatrix:guns_loadout/loadout_item_self

effect give @a[scores={death=1}] resistance 5 4 false

execute as @a[scores={death=1}] if score @s rifle matches 1 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:oem_stock_tactical"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"tacz:ak47",HasBulletInBarrel:1b,DummyAmmo:90}
execute as @a[scores={death=1}] if score @s rifle matches 2 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_magpul_afg_2"}},AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:stock_carbon_bone_c5"}},GunCurrentAmmoCount:20,GunFireMode:"AUTO",GunId:"tacz:m4a1",HasBulletInBarrel:1b,DummyAmmo:80}
execute as @a[scores={death=1}] if score @s rifle matches 3 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_vertical_talon"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:20,GunFireMode:"AUTO",GunId:"tacz:scar_l",HasBulletInBarrel:1b,DummyAmmo:60}
execute as @a[scores={death=1}] if score @s rifle matches 4 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"nmw3:bal27",HasBulletInBarrel:1b,DummyAmmo:120}
execute as @a[scores={death=1}] if score @s rifle matches 5 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_magpul_afg_2"}},AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:stock_carbon_bone_c5"}},GunCurrentAmmoCount:30,GunFireMode:"AUTO",GunId:"tacz:hk_mp5a5",HasBulletInBarrel:1b,DummyAmmo:100}
execute as @a[scores={death=1}] if score @s rifle matches 6 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentGRIP:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:grip_vertical_talon"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:25,GunFireMode:"AUTO",GunId:"tacz:ump45",HasBulletInBarrel:1b,DummyAmmo:120}
execute as @a[scores={death=1}] if score @s rifle matches 7 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"bluecraft:muzzle_silence_ecs_q001"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"bluecraft:stock_carbon_jak_q001"}},GunCurrentAmmoCount:25,GunFireMode:"AUTO",GunId:"bluecraft:superi_46_pulse_star",HasBulletInBarrel:1b,DummyAmmo:150}
execute as @a[scores={death=1}] if score @s rifle matches 8 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:0b,id:"minecraft:air"},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},GunCurrentAmmoCount:50,GunFireMode:"AUTO",GunId:"tacz:p90",HasBulletInBarrel:1b,DummyAmmo:150}
execute as @a[scores={death=1}] if score @s rifle matches 9 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m870",HasBulletInBarrel:1b,DummyAmmo:24}
execute as @a[scores={death=1}] if score @s rifle matches 10 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:10,GunFireMode:"SEMI",GunId:"tacz:aa12",HasBulletInBarrel:1b,DummyAmmo:30}
execute as @a[scores={death=1}] if score @s rifle matches 11 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentMUZZLE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:muzzle_silencer_phantom_s1"}},AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_acog_ta31"}},GunCurrentAmmoCount:80,GunFireMode:"AUTO",GunId:"tacz:m249",HasBulletInBarrel:1b,DummyAmmo:160}
execute as @a[scores={death=1}] if score @s rifle matches 12 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:sight_coyote"}},AttachmentSTOCK:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:oem_stock_tactical"}},GunCurrentAmmoCount:40,GunFireMode:"AUTO",GunId:"tacz:rpk",HasBulletInBarrel:1b,DummyAmmo:120}
execute as @a[scores={death=1}] if score @s rifle matches 13 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_lpvo_1_6"}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:ai_awp",HasBulletInBarrel:1b,DummyAmmo:15}
execute as @a[scores={death=1}] if score @s rifle matches 14 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_lpvo_1_6",ZoomNumber:2}},GunCurrentAmmoCount:5,GunFireMode:"SEMI",GunId:"tacz:m700",HasBulletInBarrel:1b,DummyAmmo:30}
execute as @a[scores={death=1}] if score @s rifle matches 15 run item replace entity @s hotbar.0 with tacz:modern_kinetic_gun{AttachmentSCOPE:{Count:1b,id:"tacz:attachment",tag:{AttachmentId:"tacz:scope_lpvo_1_6"}},GunCurrentAmmoCount:10,GunFireMode:"AUTO",GunId:"tacz:mk14",HasBulletInBarrel:1b,DummyAmmo:40}

execute as @a[scores={death=1}] if score @s pistol matches 1 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:7,GunFireMode:"SEMI",GunId:"tacz:deagle",HasBulletInBarrel:1b,DummyAmmo:28}
execute as @a[scores={death=1}] if score @s pistol matches 2 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:20,GunFireMode:"AUTO",GunId:"tacz:cz75",HasBulletInBarrel:1b,DummyAmmo:80}
execute as @a[scores={death=1}] if score @s pistol matches 3 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:17,GunFireMode:"BURST",GunId:"tacz:glock_17",HasBulletInBarrel:1b,DummyAmmo:68}
execute as @a[scores={death=1}] if score @s pistol matches 4 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:12,GunFireMode:"SEMI",GunId:"tacz:p320",HasBulletInBarrel:1b,DummyAmmo:60}
execute as @a[scores={death=1}] if score @s pistol matches 5 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:2,GunFireMode:"SEMI",GunId:"tacz:db_short",HasBulletInBarrel:1b,DummyAmmo:12}

execute as @a[scores={death=1}] run item replace entity @s hotbar.2 with iron_sword{display:{Name:'["",{"text":"战术长剑","italic":false}]'},Enchantments:[{lvl:24,id:sharpness},{lvl:100,id:unbreaking}],HideFlags:1}

execute as @a[scores={death=1}] run schedule function aimatrix:guns_loadout/loadout_item_clear 100t append

execute as @a[scores={death=1}] run scoreboard players set @s killstreak 0
execute as @a[scores={death=1}] run scoreboard players set @s streak_reward_use1 0
execute as @a[scores={death=1}] run scoreboard players set @s streak_reward_use2 0
execute as @a[scores={death=1}] run scoreboard players set @s streak_reward_use3 0




execute as @a[scores={death=1}] run scoreboard players set @s death 0
execute as @a[team=Red] if score @s pistol matches 1 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:7,GunFireMode:"SEMI",GunId:"tacz:deagle",HasBulletInBarrel:1b,DummyAmmo:28}
execute as @a[team=Red] if score @s pistol matches 2 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:20,GunFireMode:"AUTO",GunId:"tacz:cz75",HasBulletInBarrel:1b,DummyAmmo:80}
execute as @a[team=Red] if score @s pistol matches 3 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:17,GunFireMode:"BURST",GunId:"tacz:glock_17",HasBulletInBarrel:1b,DummyAmmo:68}
execute as @a[team=Red] if score @s pistol matches 4 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:12,GunFireMode:"SEMI",GunId:"tacz:p320",HasBulletInBarrel:1b,DummyAmmo:60}
execute as @a[team=Red] if score @s pistol matches 5 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:2,GunFireMode:"SEMI",GunId:"tacz:db_short",HasBulletInBarrel:1b,DummyAmmo:12}

execute as @a[team=Blue] if score @s pistol matches 1 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:7,GunFireMode:"SEMI",GunId:"tacz:deagle",HasBulletInBarrel:1b,DummyAmmo:28}
execute as @a[team=Blue] if score @s pistol matches 2 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:20,GunFireMode:"AUTO",GunId:"tacz:cz75",HasBulletInBarrel:1b,DummyAmmo:80}
execute as @a[team=Blue] if score @s pistol matches 3 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:17,GunFireMode:"BURST",GunId:"tacz:glock_17",HasBulletInBarrel:1b,DummyAmmo:68}
execute as @a[team=Blue] if score @s pistol matches 4 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:12,GunFireMode:"SEMI",GunId:"tacz:p320",HasBulletInBarrel:1b,DummyAmmo:60}
execute as @a[team=Blue] if score @s pistol matches 5 run item replace entity @s hotbar.1 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:2,GunFireMode:"SEMI",GunId:"tacz:db_short",HasBulletInBarrel:1b,DummyAmmo:12}

execute as @a[team=Red] run item replace entity @s hotbar.2 with iron_sword{display:{Name:'["",{"text":"战术长剑","italic":false}]'},Enchantments:[{lvl:24,id:sharpness},{lvl:100,id:unbreaking}],HideFlags:1}
execute as @a[team=Blue] run item replace entity @s hotbar.2 with iron_sword{display:{Name:'["",{"text":"战术长剑","italic":false}]'},Enchantments:[{lvl:24,id:sharpness},{lvl:100,id:unbreaking}],HideFlags:1}

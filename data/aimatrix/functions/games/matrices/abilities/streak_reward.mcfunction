execute as @a if score @s killstreak matches 5.. if score @s streak_reward_use1 matches 0 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run item replace entity @s hotbar.3 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:1,GunFireMode:"SEMI",GunId:"jak:airstrike",HasBulletInBarrel:1b,DummyAmmo:0}
execute as @a if score @s killstreak matches 5.. if score @s streak_reward_use1 matches 0 if score map_number_recorder mode matches 3 run item replace entity @s hotbar.3 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:1,GunFireMode:"SEMI",GunId:"jak:airstrike",HasBulletInBarrel:1b,DummyAmmo:0}
execute as @a if score @s killstreak matches 5.. if score map_number_recorder mode matches 3 run scoreboard players set @s streak_reward_use1 1
execute as @a if score @s killstreak matches 5.. if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run scoreboard players set @s streak_reward_use1 1

execute as @a if score @s killstreak matches 8.. if score @s streak_reward_use2 matches 0 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run item replace entity @s hotbar.4 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:75,GunFireMode:"AUTO",GunId:"rebel:fmc",HasBulletInBarrel:1b}
execute as @a if score @s killstreak matches 8.. if score @s streak_reward_use2 matches 0 if score map_number_recorder mode matches 3 run item replace entity @s hotbar.4 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:75,GunFireMode:"AUTO",GunId:"rebel:fmc",HasBulletInBarrel:1b}
execute as @a if score @s killstreak matches 8.. if score map_number_recorder mode matches 3 run scoreboard players set @s streak_reward_use2 1
execute as @a if score @s killstreak matches 8.. if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run scoreboard players set @s streak_reward_use2 1

execute as @a if score @s killstreak matches 12.. if score @s streak_reward_use3 matches 0 if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run item replace entity @s hotbar.5 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:80,GunFireMode:"AUTO",GunId:"trisdyna:r117_weedy",HasBulletInBarrel:1b}
execute as @a if score @s killstreak matches 12.. if score @s streak_reward_use3 matches 0 if score map_number_recorder mode matches 3 run item replace entity @s hotbar.5 with tacz:modern_kinetic_gun{GunCurrentAmmoCount:80,GunFireMode:"AUTO",GunId:"trisdyna:r117_weedy",HasBulletInBarrel:1b}
execute as @a if score @s killstreak matches 12.. if score map_number_recorder mode matches 3 run scoreboard players set @s streak_reward_use3 1
execute as @a if score @s killstreak matches 12.. if score map_number_recorder mode matches 6 if score map_number_recorder map_number matches 3 run scoreboard players set @s streak_reward_use3 1

schedule function aimatrix:games/matrices/abilities/streak_reward 1t append

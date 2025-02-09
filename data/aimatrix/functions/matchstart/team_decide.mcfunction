team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
team join Red @r[team=lobby]
team join Blue @r[team=lobby]
tag @r[team=Red,tag=] add red1
tag @r[team=Red,tag=] add red2
tag @r[team=Red,tag=] add red3
tag @r[team=Red,tag=] add red4
tag @r[team=Red,tag=] add red5
tag @r[team=Red,tag=] add red6
tag @r[team=Red,tag=] add red7
tag @r[team=Red,tag=] add red8
tag @r[team=Red,tag=] add red9
tag @r[team=Red,tag=] add red10
tag @r[team=Red,tag=] add red11
tag @r[team=Red,tag=] add red12
tag @r[team=Red,tag=] add red13
tag @r[team=Red,tag=] add red14
tag @r[team=Red,tag=] add red15
tag @r[team=Blue,tag=] add blue1
tag @r[team=Blue,tag=] add blue2
tag @r[team=Blue,tag=] add blue3
tag @r[team=Blue,tag=] add blue4
tag @r[team=Blue,tag=] add blue5
tag @r[team=Blue,tag=] add blue6
tag @r[team=Blue,tag=] add blue7
tag @r[team=Blue,tag=] add blue8
tag @r[team=Blue,tag=] add blue9
tag @r[team=Blue,tag=] add blue10
tag @r[team=Blue,tag=] add blue11
tag @r[team=Blue,tag=] add blue12
tag @r[team=Blue,tag=] add blue13
tag @r[team=Blue,tag=] add blue14
tag @r[team=Blue,tag=] add blue15
title @a[team=Red] title ""
title @a[team=Blue] title ""
title @a[team=Red] subtitle "你作为\u00a7c红方\u00a7r进行战斗"
title @a[team=Blue] subtitle "你作为\u00a7b蓝方\u00a7r进行战斗"
clear @a tacz:modern_kinetic_gun
clear @a stick

schedule function aimatrix:matchstart/button_set 30s replace

scoreboard players set clock red_score 0
scoreboard players set clock blue_score 0
scoreboard players set clock Asector 0
scoreboard players set clock Bsector 0
scoreboard players set clock Csector 0
scoreboard players set @a abilitycharge 0
scoreboard players set @a killstreak 0
scoreboard players set @a streak_reward_use1 0
scoreboard players set @a streak_reward_use2 0
scoreboard players set @a streak_reward_use3 0



execute as @r if score clock match_cd matches 1200 run bossbar set cooldown value 60
execute as @r if score clock match_cd matches 1180 run bossbar set cooldown value 59
execute as @r if score clock match_cd matches 1160 run bossbar set cooldown value 58
execute as @r if score clock match_cd matches 1140 run bossbar set cooldown value 57
execute as @r if score clock match_cd matches 1120 run bossbar set cooldown value 56
execute as @r if score clock match_cd matches 1100 run bossbar set cooldown value 55
execute as @r if score clock match_cd matches 1080 run bossbar set cooldown value 54
execute as @r if score clock match_cd matches 1060 run bossbar set cooldown value 53
execute as @r if score clock match_cd matches 1040 run bossbar set cooldown value 52
execute as @r if score clock match_cd matches 1020 run bossbar set cooldown value 51
execute as @r if score clock match_cd matches 1000 run bossbar set cooldown value 50
execute as @r if score clock match_cd matches 980 run bossbar set cooldown value 49
execute as @r if score clock match_cd matches 960 run bossbar set cooldown value 48
execute as @r if score clock match_cd matches 940 run bossbar set cooldown value 47
execute as @r if score clock match_cd matches 920 run bossbar set cooldown value 46
execute as @r if score clock match_cd matches 900 run bossbar set cooldown value 45
execute as @r if score clock match_cd matches 880 run bossbar set cooldown value 44
execute as @r if score clock match_cd matches 860 run bossbar set cooldown value 43
execute as @r if score clock match_cd matches 840 run bossbar set cooldown value 42
execute as @r if score clock match_cd matches 820 run bossbar set cooldown value 41
execute as @r if score clock match_cd matches 800 run bossbar set cooldown value 40
execute as @r if score clock match_cd matches 780 run bossbar set cooldown value 39
execute as @r if score clock match_cd matches 760 run bossbar set cooldown value 38
execute as @r if score clock match_cd matches 740 run bossbar set cooldown value 37
execute as @r if score clock match_cd matches 720 run bossbar set cooldown value 36
execute as @r if score clock match_cd matches 700 run bossbar set cooldown value 35
execute as @r if score clock match_cd matches 680 run bossbar set cooldown value 34
execute as @r if score clock match_cd matches 660 run bossbar set cooldown value 33
execute as @r if score clock match_cd matches 640 run bossbar set cooldown value 32
execute as @r if score clock match_cd matches 620 run bossbar set cooldown value 31
execute as @r if score clock match_cd matches 600 run bossbar set cooldown value 30
execute as @r if score clock match_cd matches 580 run bossbar set cooldown value 29
execute as @r if score clock match_cd matches 560 run bossbar set cooldown value 28
execute as @r if score clock match_cd matches 540 run bossbar set cooldown value 27
execute as @r if score clock match_cd matches 520 run bossbar set cooldown value 26
execute as @r if score clock match_cd matches 500 run bossbar set cooldown value 25
execute as @r if score clock match_cd matches 480 run bossbar set cooldown value 24
execute as @r if score clock match_cd matches 460 run bossbar set cooldown value 23
execute as @r if score clock match_cd matches 440 run bossbar set cooldown value 22
execute as @r if score clock match_cd matches 420 run bossbar set cooldown value 21
execute as @r if score clock match_cd matches 400 run bossbar set cooldown value 20
execute as @r if score clock match_cd matches 380 run bossbar set cooldown value 19
execute as @r if score clock match_cd matches 360 run bossbar set cooldown value 18
execute as @r if score clock match_cd matches 340 run bossbar set cooldown value 17
execute as @r if score clock match_cd matches 320 run bossbar set cooldown value 16
execute as @r if score clock match_cd matches 300 run bossbar set cooldown value 15
execute as @r if score clock match_cd matches 280 run bossbar set cooldown value 14
execute as @r if score clock match_cd matches 260 run bossbar set cooldown value 13
execute as @r if score clock match_cd matches 240 run bossbar set cooldown value 12
execute as @r if score clock match_cd matches 220 run bossbar set cooldown value 11
execute as @r if score clock match_cd matches 200 run bossbar set cooldown value 10
execute as @r if score clock match_cd matches 180 run bossbar set cooldown value 9
execute as @r if score clock match_cd matches 160 run bossbar set cooldown value 8
execute as @r if score clock match_cd matches 140 run bossbar set cooldown value 7
execute as @r if score clock match_cd matches 120 run bossbar set cooldown value 6
execute as @r if score clock match_cd matches 100 run bossbar set cooldown value 5
execute as @r if score clock match_cd matches 80 run bossbar set cooldown value 4
execute as @r if score clock match_cd matches 60 run bossbar set cooldown value 3
execute as @r if score clock match_cd matches 40 run bossbar set cooldown value 2
execute as @r if score clock match_cd matches 20 run bossbar set cooldown value 1
execute as @r if score clock match_cd matches ..0 run title @a title "现可开启对局"
execute as @r if score clock match_cd matches ..0 run setblock 0 2 -20 minecraft:stone_button[face=floor,facing=north,powered=false]
execute as @r if score clock match_cd matches ..0 run bossbar set minecraft:cooldown visible false

schedule function aimatrix:matchstart/match_cooldown 1t append
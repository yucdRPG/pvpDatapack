fill 2946 -38 -114 2959 -41 -114 air destroy
fill 2946 -38 -114 2946 -41 -107 air destroy
fill 2959 -38 -107 2946 -41 -107 air destroy
fill 2959 -38 -107 2959 -41 -114 air destroy

fill 2820 -40 -109 2820 -42 -94 air destroy
fill 2811 -40 -94 2820 -42 -94 air destroy
fill 2811 -40 -94 2811 -42 -109 air destroy
fill 2820 -40 -109 2811 -42 -109 air destroy

execute as @a at @s run playsound superbwarfare:cannon_zoom_in master @s
scoreboard players set clock bomb_planted 0
scoreboard players set clock countdown 2400

title @a title ""
title @a subtitle ""
effect give @a instant_health 1 8 true
scoreboard players set clock fight_begin 1

execute as @a at @s run clear @s tacz:attachment
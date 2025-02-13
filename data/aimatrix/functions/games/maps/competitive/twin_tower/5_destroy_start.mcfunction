fill 183 97 -221 179 95 -221 air destroy
fill 178 97 -221 178 96 -221 air destroy
fill 178 97 -220 178 95 -215 air destroy
fill 179 97 -215 179 95 -215 air destroy
fill 234 90 -209 236 88 -209 air destroy
fill 227 90 -203 227 88 -204 air destroy
execute as @a at @s run playsound superbwarfare:cannon_zoom_in master @s
scoreboard players set clock bomb_planted 0
scoreboard players set clock countdown 2400

title @a title ""
title @a subtitle ""
effect give @a instant_health 1 8 true
scoreboard players set clock fight_begin 1

execute as @a at @s run clear @s tacz:attachment
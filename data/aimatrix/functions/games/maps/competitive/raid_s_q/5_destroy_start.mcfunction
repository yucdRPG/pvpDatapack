fill 1824 -2 -344 1817 3 -344 air replace
fill 1813 3 -344 1806 -2 -344 air replace
fill 1846 0 -343 1844 -1 -343 air replace
fill 1822 6 -147 1807 2 -147 air replace
execute as @a at @s run playsound superbwarfare:cannon_zoom_in master @s
scoreboard players set clock bomb_planted 0
scoreboard players set clock countdown 2400

title @a title ""
title @a subtitle ""
effect give @a instant_health 1 8 true
scoreboard players set clock fight_begin 1
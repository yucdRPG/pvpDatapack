execute as @r store result score clock weather_competitive run random value 1 3
execute as @r if score clock weather_competitive matches 1 run weather rain
execute as @r if score clock weather_competitive matches 2 run weather thunder
execute as @r if score clock weather_competitive matches 3 run weather clear
execute as @r run scoreboard players set clock weather_competitive 0
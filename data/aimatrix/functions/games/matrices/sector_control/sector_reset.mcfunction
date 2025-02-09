execute as @a run tellraw @a {"selector": "@s","extra":[{"text": " Kills: ","color": "green"},{"score":{"name":"@s","objective":"kills"},"color": "white"},{"text": "  Deaths: ","color": "green"},{"score": {"name": "@s","objective": "deaths"},"color": "white"},{"text": " Dmg: ","color": "green"},{"score": {"name": "@s","objective": "damage_dealt"},"color": "white"}]}
execute as @a at @s run playsound entity.player.levelup master @s
function aimatrix:initialization
function aimatrix:map_reset
scoreboard players set clock countdown 99999999
schedule function aimatrix:initialization 2s append
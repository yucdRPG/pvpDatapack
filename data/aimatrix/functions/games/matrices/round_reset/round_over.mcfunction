#胜利条件检测


execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 0 run title @a title "\u00a79BLUE \u00a7rWIN!"
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 0 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 0 run scoreboard players add clock blue_score 1
execute as @a at @s if score clock countdown matches 0 if score clock bomb_planted matches 0 run playsound block.glass.break master @s
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/round_reset/round_over0

execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run title @a title "\u00a7cRED \u00a7rWIN!"
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run scoreboard players add clock red_score 1
execute as @a at @s if score clock countdown matches 0 if score clock bomb_planted matches 1 run playsound entity.generic.explode master @s
execute as @e[type=slime] at @s if score clock countdown matches 0 if score clock bomb_planted matches 1 run kill @a[distance=..25,gamemode=adventure]
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run kill @e[type=slime]
execute as @r if score clock countdown matches 0 if score clock bomb_planted matches 1 run function aimatrix:games/matrices/round_reset/round_over0

execute as @r if score clock bomb_planted matches 2 run title @a title "\u00a79BLUE \u00a7rWIN!"
execute as @r if score clock bomb_planted matches 2 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock bomb_planted matches 2 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock bomb_planted matches 2 run scoreboard players add clock blue_score 1
execute as @a at @s if score clock bomb_planted matches 2 run playsound minecraft:entity.player.levelup master @a
execute as @r if score clock bomb_planted matches 2 run function aimatrix:games/matrices/round_reset/round_over0

execute as @r if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run title @a title "\u00a79BLUE \u00a7rWIN!"
execute as @r if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run scoreboard players add clock blue_score 1
execute as @a at @s if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run playsound block.anvil.land master @s
execute as @r if score clock RedTeamLeft matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/round_reset/round_over0

execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run title @a title "\u00a7cRED \u00a7rWIN!"
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run scoreboard players add clock red_score 1
execute as @a at @s if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run playsound block.anvil.land master @s
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 0 run function aimatrix:games/matrices/round_reset/round_over0

execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run title @a title "\u00a7cRED \u00a7rWIN!"
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run function aimatrix:games/matrices/mvp_judge/competitive_ver
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run title @a subtitle {"text": "MVP: ","extra": [{"selector": "@r[tag=mvp]"}]}
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run scoreboard players add clock red_score 1
execute as @a at @s if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run playsound block.anvil.land master @s
execute as @r if score clock BlueTeamLeft matches 0 if score clock bomb_planted matches 1 run function aimatrix:games/matrices/round_reset/round_over0

schedule function aimatrix:games/matrices/round_reset/round_over 1t append


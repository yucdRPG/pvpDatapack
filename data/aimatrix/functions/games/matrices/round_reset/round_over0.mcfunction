scoreboard players set clock bomb_planted 3
scoreboard players set clock countdown 160

schedule clear aimatrix:games/matrices/c4_bomb/c4_plant
schedule function aimatrix:games/matrices/round_reset/round_start 159t append

schedule clear aimatrix:games/matrices/c4_bomb/c4_defuse

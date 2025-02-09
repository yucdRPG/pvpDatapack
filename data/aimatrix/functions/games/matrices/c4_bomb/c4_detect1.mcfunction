scoreboard objectives add bomb minecraft.picked_up:minecraft.tnt
scoreboard objectives add bombdrop minecraft.dropped:minecraft.tnt
scoreboard objectives add hand_tnt dummy
scoreboard players set @a bomb_defuse_progress 0
function aimatrix:games/matrices/c4_bomb/c4_detect2
function aimatrix:games/matrices/c4_bomb/c4_detect3
function aimatrix:games/matrices/c4_bomb/c4_plant
scoreboard objectives add Asector dummy
scoreboard objectives add Asector_status dummy
scoreboard players set clock Asector 0
scoreboard players set clock Asector_status 0
scoreboard objectives add Bsector dummy
scoreboard objectives add Bsector_status dummy
scoreboard players set clock Bsector 0
scoreboard players set clock Bsector_status 0
scoreboard objectives add Csector dummy
scoreboard objectives add Csector_status dummy
scoreboard players set clock Csector 0
scoreboard players set clock Csector_status 0
scoreboard players set clock red_score 0
scoreboard players set clock blue_score 0


schedule clear aimatrix:games/matrices/sector_control/sector_control_loop
schedule clear aimatrix:games/matrices/sector_control/sector_control_1s_loop
function aimatrix:games/matrices/sector_control/sector_control_loop
function aimatrix:games/matrices/sector_control/sector_control_1s_loop

tp @a[gamemode=spectator] 2852 -27 -143 300 30
title @a title ""
title @a subtitle "副路"
title @a[team=Red] actionbar ""
title @a[team=Blue] actionbar ""
tellraw @a {"text": "--目标击杀数: ","color": "white","extra": [{"score": {"name": "clock","objective": "aim_kills"},"color": "yellow","bold": true}]}
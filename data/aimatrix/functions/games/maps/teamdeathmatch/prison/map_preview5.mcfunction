tp @a[gamemode=spectator] -1875 -41 127 183 40
title @a title ""
title @a subtitle "秘密监狱-链接"

title @a[team=Red] actionbar ""
title @a[team=Blue] actionbar ""
tellraw @a {"text": "--目标击杀数: ","color": "white","extra": [{"score": {"name": "clock","objective": "aim_kills"},"color": "yellow","bold": true}]}
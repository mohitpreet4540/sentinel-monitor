spawnpoint @s ~ ~ ~ ~ 
playsound block.note_block.harp master @s ~ ~ ~ 20000000 2
title @s times 10 40 10
title @s actionbar {"text":"Checkpoint!","color":"gold","bold":true}
tag @s add Checkpoint
tag @s remove Axe
clear @s iron_axe
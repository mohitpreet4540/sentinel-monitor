execute if block 218 -47 954 polished_blackstone_button[powered=true] if score .elevator factory matches 0 run scoreboard players set .elevator factory 1

scoreboard players add .elepower factory 1

execute if score .elepower factory matches 1..400 run setblock 221 -45 952 minecraft:waxed_copper_bulb[lit=true]
execute if score .elepower factory matches 1..400 run setblock 219 -52 952 minecraft:waxed_exposed_copper_bulb[lit=true]

execute if score .elepower factory matches 401.. run setblock 221 -45 952 minecraft:waxed_copper_bulb[lit=false]
execute if score .elepower factory matches 401.. run setblock 219 -52 952 minecraft:waxed_exposed_copper_bulb[lit=false]
execute if score .elepower factory matches 401.. run fill 219 -48 951 219 -46 953 minecraft:white_stained_glass_pane
execute if score .elepower factory matches 401.. run setblock 222 -47 947 minecraft:lever[face=floor,facing=east,powered=false]
execute if score .elepower factory matches 401.. run scoreboard players set .elepower factory 0

execute if score .elepower factory matches 1..40 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚❚","color": "green"}]
execute if score .elepower factory matches 41..80 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚","color": "gray"}]
execute if score .elepower factory matches 81..120 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚","color": "gray"}]
execute if score .elepower factory matches 121..160 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚","color": "gray"}]
execute if score .elepower factory matches 161..200 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚","color": "gray"}]
execute if score .elepower factory matches 201..240 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚","color": "gray"}]
execute if score .elepower factory matches 241..280 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚❚","color": "gray"}]
execute if score .elepower factory matches 281..320 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚","color": "gray"}]
execute if score .elepower factory matches 321..360 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚","color": "gray"}]
execute if score .elepower factory matches 361..400 run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Time Left: "},{"text": "❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚❚","color": "gray"}]

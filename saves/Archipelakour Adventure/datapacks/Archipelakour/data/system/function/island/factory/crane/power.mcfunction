execute if block 266 -48 969 polished_blackstone_button[powered=true] if score .crane factory matches 0 run scoreboard players set .crane factory 1
execute if score .crane factory matches 1..400 run setblock 266 -48 969 polished_blackstone_button[face=floor,facing=west,powered=true]

execute if score .crane factory matches 1..401 run function system:island/factory/crane/animation

execute if score .crane factory matches 1..400 run setblock 266 -48 968 minecraft:lantern
execute if score .crane factory matches 0 run setblock 266 -48 968 minecraft:soul_lantern

execute if score .crane factory matches 1..40 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚❚","color": "green"}]
execute if score .crane factory matches 41..80 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚","color": "gray"}]
execute if score .crane factory matches 81..120 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚","color": "gray"}]
execute if score .crane factory matches 121..160 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚","color": "gray"}]
execute if score .crane factory matches 161..200 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚","color": "gray"}]
execute if score .crane factory matches 201..240 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚","color": "gray"}]
execute if score .crane factory matches 241..280 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚❚","color": "gray"}]
execute if score .crane factory matches 281..320 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚","color": "gray"}]
execute if score .crane factory matches 321..360 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚","color": "gray"}]
execute if score .crane factory matches 361..400 run title @a[x=256,y=-54,z=957,dx=44,dy=10,dz=17] actionbar [{"text": "Time Left: "},{"text": "❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚❚","color": "gray"}]

execute if score .crane factory matches 0 run title @a[x=266,y=-48,z=969,distance=..4] actionbar [{"text": "Start Me Up!","color": "green"}]
execute if score .crane factory matches 0 run particle happy_villager 266 -47.9 969 .3 .3 .3 1 1 force


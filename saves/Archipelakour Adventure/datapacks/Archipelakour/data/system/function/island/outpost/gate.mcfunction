scoreboard objectives add outpost dummy
execute if score .gate outpost matches 1..200 run scoreboard players add .gate outpost 1
execute if score .gate outpost matches 201.. run setblock 316 -48 296 minecraft:birch_button[powered=false,face=floor,facing=east]
execute if score .gate outpost matches 201.. run scoreboard players set .gate outpost 0

execute if score .gate outpost matches 1..5 run fill 309 -55 308 311 -55 308 air
execute if score .gate outpost matches 6 run fill 309 -54 308 311 -54 308 air
execute if score .gate outpost matches 11 run fill 309 -53 308 311 -53 308 air

execute if score .gate outpost matches 186 run fill 309 -53 308 311 -53 308 iron_bars
execute if score .gate outpost matches 191 run fill 309 -54 308 311 -54 308 iron_bars
execute if score .gate outpost matches 196 run fill 309 -55 308 311 -55 308 oak_fence

execute if score .gate outpost matches 1 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1
execute if score .gate outpost matches 6 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1
execute if score .gate outpost matches 11 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1

execute if score .gate outpost matches 186 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1
execute if score .gate outpost matches 191 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1
execute if score .gate outpost matches 196 run playsound minecraft:block.anvil.place block @a 310 -55 308 80 .9 1

execute if score .gate outpost matches 1..200 run setblock 316 -48 296 minecraft:birch_button[powered=true,face=floor,facing=east]
execute if block 316 -48 296 minecraft:birch_button[powered=true] if score .gate outpost matches 0 run scoreboard players set .gate outpost 1

execute if score .gate outpost matches 1..20 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚❚","color": "green"}]
execute if score .gate outpost matches 21..40 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚","color": "gray"}]
execute if score .gate outpost matches 41..60 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚","color": "gray"}]
execute if score .gate outpost matches 61..80 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚","color": "gray"}]
execute if score .gate outpost matches 81..100 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚","color": "gray"}]
execute if score .gate outpost matches 101..120 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚","color": "gray"}]
execute if score .gate outpost matches 121..140 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚❚","color": "gray"}]
execute if score .gate outpost matches 141..160 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚","color": "gray"}]
execute if score .gate outpost matches 161..180 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚","color": "gray"}]
execute if score .gate outpost matches 181..200 run title @a[x=291,y=-55,z=292,dx=26,dy=10,dz=20] actionbar [{"text": "Time Left: "},{"text": "❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚❚","color": "gray"}]

execute if score .gate outpost matches 0 run title @a[x=316,y=-48,z=296,distance=..4] actionbar [{"text": "Start Me Up!","color": "green"}]
execute if score .gate outpost matches 0 run particle happy_villager 316 -47.8 296 .3 .3 .3 1 1 force
scoreboard objectives add factory dummy
execute if entity @p[x=244,y=-55,z=921,dx=4,dy=3,dz=4] if score .frontgate factory matches ..20 run scoreboard players add .frontgate factory 1
execute if entity @p[x=239,y=-55,z=926,dx=14,dy=5,dz=13] if score .frontgate factory matches 20..40 run scoreboard players add .frontgate factory 1

execute if score .frontgate factory matches 6..10 run fill 246 -55 925 246 -51 925 air
execute if score .frontgate factory matches 11..15 run fill 247 -55 925 245 -51 925 air
execute if score .frontgate factory matches 16..20 run fill 244 -55 925 248 -52 925 air

execute if score .frontgate factory matches 26..30 run fill 244 -55 925 244 -52 925 quartz_block
execute if score .frontgate factory matches 26..30 run fill 248 -55 925 248 -52 925 iron_block
execute if score .frontgate factory matches 31..35 run fill 247 -55 925 247 -51 925 iron_block
execute if score .frontgate factory matches 31..35 run fill 245 -55 925 245 -51 925 quartz_block
execute if score .frontgate factory matches 36..40 run fill 246 -55 925 246 -54 925 iron_block
execute if score .frontgate factory matches 36..40 run fill 246 -51 925 246 -53 925 quartz_block

execute if score .frontgate factory matches 6 run playsound block.piston.contract block @a 246 -55 925 80 1 1
execute if score .frontgate factory matches 11 run playsound block.piston.contract block @a 246 -55 925 80 1 1
execute if score .frontgate factory matches 16 run playsound block.piston.contract block @a 246 -55 925 80 1 1
execute if score .frontgate factory matches 26 run playsound block.piston.extend block @a 246 -55 925 80 1 1
execute if score .frontgate factory matches 31 run playsound block.piston.extend block @a 246 -55 925 80 1 1
execute if score .frontgate factory matches 36 run playsound block.piston.extend block @a 246 -55 925 80 1 1

execute if score .frontgate factory matches 41.. run scoreboard players set .frontgate factory 0
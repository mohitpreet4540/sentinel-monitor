scoreboard players add .crane factory 1
execute if score .crane factory matches 401.. run setblock 266 -48 969 polished_blackstone_button[face=floor,facing=west,powered=false]
execute if score .crane factory matches 401.. run scoreboard players set .crane factory 0

#Up
execute if score .crane factory matches 1..5 run fill 262 -55 971 260 -55 972 air
execute if score .crane factory matches 1..10 run clone 262 -57 969 260 -59 968 260 -54 971

execute if score .crane factory matches 11 run fill 262 -54 971 260 -54 972 air
execute if score .crane factory matches 11..20 run clone 262 -57 969 260 -59 968 260 -53 971

execute if score .crane factory matches 21 run fill 262 -53 971 260 -53 972 air
execute if score .crane factory matches 21..30 run clone 262 -57 969 260 -59 968 260 -52 971

#Down
execute if score .crane factory matches 386..400 run fill 261 -50 971 261 -52 972 air

execute if score .crane factory matches 386 run fill 262 -50 971 262 -50 972 chain[axis=y]
execute if score .crane factory matches 386 run fill 260 -50 971 260 -50 972 chain[axis=y]
execute if score .crane factory matches 386..390 run clone 262 -57 969 260 -59 968 260 -53 971

execute if score .crane factory matches 391 run fill 262 -51 971 262 -51 972 chain[axis=y]
execute if score .crane factory matches 391 run fill 260 -51 971 260 -51 972 chain[axis=y]
execute if score .crane factory matches 391..395 run clone 262 -57 969 260 -59 968 260 -54 971

execute if score .crane factory matches 396 run fill 262 -52 971 262 -52 972 chain[axis=y]
execute if score .crane factory matches 396 run fill 260 -52 971 260 -52 972 chain[axis=y]
execute if score .crane factory matches 396..400 run clone 262 -57 969 260 -59 968 260 -55 971
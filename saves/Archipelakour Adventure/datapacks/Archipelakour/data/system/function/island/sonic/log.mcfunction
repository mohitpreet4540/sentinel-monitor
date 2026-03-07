scoreboard objectives add sonic dummy
scoreboard players add .log sonic 1

execute if score .log sonic matches 31.. run scoreboard players set .log sonic 1

execute if score .log sonic matches 1..2 run clone 311 -48 792 311 -46 801 310 -48 792 filtered stripped_dark_oak_wood
execute if score .log sonic matches 3..4 run clone 311 -48 792 311 -46 801 309 -48 792 filtered stripped_dark_oak_wood
execute if score .log sonic matches 5..6 run clone 311 -48 792 311 -46 801 308 -48 792 filtered stripped_dark_oak_wood
execute if score .log sonic matches 7..8 run clone 311 -48 792 311 -46 801 307 -48 792 filtered stripped_dark_oak_wood

execute if score .log sonic matches 1 run execute as @a at @s if block ~1 ~1 ~ stripped_dark_oak_wood run tp @s ~-1 ~ ~
execute if score .log sonic matches 3 run execute as @a at @s if block ~1 ~1 ~ stripped_dark_oak_wood run tp @s ~-1 ~ ~
execute if score .log sonic matches 5 run execute as @a at @s if block ~1 ~1 ~ stripped_dark_oak_wood run tp @s ~-1 ~ ~
execute if score .log sonic matches 7 run execute as @a at @s if block ~1 ~1 ~ stripped_dark_oak_wood run tp @s ~-1 ~ ~

execute if score .log sonic matches 16..17 run fill 307 -46 801 307 -48 792 air
execute if score .log sonic matches 18..19 run fill 308 -46 801 308 -48 792 air
execute if score .log sonic matches 20..21 run fill 309 -46 801 309 -48 792 air
execute if score .log sonic matches 22..23 run fill 310 -46 801 310 -48 792 air
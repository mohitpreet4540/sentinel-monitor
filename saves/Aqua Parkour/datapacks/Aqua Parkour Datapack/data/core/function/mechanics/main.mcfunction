# All Main Detection Methods

execute if block -30 -4 56 light_weighted_pressure_plate[power=1] run scoreboard players set #snake1 Active 1

function core:mechanics/snake/snake1checker

execute if score #snake1 Active matches 1 run scoreboard players add #snake1 localtimer 1 
execute if score #snake1 Active matches 0 run scoreboard players set #snake1 localtimer 0 

execute if block -36 3 -43 jungle_button[powered=true] run scoreboard players set #level2 Active 1
execute if score #level2 localtimer matches 10 run fill -36 0 -34 -35 0 -34 air
execute positioned -35 0 -34 if score #level2 localtimer matches 10 run playsound minecraft:block.piston.contract master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 20 run fill -36 1 -34 -35 1 -34 air
execute positioned -35 0 -34 if score #level2 localtimer matches 20 run playsound minecraft:block.piston.contract master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 30 run fill -36 2 -34 -35 2 -34 air
execute positioned -35 0 -34 if score #level2 localtimer matches 30 run playsound minecraft:block.piston.contract master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 280 run fill -36 2 -34 -35 2 -34 oak_fence
execute positioned -35 0 -34 if score #level2 localtimer matches 280 run playsound minecraft:block.piston.extend master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 290 run fill -36 1 -34 -35 1 -34 oak_fence
execute positioned -35 0 -34 if score #level2 localtimer matches 290 run playsound minecraft:block.piston.extend master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 300 run fill -36 0 -34 -35 0 -34 oak_fence
execute positioned -35 0 -34 if score #level2 localtimer matches 300 run playsound minecraft:block.piston.extend master @a[distance=..10] -35 0 -34 1000
execute if score #level2 localtimer matches 300 run scoreboard players set #level2 Active 0

execute if score #level2 Active matches 1 run scoreboard players add #level2 localtimer 1 
execute if score #level2 Active matches 0 run scoreboard players set #level2 localtimer 0 

execute if block -47 -2 13 birch_pressure_plate[powered=true] run scoreboard players set #level5 Active 1

execute if score #level5 localtimer matches 1 run setblock -47 -2 13 air destroy

execute if score #level5 localtimer matches 10 run setblock -51 -6 15 stripped_spruce_log
execute positioned -51 -6 15 if score #level5 localtimer matches 10 run playsound minecraft:block.piston.extend master @a[distance=..10] -51 -6 15 1000
execute if score #level5 localtimer matches 20 run setblock -51 -5 15 stripped_spruce_log
execute positioned -51 -5 15 if score #level5 localtimer matches 20 run playsound minecraft:block.piston.extend master @a[distance=..10] -51 -5 15 1000
execute if score #level5 localtimer matches 30 run setblock -51 -4 15 stripped_spruce_log
execute positioned -51 -4 15 if score #level5 localtimer matches 30 run playsound minecraft:block.piston.extend master @a[distance=..10] -51 -4 15 1000
execute if score #level5 localtimer matches 40 run setblock -51 -3 15 stripped_spruce_log
execute positioned -51 -3 15 if score #level5 localtimer matches 40 run playsound minecraft:block.piston.extend master @a[distance=..10] -51 -3 15 1000
execute if score #level5 localtimer matches 270 run setblock -51 -3 15 air
execute positioned -51 -3 15 if score #level5 localtimer matches 270 run playsound minecraft:block.piston.contract master @a[distance=..10] -51 -3 15 1000
execute if score #level5 localtimer matches 280 run setblock -51 -4 15 air
execute positioned -51 -4 15 if score #level5 localtimer matches 280 run playsound minecraft:block.piston.contract master @a[distance=..10] -51 -4 15 1000
execute if score #level5 localtimer matches 290 run setblock -51 -5 15 air
execute positioned -51 -5 15 if score #level5 localtimer matches 290 run playsound minecraft:block.piston.contract master @a[distance=..10] -51 -5 15 1000
execute if score #level5 localtimer matches 300 run setblock -51 -6 15 air
execute positioned -51 -6 15 if score #level5 localtimer matches 300 run playsound minecraft:block.piston.contract master @a[distance=..10] -51 -6 15 1000
execute if score #level5 localtimer matches 300 run scoreboard players set #level5 Active 0

execute if score #level5 localtimer matches 300 run setblock -47 -2 13 birch_pressure_plate

execute if score #level5 Active matches 1 run scoreboard players add #level5 localtimer 1 
execute if score #level5 Active matches 0 run scoreboard players set #level5 localtimer 0 

execute if block -29 -11 64 lever[powered=true] if block -31 -11 64 lever[powered=true] run scoreboard players set #level7 Active 1

execute if score #level7 localtimer matches 1 run setblock -29 -14 57 redstone_torch
execute if score #level7 localtimer matches 240 run setblock -29 -14 57 andesite
execute if score #level7 localtimer matches 240 run setblock -29 -11 64 lever[powered=false]
execute if score #level7 localtimer matches 240 run setblock -31 -11 64 lever[powered=false]
execute if score #level7 localtimer matches 300 run scoreboard players set #level7 Active 0

execute if score #level7 Active matches 1 run scoreboard players add #level7 localtimer 1 
execute if score #level7 Active matches 0 run scoreboard players set #level7 localtimer 0 

execute if block -9 5 54 minecraft:mangrove_button[powered=true] run scoreboard players set #level8 Active 1
execute if score #level8 localtimer matches 10 run setblock -2 2 55 mangrove_log
execute positioned -2 2 55 if score #level8 localtimer matches 10 run playsound minecraft:block.piston.extend master @a[distance=..10] -2 2 55 1000
execute if score #level8 localtimer matches 300 run setblock -2 2 55 air
execute positioned -2 2 55 if score #level8 localtimer matches 10 run playsound minecraft:block.piston.contract master @a[distance=..10] -2 2 55 1000
execute if score #level8 localtimer matches 300 run scoreboard players set #level8 Active 0

execute if score #level8 Active matches 1 run scoreboard players add #level8 localtimer 1 
execute if score #level8 Active matches 0 run scoreboard players set #level8 localtimer 0 

execute if block 15 -2 58 minecraft:crimson_button[powered=true] run scoreboard players set #level9 Active 1
execute if score #level9 localtimer matches 1 run fill 13 -4 55 14 -3 56 structure_void
execute if score #level9 localtimer matches 100 run fill 13 -4 55 14 -4 56 shroomlight
execute if score #level9 localtimer matches 100 run fill 13 -3 55 14 -3 56 slime_block
execute if score #level9 localtimer matches 100 run scoreboard players set #level9 Active 0

execute if score #level9 Active matches 1 run scoreboard players add #level9 localtimer 1 
execute if score #level9 Active matches 0 run scoreboard players set #level9 localtimer 0 

execute as @a[x=14,y=-13,z=55,dx=-1,dy=0,dz=1] run effect give @s slow_falling 1 0 true
execute as @a[x=15,y=-14,z=56,dx=0,dy=1,dz=-1] run effect clear @s slow_falling

execute if block 36 5 59 minecraft:crimson_pressure_plate[powered=true] run scoreboard players set #level10 Active 1
execute if score #level10 localtimer matches 1 run setblock 36 5 59 air destroy
execute if score #level10 localtimer matches 4 run setblock 37 2 54 chorus_plant
execute if score #level10 localtimer matches 4 run setblock 41 2 53 chorus_plant
execute if score #level10 localtimer matches 6 run setblock 37 2 55 chorus_plant
execute if score #level10 localtimer matches 6 run setblock 40 2 53 chorus_plant
execute if score #level10 localtimer matches 8 run setblock 37 3 55 chorus_plant
execute if score #level10 localtimer matches 8 run setblock 40 3 53 chorus_plant
execute if score #level10 localtimer matches 10 run setblock 37 4 55 chorus_flower
execute if score #level10 localtimer matches 10 run setblock 40 4 53 chorus_flower
execute if score #level10 localtimer matches 158 run setblock 37 2 54 chorus_flower
execute if score #level10 localtimer matches 158 run setblock 41 2 53 chorus_flower
execute if score #level10 localtimer matches 160 run setblock 36 5 59 minecraft:crimson_pressure_plate
execute if score #level10 localtimer matches 160 run scoreboard players set #level10 Active 0

execute if score #level10 Active matches 1 run scoreboard players add #level10 localtimer 1 
execute if score #level10 Active matches 0 run scoreboard players set #level10 localtimer 0 

execute if entity @a[x=43,y=10,z=30,dx=1,dy=1,dz=1] run scoreboard players set #level11 Active 1
execute if score #level11 localtimer matches 1 run fill 43 9 30 44 9 31 air destroy
execute if score #level11 localtimer matches 60 run fill 43 9 30 44 9 31 spruce_planks
execute if score #level11 localtimer matches 60 run scoreboard players set #level11 Active 0

execute if score #level11 Active matches 1 run scoreboard players add #level11 localtimer 1 
execute if score #level11 Active matches 0 run scoreboard players set #level11 localtimer 0 

execute if block 51 -3 22 acacia_pressure_plate[powered=true] run scoreboard players set #level12 Active 1
execute if score #level12 localtimer matches 1 run setblock 51 -3 22 air destroy
execute if score #level12 localtimer matches 1 run fill 58 -17 23 62 -15 27 slime_block replace melon
execute positioned 51 -3 22 if score #level12 localtimer matches 1 run playsound minecraft:block.slime_block.place master @a[distance=..2] 51 -3 22 1000
execute if score #level12 localtimer matches 200 run fill 58 -17 23 62 -15 27 melon replace slime_block
execute if score #level12 localtimer matches 200 run setblock 51 -3 22 acacia_pressure_plate
execute if score #level12 localtimer matches 200 run scoreboard players set #level12 Active 0

execute if score #level12 Active matches 1 run scoreboard players add #level12 localtimer 1 
execute if score #level12 Active matches 0 run scoreboard players set #level12 localtimer 0 

execute if block 81 -41 -6 dark_oak_pressure_plate[powered=true] run scoreboard players set #level13 Active 1
execute if block 81 -41 -7 dark_oak_pressure_plate[powered=true] run scoreboard players set #level13 Active 1
execute if score #level13 localtimer matches 1 run fill 81 -41 -6 81 -41 -7 air destroy
execute if score #level13 localtimer matches 1 run fill 80 -40 -7 80 -41 -6 air destroy
execute if score #level13 localtimer matches 100 run fill 81 -41 -6 81 -41 -7 dark_oak_pressure_plate
execute if score #level13 localtimer matches 100 run fill 80 -40 -7 80 -41 -6 dark_oak_planks
execute if score #level13 localtimer matches 100 run scoreboard players set #level13 Active 0

execute if score #level13 Active matches 1 run scoreboard players add #level13 localtimer 1 
execute if score #level13 Active matches 0 run scoreboard players set #level13 localtimer 0 

execute if block 57 3 -22 acacia_pressure_plate[powered=true] run scoreboard players set #level1401 Active 1
execute if block 57 3 -23 acacia_pressure_plate[powered=true] run scoreboard players set #level1401 Active 1
execute if score #level1401 localtimer matches 1 run fill 57 3 -22 57 3 -23 air destroy
execute if score #level1401 localtimer matches 1 run setblock 49 -2 -22 redstone_torch
execute if score #level1401 localtimer matches 200 run setblock 49 -2 -22 red_sand
execute if score #level1401 localtimer matches 200 run fill 57 3 -22 57 3 -23 acacia_pressure_plate
execute if score #level1401 localtimer matches 200 run scoreboard players set #level1401 Active 0

execute if score #level1401 Active matches 1 run scoreboard players add #level1401 localtimer 1 
execute if score #level1401 Active matches 0 run scoreboard players set #level1401 localtimer 0 

execute as @a[x=57,y=4,z=-26,dx=1,dy=1,dz=1] run scoreboard players set #level1402 Active 1
execute if score #level1402 localtimer matches 1 run fill 58 6 -25 57 7 -26 air destroy
execute if score #level1402 localtimer matches 25 run fill 58 6 -25 57 7 -26 jungle_planks
execute if score #level1402 localtimer matches 25 run scoreboard players set #level1402 Active 0

execute if score #level1402 Active matches 1 run scoreboard players add #level1402 localtimer 1 
execute if score #level1402 Active matches 0 run scoreboard players set #level1402 localtimer 0 

execute if block 29 8 -54 jungle_pressure_plate[powered=true] run scoreboard players set #level16 Active 1
execute if score #level16 localtimer matches 1 run setblock 29 8 -54 air destroy
execute if score #level16 localtimer matches 1 run fill 29 8 -52 30 8 -52 air destroy
execute if score #level16 localtimer matches 1 run fill 30 8 -51 31 8 -51 air destroy
execute if score #level16 localtimer matches 10 run setblock 27 6 -49 redstone_torch
execute if score #level16 localtimer matches 160 run setblock 27 6 -49 stone
execute if score #level16 localtimer matches 160 run fill 30 8 -51 31 8 -51 spruce_fence
execute if score #level16 localtimer matches 160 run fill 29 8 -52 30 8 -52 spruce_fence
execute if score #level16 localtimer matches 1 run setblock 29 8 -54 jungle_pressure_plate
execute if score #level16 localtimer matches 160 run scoreboard players set #level16 Active 0

execute if score #level16 Active matches 1 run scoreboard players add #level16 localtimer 1 
execute if score #level16 Active matches 0 run scoreboard players set #level16 localtimer 0 

execute as @a[x=7,y=0,z=-49,dx=0,dy=0,dz=0] run effect give @s slow_falling 1 0 true
execute as @a[x=6,y=-2,z=-50,dx=2,dy=1,dz=2] run effect clear @s slow_falling

execute as @a[x=17,y=-4,z=-49,dx=0,dy=0,dz=0] run scoreboard players set #level17 Active 1
execute if score #level17 localtimer matches 1 run setblock 17 -3 -49 air destroy
execute if score #level17 localtimer matches 20 run setblock 17 -3 -49 diamond_block
execute if score #level17 localtimer matches 20 run scoreboard players set #level17 Active 0

execute if score #level17 Active matches 1 run scoreboard players add #level17 localtimer 1 
execute if score #level17 Active matches 0 run scoreboard players set #level17 localtimer 0 

execute as @a[x=8,y=4,z=-45,dx=0,dy=2,dz=-1] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=8,y=4,z=-45,dx=0,dy=2,dz=-1] at @s run tp @s 12 8 -63 0 0

execute if block -51 3 6 light_weighted_pressure_plate[power=1] run scoreboard players set #level2101 Active 1
execute if score #level2101 localtimer matches 1 run setblock -51 3 6 air destroy
execute if score #level2101 localtimer matches 1 run particle minecraft:explosion_emitter -44 0.5 7.5
execute if score #level2101 localtimer matches 1 run fill -44 0 7 -44 1 8 air destroy
execute positioned -44 0.5 7.5 if score #level2101 localtimer matches 1 run playsound minecraft:entity.generic.explode master @a[distance=..10] -44 0.5 7.5 1000
execute if score #level2101 localtimer matches 160 run fill -44 0 7 -44 1 8 acacia_fence
execute if score #level2101 localtimer matches 160 run setblock -51 3 6 light_weighted_pressure_plate
execute if score #level2101 localtimer matches 160 run scoreboard players set #level2101 Active 0

execute if score #level2101 Active matches 1 run scoreboard players add #level2101 localtimer 1 
execute if score #level2101 Active matches 0 run scoreboard players set #level2101 localtimer 0 

execute as @a[x=-43,y=11,z=7,dx=0,dy=1,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-43,y=11,z=7,dx=0,dy=1,dz=0] at @s run tp @s -29 -6 22 -60 0

execute as @a[x=-44,y=9,z=-3,dx=0,dy=0,dz=0] run scoreboard players set #level2102 Active 1
execute if score #level2102 localtimer matches 1 run setblock -44 10 -3 air destroy
execute if score #level2102 localtimer matches 15 run setblock -44 10 -3 mycelium
execute if score #level2102 localtimer matches 15 run scoreboard players set #level2102 Active 0

execute if score #level2102 Active matches 1 run scoreboard players add #level2102 localtimer 1 
execute if score #level2102 Active matches 0 run scoreboard players set #level2102 localtimer 0 

execute as @a[x=-43,y=8,z=13,dx=3,dy=0,dz=-2] run scoreboard players set #level2201 Active 1
execute if score #level2201 localtimer matches 1 run fill -40 5 11 -43 7 13 cave_air replace tnt
execute if score #level2201 localtimer matches 1 run kill @e[type=tnt,tag=!Unnatural]
execute if score #level2201 localtimer matches 1 run function core:mechanics/tntcave/tntlist1
execute positioned -41 5 12 if score #level2201 localtimer matches 1 run playsound minecraft:entity.tnt.primed master @a[distance=..10] -41 5 12 1000
execute positioned -41 5 12 if score #level2201 localtimer matches 60 run playsound minecraft:entity.generic.explode master @a[distance=..10] -41 5 12 1000
execute if score #level2201 localtimer matches 60 run particle minecraft:explosion_emitter -41 5 12
execute if score #level2201 localtimer matches 60 run tp @a[x=-43,y=5,z=13,dx=3,dy=2,dz=-2] -47 -29 40 -150 0
execute if score #level2201 localtimer matches 60 run particle minecraft:explosion_emitter -47 -29 40
execute if score #level2201 localtimer matches 60 run fill -40 5 11 -43 7 13 tnt replace cave_air
execute if score #level2201 localtimer matches 60 run scoreboard players set #level2201 Active 0

execute if score #level2201 Active matches 1 run scoreboard players add #level2201 localtimer 1 
execute if score #level2201 Active matches 0 run scoreboard players set #level2201 localtimer 0 

execute if block -40 -27 29 spruce_pressure_plate[powered=true] run scoreboard players set #level2202 Active 1
execute if score #level2202 localtimer matches 1 run kill @e[type=tnt,tag=!Unnatural]
execute if score #level2202 localtimer matches 1 run setblock -40 -27 29 air destroy
execute if score #level2202 localtimer matches 1 run fill -37 -26 36 -36 -27 34 cave_air replace tnt
execute if score #level2202 localtimer matches 1 run function core:mechanics/tntcave/tntlist2
execute positioned -37 -27 35 if score #level2202 localtimer matches 1 run playsound minecraft:entity.tnt.primed master @a[distance=..10] -37 -27 35 1000
execute positioned -37 -27 35 if score #level2202 localtimer matches 60 run playsound minecraft:entity.generic.explode master @a[distance=..10] -37 -27 35 1000
execute if score #level2202 localtimer matches 60 run particle minecraft:explosion_emitter -37 -27 35
execute if score #level2202 localtimer matches 60 run fill -38 -25 34 -38 -27 32 air destroy
execute if score #level2202 localtimer matches 240 run fill -38 -25 34 -38 -27 32 white_terracotta
execute if score #level2202 localtimer matches 240 run fill -37 -26 36 -36 -27 34 tnt replace cave_air
execute if score #level2202 localtimer matches 240 run setblock -36 -27 35 tnt
execute if score #level2202 localtimer matches 240 run setblock -40 -27 29 spruce_pressure_plate
execute if score #level2202 localtimer matches 240 run scoreboard players set #level2202 Active 0

execute if score #level2202 Active matches 1 run scoreboard players add #level2202 localtimer 1 
execute if score #level2202 Active matches 0 run scoreboard players set #level2202 localtimer 0 

execute as @a[x=-65,y=-28,z=43,dx=0,dy=1,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-65,y=-28,z=43,dx=0,dy=1,dz=0] at @s run tp @s -21 -31 4 0 0

execute as @a[x=-10,y=-26,z=23,dx=0,dy=1,dz=0,tag=!Tnt] run title @s actionbar {"text":"Tnt acquired!","color":"red","bold":true}
execute positioned -10 -26 23 as @a[x=-10,y=-26,z=23,dx=0,dy=1,dz=0,tag=!Tnt] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1000
execute as @a[x=-10,y=-26,z=23,dx=0,dy=1,dz=0,tag=!Tnt] run tag @s add Tnt
clear @a[nbt=!{Inventory:[{id:"minecraft:tnt",Slot:4b}]}] minecraft:tnt
execute as @a[tag=Tnt] run item replace entity @s hotbar.4 with tnt[can_place_on=[{blocks:"redstone_block"}],custom_name={"bold":true,"color":"aqua","text":"TNT"}] 1
execute positioned -17 -25 21 if entity @e[type=tnt,distance=..1] run scoreboard players set #level2203 Active 1
execute as @a[x=-19,y=-25,z=23,dx=2,dy=1,dz=0] run tag @s remove Tnt
execute as @a[x=-20,y=-25,z=18,dx=4,dy=1,dz=0] run tag @s remove Tnt
execute as @a[x=-19,y=-26,z=33,dx=0,dy=1,dz=3] run tag @s remove Tnt
execute as @a[x=-19,y=-25,z=23,dx=2,dy=1,dz=0] run clear @s tnt
execute as @a[x=-20,y=-25,z=18,dx=4,dy=1,dz=0] run clear @s tnt
execute as @a[x=-19,y=-26,z=33,dx=0,dy=1,dz=3] run clear @s tnt
execute if score #level2203 localtimer matches 1 run setblock -17 -26 21 white_terracotta
execute positioned -17 -25 21 if score #level2203 localtimer matches 1 run playsound minecraft:entity.tnt.primed master @a[distance=..10] -17 -25 21 1000
execute positioned -17 -25 21 if score #level2203 localtimer matches 80 run playsound minecraft:entity.generic.explode master @a[distance=..10] -17 -25 21 1000
execute if score #level2203 localtimer matches 80 run particle minecraft:explosion_emitter -17 -25 21
execute if score #level2203 localtimer matches 80 run setblock -17 -27 22 redstone_torch
execute if score #level2203 localtimer matches 240 run setblock -17 -27 22 white_terracotta destroy
execute if score #level2203 localtimer matches 240 run setblock -17 -26 21 redstone_block
execute if score #level2203 localtimer matches 240 run scoreboard players set #level2203 Active 0

execute if score #level2203 Active matches 1 run scoreboard players add #level2203 localtimer 1 
execute if score #level2203 Active matches 0 run scoreboard players set #level2203 localtimer 0 

execute if block -34 -23 29 dark_oak_pressure_plate[powered=true] run scoreboard players set #level2204 Active 1
execute if score #level2204 localtimer matches 1 run setblock -34 -23 29 air destroy
execute if score #level2204 localtimer matches 1 run kill @e[type=tnt,tag=!Unnatural]
execute if score #level2204 localtimer matches 1 run fill -37 -23 29 -36 -21 28 cave_air replace tnt
execute if score #level2204 localtimer matches 1 run function core:mechanics/tntcave/tntlist3
execute positioned -37 -22 28 if score #level2204 localtimer matches 1 run playsound minecraft:entity.tnt.primed master @a[distance=..10] -37 -22 28 1000
execute positioned -37 -22 28 if score #level2204 localtimer matches 60 run playsound minecraft:entity.generic.explode master @a[distance=..10] -37 -22 28 1000
execute if score #level2204 localtimer matches 60 run particle minecraft:explosion_emitter -35 -22 27
execute if score #level2204 localtimer matches 60 run fill -34 -23 27 -36 -21 27 air destroy
execute if score #level2204 localtimer matches 300 run fill -34 -23 27 -36 -22 27 white_terracotta
execute if score #level2204 localtimer matches 300 run fill -34 -21 27 -36 -21 27 spruce_fence
execute if score #level2204 localtimer matches 300 run fill -37 -23 29 -36 -21 28 tnt replace cave_air
execute if score #level2204 localtimer matches 300 run setblock -37 -23 29 tnt
execute if score #level2204 localtimer matches 300 run setblock -34 -23 29 dark_oak_pressure_plate
execute if score #level2204 localtimer matches 300 run scoreboard players set #level2204 Active 0

execute if score #level2204 Active matches 1 run scoreboard players add #level2204 localtimer 1 
execute if score #level2204 Active matches 0 run scoreboard players set #level2204 localtimer 0 

function core:mechanics/tntcave/logextender

execute if block -30 -32 3 lever[powered=true] if block -32 -32 5 lever[powered=true] if block -28 -32 5 lever[powered=true] run scoreboard players set #level2205 Active 1

execute if score #level2205 localtimer matches 10 run fill -31 -34 8 -29 -34 8 air
execute positioned -30 -34 8 if score #level2205 localtimer matches 10 run playsound minecraft:block.piston.contract master @a[distance=..10] -30 -34 8 1000
execute if score #level2205 localtimer matches 20 run fill -31 -33 8 -29 -33 8 air
execute positioned -30 -33 8 if score #level2205 localtimer matches 20 run playsound minecraft:block.piston.contract master @a[distance=..10] -30 -34 8 100
execute if score #level2205 localtimer matches 30 run fill -31 -32 8 -29 -32 8 air
execute positioned -30 -32 8 if score #level2205 localtimer matches 30 run playsound minecraft:block.piston.contract master @a[distance=..10] -30 -34 8 100
execute if score #level2205 localtimer matches 220 run fill -31 -32 8 -29 -32 8 dark_oak_fence
execute positioned -30 -32 8 if score #level2205 localtimer matches 220 run playsound minecraft:block.piston.extend master @a[distance=..10] -30 -34 8 100
execute if score #level2205 localtimer matches 230 run fill -31 -33 8 -29 -33 8 dark_oak_fence
execute positioned -30 -33 8 if score #level2205 localtimer matches 230 run playsound minecraft:block.piston.extend master @a[distance=..10] -30 -34 8 100
execute if score #level2205 localtimer matches 240 run fill -31 -34 8 -29 -34 8 dark_oak_fence
execute positioned -30 -34 8 if score #level2205 localtimer matches 240 run playsound minecraft:block.piston.extend master @a[distance=..10] -30 -34 8 100
execute if score #level2205 localtimer matches 240 run setblock -32 -32 5 lever[powered=false,facing=west,face=floor] 
execute if score #level2205 localtimer matches 240 run setblock -30 -32 3 lever[powered=false,facing=north,face=floor]
execute if score #level2205 localtimer matches 240 run setblock -28 -32 5 lever[powered=false,facing=east,face=floor]
execute if score #level2205 localtimer matches 240 run scoreboard players set #level2205 Active 0

execute if score #level2205 Active matches 1 run scoreboard players add #level2205 localtimer 1 
execute if score #level2205 Active matches 0 run scoreboard players set #level2205 localtimer 0 

execute as @a[x=-21,y=-5,z=42,dx=0,dy=1,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-21,y=-5,z=42,dx=0,dy=1,dz=0] at @s run tp @s -31 11 35.0 -90 0

execute positioned 4 -8 47 if entity @a[distance=..4] if block 4 -8 47 wheat run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.3 30
execute positioned 4 -8 47 if entity @a[distance=..4] if block 4 -8 47 wheat run playsound minecraft:item.crop.plant master @a[distance=..10] ~ ~ ~ 1000
execute positioned 4 -8 47 if entity @a[distance=..4] run setblock 4 -8 47 hay_block
execute positioned 4 -8 47 if entity @a[distance=..4] run setblock 4 -9 47 hay_block
execute positioned 4 -8 47 unless entity @a[distance=..4] run setblock 4 -9 47 farmland
execute positioned 4 -8 47 unless entity @a[distance=..4] run setblock 4 -8 47 wheat[age=7]

execute if block -3 8 31 birch_pressure_plate[powered=true] run scoreboard players set #snake2 Active 1

function core:mechanics/snake/snake2checker

execute if score #snake2 Active matches 1 run scoreboard players add #snake2 localtimer 1 
execute if score #snake2 Active matches 0 run scoreboard players set #snake2 localtimer 0 

execute as @a[x=23,y=-8,z=23,dx=20,dy=0,dz=-9] at @s run effect give @s slow_falling 1 0 true
execute as @a[x=23,y=-10,z=23,dx=20,dy=0,dz=-9] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=23,y=-10,z=23,dx=20,dy=0,dz=-9] at @s run tp @s 42 3 22 -180 0
execute as @a[x=42,y=3,z=22,dx=0,dy=1,dz=0] at @s run effect clear @s slow_falling

execute as @a[x=36,y=-15,z=34,dx=0,dy=1,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=36,y=-15,z=34,dx=0,dy=1,dz=0] at @s run tp @s 38 8 24 90 0

execute if block 30 8 21 spruce_pressure_plate[powered=true] run scoreboard players set #level26 Active 1

execute if score #level26 localtimer matches 1 run setblock 30 8 21 air destroy
execute if score #level26 localtimer matches 1 run fill 32 4 14 33 6 14 air destroy
execute positioned 32.5 5 14 if score #level26 localtimer matches 1 run playsound minecraft:entity.generic.explode master @a[distance=..10] 32.5 5 14 1000
execute if score #level26 localtimer matches 1 run particle minecraft:explosion_emitter 32.5 5 14
execute if score #level26 localtimer matches 160 run fill 32 4 14 33 6 14 dark_oak_fence
execute if score #level26 localtimer matches 160 run setblock 30 8 21 spruce_pressure_plate
execute if score #level26 localtimer matches 160 run scoreboard players set #level26 Active 0

execute if score #level26 Active matches 1 run scoreboard players add #level26 localtimer 1 
execute if score #level26 Active matches 0 run scoreboard players set #level26 localtimer 0 

execute if block 43 3 -2 spruce_pressure_plate[powered=true] run scoreboard players set #level27 Active 1
execute if block 42 3 -2 spruce_pressure_plate[powered=true] run scoreboard players set #level27 Active 1
execute if score #level27 localtimer matches 1 run fill 42 3 -2 43 3 -2 air destroy
execute if score #level27 localtimer matches 1 run fill 40 -2 -7 40 -2 -8 redstone_torch
execute if score #level27 localtimer matches 200 run fill 40 -2 -7 40 -2 -8 sandstone
execute if score #level27 localtimer matches 200 run fill 42 3 -2 43 3 -2 spruce_pressure_plate
execute if score #level27 localtimer matches 200 run scoreboard players set #level27 Active 0

execute if score #level27 Active matches 1 run scoreboard players add #level27 localtimer 1 
execute if score #level27 Active matches 0 run scoreboard players set #level27 localtimer 0 

execute if score #level2801 localtimer matches 1 run setblock 44 -27 -6 redstone_torch
execute if score #level2801 localtimer matches 100 run setblock 44 -27 -6 stone
execute if score #level2801 localtimer matches 100 run scoreboard players set #level2801 Active 0

execute if score #level2801 Active matches 1 run scoreboard players add #level2801 localtimer 1 
execute if score #level2801 Active matches 0 run scoreboard players set #level2801 localtimer 0 

execute as @a[x=51,y=-20,z=-2,dx=0,dy=1,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=51,y=-20,z=-2,dx=0,dy=1,dz=0] at @s run tp @s 41 -14 -14 180 0

execute as @a[x=40,y=-14,z=-17,dx=2,dy=2,dz=-2] run scoreboard players set #level2802 Active 1
execute if score #level2802 localtimer matches 1 run fill 40 -15 -17 42 -15 -19 air destroy
execute if score #level2802 localtimer matches 60 run fill 40 -15 -17 42 -15 -19 oak_planks
execute if score #level2802 localtimer matches 60 run scoreboard players set #level2802 Active 0

execute if score #level2802 Active matches 1 run scoreboard players add #level2802 localtimer 1 
execute if score #level2802 Active matches 0 run scoreboard players set #level2802 localtimer 0 

execute as @a[x=32,y=-4,z=-26,dx=0,dy=1,dz=0,tag=!Axe] run title @s actionbar {"text":"Axe acquired!","bold":true}
execute positioned 32 -4 -26 as @a[x=32,y=-4,z=-26,dx=0,dy=1,dz=0,tag=!Axe] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1000
execute as @a[x=32,y=-4,z=-26,dx=0,dy=1,dz=0,tag=!Axe] run tag @s add Axe
clear @a[nbt=!{Inventory:[{id:"minecraft:iron_axe",Slot:4b}]}] minecraft:iron_axe
execute as @a[tag=Axe] run item replace entity @s hotbar.4 with iron_axe[can_break=[{blocks:"oak_fence"}],custom_name={"bold":true,"color":"aqua","text":"Axe"}] 1
execute if block 29 -4 -15 air run scoreboard players set #level2803 Active 1
execute if block 29 -4 -16 air run scoreboard players set #level2803 Active 1
execute if block 30 -4 -16 air run scoreboard players set #level2803 Active 1
execute if block 30 -4 -17 air run scoreboard players set #level2803 Active 1
execute if score #level2803 localtimer matches 1 run fill 29 -4 -15 30 -4 -17 air destroy
execute as @a[x=27,y=-4,z=-18,dx=1,dy=1,dz=2] run tag @s remove Axe
execute as @a[x=27,y=-4,z=-18,dx=1,dy=1,dz=2] run clear @s iron_axe
execute if score #level2803 localtimer matches 240 run fill 29 -4 -15 29 -4 -16 oak_fence
execute if score #level2803 localtimer matches 240 run fill 30 -4 -16 30 -4 -17 oak_fence
execute if score #level2803 localtimer matches 240 run scoreboard players set #level2803 Active 0

execute if score #level2803 Active matches 1 run scoreboard players add #level2803 localtimer 1 
execute if score #level2803 Active matches 0 run scoreboard players set #level2803 localtimer 0 

execute if block 27 -9 -32 warped_pressure_plate[powered=true] run scoreboard players set #level30 Active 1

execute if score #level30 localtimer matches 1 run setblock 27 -9 -32 air destroy
execute if score #level30 localtimer matches 5 run clone 24 -13 -25 18 -13 -32 18 -12 -32
execute positioned 21 -12 -29 if score #level30 localtimer matches 5 run playsound minecraft:block.piston.extend master @a[distance=..10] 21 -12 -29 1000
execute if score #level30 localtimer matches 10 run clone 24 -13 -25 18 -13 -32 18 -11 -32
execute positioned 21 -11 -29 if score #level30 localtimer matches 10 run playsound minecraft:block.piston.extend master @a[distance=..10] 21 -11 -29 1000
execute if score #level30 localtimer matches 15 run clone 24 -13 -25 18 -13 -32 18 -10 -32
execute positioned 21 -10 -29 if score #level30 localtimer matches 15 run playsound minecraft:block.piston.extend master @a[distance=..10] 21 -10 -29 1000
execute if score #level30 localtimer matches 20 run clone 21 -13 -25 18 -13 -32 18 -9 -32
execute positioned 21 -9 -29 if score #level30 localtimer matches 20 run playsound minecraft:block.piston.extend master @a[distance=..10] 21 -9 -29 1000

execute if score #level30 localtimer matches 280 run fill 21 -9 -25 18 -9 -32 air replace stripped_warped_stem
execute positioned 21 -9 -29 if score #level30 localtimer matches 280 run playsound minecraft:block.piston.contract master @a[distance=..10] 21 -9 -29 1000
execute if score #level30 localtimer matches 285 run fill 24 -10 -25 18 -10 -32 air replace stripped_warped_stem
execute positioned 21 -10 -29 if score #level30 localtimer matches 285 run playsound minecraft:block.piston.contract master @a[distance=..10] 21 -10 -29 1000
execute if score #level30 localtimer matches 290 run fill 24 -11 -25 18 -11 -32 air replace stripped_warped_stem
execute positioned 21 -11 -29 if score #level30 localtimer matches 290 run playsound minecraft:block.piston.contract master @a[distance=..10] 21 -11 -29 1000
execute if score #level30 localtimer matches 295 run fill 24 -12 -25 18 -12 -32 air replace stripped_warped_stem
execute positioned 21 -12 -29 if score #level30 localtimer matches 295 run playsound minecraft:block.piston.contract master @a[distance=..10] 21 -12 -29 1000

execute if score #level30 localtimer matches 300 run setblock 27 -9 -32 warped_pressure_plate
execute if score #level30 localtimer matches 300 run scoreboard players set #level30 Active 0

execute if score #level30 Active matches 1 run scoreboard players add #level30 localtimer 1 
execute if score #level30 Active matches 0 run scoreboard players set #level30 localtimer 0 

execute if entity @a[x=-8,y=-19,z=-8,dx=1,dy=1,dz=1] run setblock -8 -22 -8 redstone_block
execute if block -8 -21 -8 sticky_piston[extended=false] run fill -8 -19 -8 -7 -19 -7 air
execute if block -8 -21 -8 sticky_piston[extended=false] run fill -8 -20 -8 -7 -20 -7 slime_block
execute unless entity @a[x=-8,y=-19,z=-8,dx=1,dy=0,dz=1] run setblock -8 -22 -8 stone

execute as @a[x=-3,y=3,z=-17,dx=1,dy=2,dz=0,tag=!Enchanted] run title @s actionbar {"text":"You've been enchanted with jump boost!","color":"aqua","bold":true}
execute as @a[x=-3,y=3,z=-17,dx=1,dy=2,dz=0,tag=!Enchanted] run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1000 1
execute as @a[x=-3,y=3,z=-17,dx=1,dy=2,dz=0,tag=!Enchanted] run tag @s add Enchanted
execute as @e[tag=Enchanted] run effect give @s jump_boost infinite 2 true

execute as @a[x=-3,y=5,z=-22,dx=1,dy=2,dz=0] unless entity @s[x=-3,y=3,z=-17,dx=1,dy=2,dz=0] run tag @s remove Enchanted
execute as @a[x=-3,y=3,z=-16,dx=1,dy=2,dz=0] unless entity @s[x=-3,y=3,z=-17,dx=1,dy=2,dz=0] run tag @s remove Enchanted
execute as @a[x=-3,y=5,z=-22,dx=1,dy=2,dz=0] unless entity @s[x=-3,y=3,z=-17,dx=1,dy=2,dz=0] run effect clear @s jump_boost
execute as @a[x=-3,y=3,z=-16,dx=1,dy=2,dz=0] unless entity @s[x=-3,y=3,z=-17,dx=1,dy=2,dz=0] run effect clear @s jump_boost

execute if block -5 2 14 dark_oak_pressure_plate[powered=true] run scoreboard players set #level3301 Active 1
execute if score #level3301 localtimer matches 1 run setblock -5 2 14 air
execute if score #level3301 localtimer matches 5 run fill -5 -1 19 -8 -1 18 air destroy
execute if score #level3301 localtimer matches 5 run fill -6 -1 17 -7 -1 17 air destroy
execute if score #level3301 localtimer matches 120 run fill -5 -1 19 -8 -1 17 gray_stained_glass replace air
execute if score #level3301 localtimer matches 120 run setblock -5 2 14 dark_oak_pressure_plate
execute if score #level3301 localtimer matches 120 run scoreboard players set #level3301 Active 0

execute if score #level3301 Active matches 1 run scoreboard players add #level3301 localtimer 1 
execute if score #level3301 Active matches 0 run scoreboard players set #level3301 localtimer 0 

execute as @a[x=-5,y=-19,z=15,dx=0,dy=0,dz=0] run effect give @s slow_falling 1 0 true

execute as @a[x=-3,y=-8,z=21,dx=0,dy=0,dz=0] run scoreboard players set #level3302 Active 1
execute if score #level3302 localtimer matches 1 run fill -3 -7 21 -2 -7 22 air destroy
execute if score #level3302 localtimer matches 15 run fill -3 -7 21 -2 -7 22 cracked_polished_blackstone_bricks
execute if score #level3302 localtimer matches 15 run scoreboard players set #level3302 Active 0

execute if score #level3302 Active matches 1 run scoreboard players add #level3302 localtimer 1 
execute if score #level3302 Active matches 0 run scoreboard players set #level3302 localtimer 0

execute if block -16 1 14 dark_oak_pressure_plate[powered=true] run scoreboard players set #level3303 Active 1
execute if score #level3303 localtimer matches 1 run setblock -16 1 14 air destroy
execute if score #level3303 localtimer matches 5 run setblock -18 -2 18 bone_block
execute positioned -18 -2 18 if score #level3303 localtimer matches 5 run playsound minecraft:block.bone_block.place master @a[distance=..10] -18 -2 18 1000
execute if score #level3303 localtimer matches 10 run setblock -18 -1 18 bone_block
execute positioned -18 -1 18 if score #level3303 localtimer matches 10 run playsound minecraft:block.bone_block.place master @a[distance=..10] -18 -1 18 1000
execute if score #level3303 localtimer matches 90 run setblock -18 -1 18 air destroy
execute positioned -18 -1 18 if score #level3303 localtimer matches 90 run playsound minecraft:block.bone_block.break master @a[distance=..10] -18 -1 18 1000
execute if score #level3303 localtimer matches 95 run setblock -18 -2 18 air destroy
execute positioned -18 -2 18 if score #level3303 localtimer matches 95 run playsound minecraft:block.bone_block.break master @a[distance=..10] -18 -2 18 1000
execute if score #level3303 localtimer matches 100 run setblock -16 1 14 dark_oak_pressure_plate
execute if score #level3303 localtimer matches 100 run scoreboard players set #level3303 Active 0

execute if score #level3303 Active matches 1 run scoreboard players add #level3303 localtimer 1 
execute if score #level3303 Active matches 0 run scoreboard players set #level3303 localtimer 0

execute if block -12 5 22 dark_oak_pressure_plate[powered=true] run scoreboard players set #level3304 Active 1
execute if block -12 5 21 dark_oak_pressure_plate[powered=true] run scoreboard players set #level3304 Active 1
execute if score #level3304 localtimer matches 1 run fill -12 5 22 -12 5 21 air destroy
execute if score #level3304 localtimer matches 1 run setblock -15 5 22 dark_oak_planks
execute if score #level3304 localtimer matches 20 run setblock -18 6 21 dark_oak_planks
execute if score #level3304 localtimer matches 40 run setblock -19 7 18 dark_oak_planks
execute if score #level3304 localtimer matches 40 run setblock -15 5 22 air destroy
execute if score #level3304 localtimer matches 60 run setblock -17 8 15 dark_oak_planks
execute if score #level3304 localtimer matches 60 run setblock -18 6 21 air destroy
execute if score #level3304 localtimer matches 80 run setblock -14 9 16 dark_oak_planks
execute if score #level3304 localtimer matches 80 run setblock -19 7 18 air destroy
execute if score #level3304 localtimer matches 100 run setblock -17 8 15 air destroy
execute if score #level3304 localtimer matches 120 run setblock -14 9 16 air destroy
execute if score #level3304 localtimer matches 120 run fill -12 5 22 -12 5 21 dark_oak_pressure_plate
execute if score #level3304 localtimer matches 120 run scoreboard players set #level3304 Active 0

execute if score #level3304 Active matches 1 run scoreboard players add #level3304 localtimer 1 
execute if score #level3304 Active matches 0 run scoreboard players set #level3304 localtimer 0

execute as @a[x=-3,y=10,z=21,dx=1,dy=1,dz=1] run scoreboard players set #level3305 Active 1
execute if score #level3305 localtimer matches 1 run fill -3 9 21 -2 9 22 air destroy
execute if score #level3305 localtimer matches 100 run fill -3 9 21 -2 9 22 cracked_polished_blackstone_bricks
execute if score #level3305 localtimer matches 100 run scoreboard players set #level3305 Active 0

execute if score #level3305 Active matches 1 run scoreboard players add #level3305 localtimer 1 
execute if score #level3305 Active matches 0 run scoreboard players set #level3305 localtimer 0

execute if block 12 -18 17 light_weighted_pressure_plate[power=1] run scoreboard players set #snake3 Active 1

function core:mechanics/snake/snake3checker

execute if score #snake3 Active matches 1 run scoreboard players add #snake3 localtimer 1 
execute if score #snake3 Active matches 0 run scoreboard players set #snake3 localtimer 0 

execute as @a[x=4,y=-1,z=20,dx=0,dy=1,dz=0,tag=!Condenser] run title @s actionbar {"text":"Condenser boots equipped!","bold":true}
execute as @a[x=4,y=-1,z=20,dx=0,dy=1,dz=0,tag=!Condenser] run playsound minecraft:item.armor.equip_generic master @s ~ ~ ~ 1000
execute as @a[x=4,y=-1,z=20,dx=0,dy=1,dz=0,tag=!Condenser] run tag @s add Condenser

clear @a[nbt=!{equipment:{feet:{id:'minecraft:leather_boots'}}}] minecraft:leather_boots
execute as @a[tag=Condenser] run item replace entity @s armor.feet with leather_boots[custom_name={"bold":true,"color":"aqua","text":"Condenser Boots"},enchantments={"minecraft:binding_curse":1}] 1
execute as @a[tag=Condenser] at @s run function core:mechanics/condenser

execute as @a at @s if entity @s[y=-3,dy=0] run tag @s remove Condenser
execute as @a[x=16,y=3,z=10,dx=1,dy=2,dz=0] run tag @s remove Condenser
execute as @a at @s if entity @s[y=-3,dy=0] run clear @s leather_boots
execute as @a[x=16,y=3,z=10,dx=1,dy=2,dz=0] run clear @s leather_boots
execute as @a at @s if entity @s[y=-3,dy=0] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 cave_air replace powder_snow
execute as @a[x=16,y=3,z=10,dx=1,dy=2,dz=0] run fill 12 -1 13 15 1 15 minecraft:cave_air replace minecraft:powder_snow
fill 18 -9 22 15 -9 29 minecraft:powder_snow replace cave_air

#Condenser Particle Lists
execute if entity @a[tag=Condenser] run scoreboard players add #level34 localtimer 1
execute if score #level34 localtimer matches 20 run particle wax_off 14 -2 21 0.5 0.5 0.5 0.3 30
execute if score #level34 localtimer matches 20 run particle wax_off 14 0 15 0.5 0.5 0.5 0.3 30
execute if score #level34 localtimer matches 20 run particle wax_off 7 0 15 0.5 0.5 0.5 0.3 30
execute if score #level34 localtimer matches 20 run particle wax_off 8 2 21 0.5 0.5 0.5 0.3 30
execute if score #level34 localtimer matches 20 run particle wax_off 13 4 20 0.5 0.5 0.5 0.3 30
execute if score #level34 localtimer matches 20 run scoreboard players set #level34 localtimer 0

execute as @a[x=16,y=7,z=-5,dx=0,dy=1,dz=0,tag=!Brush] run title @s actionbar {"text":"Brush acquired!","bold":true}
execute as @a[x=16,y=7,z=-5,dx=0,dy=1,dz=0,tag=!Brush] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1000
execute as @a[x=16,y=7,z=-5,dx=0,dy=1,dz=0,tag=!Brush] run tag @s add Brush
clear @a[nbt=!{Inventory:[{id:"minecraft:brush",Slot:4b}]}] minecraft:brush
execute as @a[tag=Brush] run item replace entity @s hotbar.4 with brush[can_break=[{blocks:"suspicious_sand"}],custom_name={"bold":true,"color":"aqua","text":"Brush"}] 1

execute as @a[x=13,y=7,z=-2,dx=1,dy=2,dz=0] run tag @s remove Brush
execute as @a[x=13,y=7,z=-2,dx=1,dy=2,dz=0] run clear @s brush
function core:mechanics/sand/sandchecker

execute if score #level35 localtimer matches 1 run fill 29 -2 -2 24 -2 -6 air replace sandstone_slab[type=top]
execute if score #level35 localtimer matches 1 run tag @a remove Brush
execute if score #level35 localtimer matches 1 run clear @a brush
execute if score #level35 localtimer matches 200 run fill 29 -2 -2 24 -2 -6 sandstone_slab[type=top] replace air
execute if score #level35 localtimer matches 200 run function core:mechanics/sand/sandreset
execute if score #level35 localtimer matches 200 run scoreboard players set #level35 Active 0

execute if score #level35 Active matches 1 run scoreboard players add #level35 localtimer 1 
execute if score #level35 Active matches 0 run scoreboard players set #level35 localtimer 0

execute as @a[x=21,y=-35,z=-9,dx=10,dy=-2,dz=9] run effect give @s slow_falling 1 0 true
execute as @a[x=21,y=-39,z=-9,dx=10,dy=1,dz=9] run effect clear @s slow_falling
execute as @a[x=21,y=-39,z=-9,dx=10,dy=1,dz=9] run spawnpoint @s 27 -40 -4 
execute as @a[x=21,y=-39,z=-9,dx=10,dy=1,dz=9,tag=!Camel] run summon camel 34 -43 4 {Tags:["AquaParkour"],equipment:{saddle:{id:"minecraft:saddle",Count:1b}}}
execute as @a[x=21,y=-39,z=-9,dx=10,dy=1,dz=9,tag=!Camel] run tag @s add Camel

execute as @e[type=camel] at @s positioned ~ ~1 ~ unless entity @s[x=30,y=-44,z=-9,dy=3,dz=19,dx=12] unless entity @a[distance=..2] run function core:mechanics/killcamel
execute as @e[type=camel,nbt={Health:1f}] at @s run function core:mechanics/killcamel
execute as @e[type=camel] at @s if predicate core:on_fire run function core:mechanics/killcamel

execute if block 19 8 -13 light_weighted_pressure_plate[power=1] run scoreboard players set #level36 Active 1
execute if score #level36 localtimer matches 1 run setblock 19 8 -13 air
execute if score #level36 localtimer matches 1 run fill 10 4 -10 11 4 -9 air destroy
execute if score #level36 localtimer matches 160 run fill 10 4 -10 11 4 -9 cyan_stained_glass
execute if score #level36 localtimer matches 160 run setblock 19 8 -13 light_weighted_pressure_plate
execute if score #level36 localtimer matches 160 run scoreboard players set #level36 Active 0

execute if score #level36 Active matches 1 run scoreboard players add #level36 localtimer 1 
execute if score #level36 Active matches 0 run scoreboard players set #level36 localtimer 0

execute if block -3 29 6 warped_button[powered=true] if score #minecart Active matches 0 run summon minecart -3 28 6 {Invulnerable:1b,Tags:["AquaParkour"]}
execute if block -3 29 6 warped_button[powered=true] run scoreboard players set #minecart Active 1
execute if block -3 29 6 warped_button[powered=false] run scoreboard players set #minecart Active 0

execute as @a[x=3,y=43,z=-8,dx=0,dy=0,dz=0] run effect give @s levitation 1 8 true
execute as @a[x=2,y=43,z=-8,dx=0,dy=1,dz=0] unless entity @a[x=3,y=43,z=-8,dx=0,dy=0,dz=0] run effect clear @s levitation

execute as @a[x=-3,y=31,z=3,dx=0,dy=0,dz=0] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-3,y=31,z=3,dx=0,dy=0,dz=0] at @s run tp @s -8 50 -2 -90 0

execute if block -3 54 -6 birch_pressure_plate[powered=true] run scoreboard players set #snake4 Active 1

function core:mechanics/snake/snake4checker

execute if score #snake4 Active matches 1 run scoreboard players add #snake4 localtimer 1 
execute if score #snake4 Active matches 0 run scoreboard players set #snake4 localtimer 0 

execute as @a[x=0,y=84,z=6,dx=0,dy=1,dz=0,tag=!Elytra] run title @s actionbar {"text":"Elytra equipped!","color":"gold","bold":true} 
execute as @a[x=0,y=84,z=6,dx=0,dy=1,dz=0,tag=!Elytra] run tag @s add Elytra
clear @a[nbt=!{equipment:{chest:{id:'minecraft:elytra'}}}] minecraft:elytra
execute as @a[tag=Elytra] run item replace entity @s armor.chest with elytra[custom_name={"bold":true,"color":"aqua","text":"Elytra"},enchantments={"minecraft:binding_curse":1}] 1
execute as @a[tag=Elytra] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ diamond_block unless block ~ ~-1 ~ light_blue_concrete_powder unless block ~ ~-1 ~ cyan_concrete_powder run function core:mechanics/elytra/elytratp
execute as @a[tag=Elytra] at @s if entity @s[y=14,dy=-78] run function core:mechanics/elytra/elytratp
execute as @a[tag=Elytra,x=18,y=16,z=-108,dx=8,dy=5,dz=6] run function core:mechanics/elytra/elytrasmack

execute as @a[x=22,y=16,z=-105,dx=2,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=22,y=16,z=-105,dx=2,dy=2,dz=0] at @s run function core:triggers/reset

execute as @a[x=35,y=5,z=-93,dx=2,dy=2,dz=0] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=35,y=5,z=-93,dx=2,dy=2,dz=0] run function core:start/entermap

execute as @a[x=-38,y=-11,z=-64,dx=0,dy=0,dz=0] at @s run tp @s ~154 ~ ~-59 ~-90 ~
execute as @a[x=107,y=-5,z=-104,dx=0,dy=0,dz=0] unless entity @a[x=107,y=-5,z=-105,dx=0,dy=0,dz=0] at @s run tp @s ~-133 ~-3 ~44 ~-90 ~
execute as @a[x=-55,y=-25,z=15,dx=10,dz=8,dy=1] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-55,y=-25,z=15,dx=10,dz=8,dy=1] run tp @s -59 -9 25 -60 0

execute as @a[x=-65,y=0,z=10,dx=5,dy=-1,dz=11] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=-65,y=0,z=10,dx=5,dy=-1,dz=11] run tp @s -65 9 10 -10 0

execute as @a[x=1,y=-34,z=16,dx=6,dy=0,dz=6] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=1,y=-34,z=16,dx=6,dy=0,dz=6] run tp @s 9 -30 18 180 0

execute as @a[x=9,y=-37,z=6,dx=12,dy=0,dz=10] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[x=9,y=-37,z=6,dx=12,dy=0,dz=10] run tp @s 11 -30 24 -120 0

execute as @a[x=3,y=10,z=3,dx=0,dy=1,dz=0,tag=!Tower] run function core:checkpoint
execute as @a[x=3,y=10,z=3,dx=0,dy=1,dz=0,tag=!Tower] run spawnpoint @s 2 10 3 90
execute as @a[x=3,y=10,z=3,dx=0,dy=1,dz=0,tag=!Tower] run tag @s add Tower

execute as @a[tag=Tower] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ water if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ sea_pickle if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ seagrass if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ horn_coral if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ horn_coral_fan if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ tube_coral if entity @s[y=2,dy=-3] run kill @s
execute as @a[tag=Tower] at @s if block ~ ~ ~ tube_coral_fan if entity @s[y=2,dy=-3] run kill @s

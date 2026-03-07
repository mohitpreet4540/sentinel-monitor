execute as @a[tag=!Checkpoint] at @s if block ~ ~ ~ light_weighted_pressure_plate[power=1] run function core:checkpoint
execute as @a at @s if block ~ ~ ~ air run tag @s remove Checkpoint

effect give @a saturation infinite 255 true

execute as @a at @s if block ~ ~ ~ lava run effect clear @s minecraft:fire_resistance
execute as @a at @s if block ~ ~ ~ air unless block ~ ~-1 ~ magma_block unless block ~ ~ ~ campfire unless block ~ ~ ~ soul_campfire run effect give @s minecraft:fire_resistance infinite 255 true

execute as @a[team=Playing] at @s run function core:timer/timertick

#Triggers

execute as @a at @s if score @s restart >= #1 1 run function core:triggers/restart
execute as @a at @s if score @s reset >= #1 1 run function core:triggers/reset
execute as @a at @s if score @s showrank >= #1 1 run function core:triggers/showrank

scoreboard players enable @a restart
scoreboard players enable @a reset
scoreboard players enable @a showrank

kill @e[type=tnt,nbt={fuse:1s}]

execute as @a[x=16,y=15,z=-119,dx=0,dy=9,dz=8,team=!Winners] at @s run function core:end/endgame

execute as @a[nbt={equipment:{head:{id:'minecraft:iron_helmet'}}},team=Playing] at @s run kill @s
execute unless entity @a[nbt={Inventory:[{Slot:hotbar.8,id:"minecraft:iron_helmet"}]},team=Playing] run clear @s iron_helmet

execute unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",}]}] run clear @s iron_helmet

execute as @a at @s if score @s deaths matches 1 run function core:death

clear @a[nbt=!{Inventory:[{id:"minecraft:iron_helmet",Slot:8b}]}] minecraft:iron_helmet
item replace entity @a[team=Playing] hotbar.8 with iron_helmet[custom_name={"bold":true,"color":"red","text":"Back to checkpoint"}] 1

function core:levitation
function core:mechanics/main
function core:advancements

tp @a[tag=!AquaParkour] 44 5 -108 30 0
execute as @a[tag=!AquaParkour] run attribute @s minecraft:burning_time base set 0.001
tag @a add AquaParkour
kill @e[type=!tnt,type=!falling_block,type=!small_fireball,tag=!AquaParkour]

execute as @a[x=29,y=2,z=-120,dx=23,dy=5,dz=19] run team join Lobby @s
execute as @a[team=Lobby] at @s if block ~ ~ ~ water unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ water unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ seagrass unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ seagrass unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ sea_pickle unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ sea_pickle unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral_fan unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral_fan unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral_fan unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral_fan unless entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run function core:triggers/reset

execute as @a[team=Lobby] at @s if block ~ ~ ~ water if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ water if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ seagrass if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ seagrass if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ sea_pickle if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ sea_pickle if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral_fan if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ tube_coral_fan if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral_fan if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1000
execute as @a[team=Lobby] at @s if block ~ ~ ~ horn_coral_fan if entity @a[x=49,y=3,z=-105,dx=16,dy=10,dz=17] run tp @s 51 5 -105 -45 0


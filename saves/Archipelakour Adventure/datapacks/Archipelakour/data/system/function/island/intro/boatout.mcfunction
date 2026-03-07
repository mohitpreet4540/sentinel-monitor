execute as @e[tag=rblue,tag=startroute,type=armor_stand] at @s run tag @a[distance=..2,tag=rblue] add bsouth
execute as @e[tag=rblue,tag=startroute,type=armor_stand] at @s run tag @a[distance=..2,tag=rblue] add boating

execute as @e[tag=rred,tag=startroute,type=armor_stand] at @s run tag @a[distance=..2,tag=rred] add beast
execute as @e[tag=rred,tag=startroute,type=armor_stand] at @s run tag @a[distance=..2,tag=rred] add boating

execute as @e[tag=end,tag=rblue] at @s run tag @a[distance=..2] remove rblue
execute as @e[tag=end,tag=rred] at @s run tag @a[distance=..2] remove rred

execute as @e[tag=rblue,tag=getroute,type=armor_stand] at @s run tag @a[tag=rred,distance=..2] remove rred
execute as @e[tag=rblue,tag=getroute,type=armor_stand] at @s run tellraw @a[distance=..2,tag=!rblue] [{"text": "You've gone with the ","color": "white"},{"text": "Blue Route","color": "blue"},{"text": "!","color": "white"}]
execute as @e[tag=rblue,tag=getroute,type=armor_stand] at @s if entity @p[tag=!rblue] run playsound entity.experience_orb.pickup master @a[distance=..2] ~ ~ ~ 100 1 1
execute as @e[tag=rblue,tag=getroute,type=armor_stand] at @s run tag @a[distance=..2,tag=!rblue] add rblue

execute as @e[tag=rred,tag=getroute,type=armor_stand] at @s run tag @a[tag=rblue,distance=..2] remove rblue
execute as @e[tag=rred,tag=getroute,type=armor_stand] at @s run tellraw @a[distance=..2,tag=!rred] [{"text": "You've gone with the ","color": "white"},{"text": "Red Route","color": "red"},{"text": "!","color": "white"}]
execute as @e[tag=rred,tag=getroute,type=armor_stand] at @s if entity @p[tag=!rred] run playsound entity.experience_orb.pickup master @a[distance=..2] ~ ~ ~ 100 1 1
execute as @e[tag=rred,tag=getroute,type=armor_stand] at @s run tag @a[distance=..2,tag=!rred] add rred

execute as @e[tag=rred,tag=startroute,type=armor_stand] at @s positioned ~ ~ ~-1 run tellraw @a[tag=rblue,dx=-1,dy=2,dz=2] [{"text": "Go to the ","color": "white"},{"text": "Blue Pier","color": "blue"},{"text": "!","color": "white"}]
execute as @e[tag=rred,tag=startroute,type=armor_stand] at @s positioned ~ ~ ~-1 run tellraw @a[tag=!rblue,tag=!rred,dx=-1,dy=2,dz=2] [{"text": "Go pick a route first!","color": "red"}]
execute as @e[tag=rred,tag=startroute,type=armor_stand] at @s positioned ~ ~ ~-1 run execute as @a[tag=!rred,dx=-1,dy=2,dz=2] at @s run tp @s ~-1 ~ ~
execute as @e[tag=rblue,tag=startroute,type=armor_stand] at @s positioned ~-1 ~ ~ run tellraw @a[tag=rred,dx=2,dy=2,dz=-1] [{"text": "Go to the ","color": "white"},{"text": "Red Pier","color": "red"},{"text": "!","color": "white"}]
execute as @e[tag=rblue,tag=startroute,type=armor_stand] at @s positioned ~-1 ~ ~ run tellraw @a[tag=!rblue,tag=!rred,dx=2,dy=2,dz=-1] [{"text": "Go pick a route first!","color": "red"}]
execute as @e[tag=rblue,tag=startroute,type=armor_stand] at @s positioned ~-1 ~ ~ run execute as @a[tag=!rblue,dx=2,dy=2,dz=-1] at @s run tp @s ~ ~ ~-1

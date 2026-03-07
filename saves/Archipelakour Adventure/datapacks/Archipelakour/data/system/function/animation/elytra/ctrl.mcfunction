#Keep on Route
execute as @a[x=310,y=-56,z=531,dx=1,dy=35,dz=133,tag=elytra] at @s run tp @s 312 ~ ~
execute as @a[x=327,y=-56,z=531,dx=1,dy=35,dz=133,tag=elytra] at @s run tp @s 326 ~ ~
execute as @a[x=310,y=-21,z=531,dx=18,dy=2,dz=133,tag=elytra] at @s run tp @s ~ -27 ~
execute as @a[x=310,y=-56,z=528,dx=18,dy=35,dz=2,tag=elytra] at @s run tp @s ~ ~ 531
execute as @a[x=310,y=-56,z=664,dx=18,dy=35,dz=2,tag=elytra] at @s run tp @s ~ ~ 663

execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run clear @s elytra
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run spawnpoint @s 319 -55 661
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run particle totem_of_undying 319 -55.5 661 .5 .5 .5 1 100 force
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 100 1 1
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run tellraw @s [{"text": "[!] Checkpoint [!]","color": "green"}]
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run effect give @s instant_health 1 10 true
execute as @a[x=317,y=-56,z=657,dx=4,dy=30,dz=6,tag=elytra] at @s run tag @s remove elytra
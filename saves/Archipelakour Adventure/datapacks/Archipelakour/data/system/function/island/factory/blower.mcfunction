scoreboard players add .blower factory 1

execute if score .blower factory matches 41.. run scoreboard players set .blower factory 1

execute if score .blower factory matches 1..10 run particle dust{color:[0.5,0.5,0.5],scale:1.5} 296 -49.5 935 1 .2 .2 1 10 force
execute if score .blower factory matches 1..10 run particle dust{color:[0.5,0.5,0.5],scale:1.5} 296 -49.5 933 1 .2 .2 1 10 force
execute if score .blower factory matches 1..10 run particle dust{color:[0.5,0.5,0.5],scale:1.5} 296 -49.5 931 1 .2 .2 1 10 force

execute as @a[x=295,y=-51,z=931,dx=1,dy=1] at @s if score .blower factory matches 1..10 run tp @s ~.3 ~ ~
execute as @a[x=295,y=-51,z=933,dx=1,dy=1] at @s if score .blower factory matches 1..10 run tp @s ~.3 ~ ~
execute as @a[x=295,y=-51,z=935,dx=1,dy=1] at @s if score .blower factory matches 1..10 run tp @s ~.3 ~ ~

execute if score .blower factory matches 1..10 run setblock 295 -48 937 minecraft:waxed_exposed_copper_bulb[lit=true]
execute if score .blower factory matches 11.. run setblock 295 -48 937 minecraft:waxed_exposed_copper_bulb[lit=false]
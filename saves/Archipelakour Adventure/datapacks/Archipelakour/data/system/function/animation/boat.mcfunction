#Boating Animation
#Giving the tag
execute as @e[tag=starter,y_rotation=0] at @s run tag @a[distance=..2] add bsouth
execute as @e[tag=starter,y_rotation=90] at @s run tag @a[distance=..2] add bwest
execute as @e[tag=starter,y_rotation=180] at @s run tag @a[distance=..2] add bnorth
execute as @e[tag=starter,y_rotation=270] at @s run tag @a[distance=..2] add beast
execute as @e[tag=starter] at @s run tag @a[distance=..2] add boating

#Moving
execute as @a[tag=bsouth] at @s run tp @s ~ -55 ~1
execute as @a[tag=bwest] at @s run tp @s ~-1 -55 ~
execute as @a[tag=bnorth] at @s run tp @s ~ -55 ~-1
execute as @a[tag=beast] at @s run tp @s ~1 -55 ~

#Make Sure Player Stays in Place
execute as @e[tag=starter,y_rotation=0] at @s positioned ~-1 ~ ~ run execute as @a[tag=bsouth,dy=3,dz=150,dx=-6] at @s run tp @s ~.25 ~ ~
execute as @e[tag=starter,y_rotation=0] at @s positioned ~1 ~ ~ run execute as @a[tag=bsouth,dy=3,dz=150,dx=6] at @s run tp @s ~-.25 ~ ~
execute as @e[tag=starter,y_rotation=90] at @s positioned ~ ~ ~-1 run execute as @a[tag=bwest,dy=3,dx=-150,dz=-6] at @s run tp @s ~ ~ ~.25
execute as @e[tag=starter,y_rotation=90] at @s positioned ~ ~ ~1 run execute as @a[tag=bwest,dy=3,dx=-150,dz=6] at @s run tp @s ~ ~ ~-.25
execute as @e[tag=starter,y_rotation=180] at @s positioned ~-1 ~ ~ run execute as @a[tag=bnorth,dy=3,dz=-150,dx=-6] at @s run tp @s ~.25 ~ ~
execute as @e[tag=starter,y_rotation=180] at @s positioned ~1 ~ ~ run execute as @a[tag=bnorth,dy=3,dz=-150,dx=6] at @s run tp @s ~-.25 ~ ~
execute as @e[tag=starter,y_rotation=270] at @s positioned ~ ~ ~-1 run execute as @a[tag=beast,dy=3,dx=150,dz=-6] at @s run tp @s ~ ~ ~.25
execute as @e[tag=starter,y_rotation=270] at @s positioned ~ ~ ~1 run execute as @a[tag=beast,dy=3,dx=150,dz=6] at @s run tp @s ~ ~ ~-.25

#tp at end
execute as @e[tag=end,y_rotation=0] at @s positioned ~-8 ~ ~-1 run tp @a[dx=16,dy=2,dz=2,tag=boating] @s
execute as @e[tag=end,y_rotation=90] at @s positioned ~1 ~ ~-8 run tp @a[dz=16,dy=2,dx=2,tag=boating] @s
execute as @e[tag=end,y_rotation=180] at @s positioned ~-8 ~ ~1 run tp @a[dx=16,dy=2,dz=2,tag=boating] @s
execute as @e[tag=end,y_rotation=270] at @s positioned ~-1 ~ ~-8 run tp @a[dz=16,dy=2,dx=2,tag=boating] @s
execute as @e[tag=end] at @s run tp @a[tag=boating,distance=..2] ~ ~ ~ ~180 5

#Checkpoint at end
execute as @e[tag=end] at @s if entity @p[distance=..2,tag=boating] run particle totem_of_undying ~ ~ ~ .5 .5 .5 1 100 force
execute as @e[tag=end] at @s if entity @p[distance=..2,tag=boating] run spawnpoint @a[distance=..3] ~ ~ ~ ~180
execute as @e[tag=end] at @s if entity @p[distance=..2,tag=boating] run playsound entity.experience_orb.pickup master @a[distance=..5] ~ ~ ~ 100 1 1
execute as @e[tag=end] at @s if entity @p[distance=..2,tag=boating] run tellraw @a[distance=..3] [{"text": "[!] Checkpoint [!]","color": "green"}]
execute as @e[tag=end] at @s if entity @p[distance=..2,tag=boating] run effect give @a[distance=..3] instant_health 1 10 true

#Removing Tag at end
execute as @e[tag=end] at @s run tag @a[distance=..2] remove bsouth
execute as @e[tag=end] at @s run tag @a[distance=..2] remove bwest
execute as @e[tag=end] at @s run tag @a[distance=..2] remove bnorth
execute as @e[tag=end] at @s run tag @a[distance=..2] remove beast
execute as @e[tag=end] at @s run tag @a[distance=..2] remove boating

execute as @e[tag=end] at @s run gamemode adventure @a[distance=..2]
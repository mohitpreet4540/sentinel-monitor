execute as @a[distance=..2,tag=!cp] run particle totem_of_undying ~ ~ ~ .5 .5 .5 1 100 force
execute as @a[distance=..2,tag=!cp] run spawnpoint @a[distance=..2] ~ ~ ~ ~180
execute as @a[distance=..2,tag=!cp] run playsound entity.experience_orb.pickup master @a[distance=..5] ~ ~ ~ 100 1 1
execute as @a[distance=..2,tag=!cp] run tellraw @a[distance=..2] [{"text": "[!] Checkpoint [!]","color": "green"}]
execute as @a[distance=..2,tag=!cp] run effect give @a[distance=..2] instant_health 1 10 true

tag @a[distance=..2] add cp
execute as @a[distance=2..4] at @s run tag @s remove cp
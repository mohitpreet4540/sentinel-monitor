#Summon Shulkers:
#summon minecraft:armor_stand ~ ~1 ~ {Passengers:[{id:"minecraft:shulker",Color:7,Silent:1b,NoAI:1b,Invulnerable:1b}],Tags:["ele1"],NoGravity:1b}

execute as @e[tag=ele1,type=minecraft:armor_stand] at @s if score .elevator factory matches 1 run tp @s ~ -58 ~

scoreboard players add .elevator factory 1
execute as @e[tag=ele1,type=armor_stand] at @s if score .elevator factory matches 2..36 run tp @s ~ ~.2 ~
execute as @e[tag=ele1,type=armor_stand] at @s if score .elevator factory matches 2..14 positioned ~ ~3 ~ run effect give @a[dy=1] levitation 1 5 true
execute if score .elevator factory matches 37..76 run fill 219 -48 951 219 -46 953 air
execute if score .elevator factory matches 76.. run scoreboard players set .elevator factory -1

fill 219 -55 951 219 -53 953 minecraft:white_stained_glass_pane
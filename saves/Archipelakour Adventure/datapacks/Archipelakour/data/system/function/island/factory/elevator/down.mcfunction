#Summon Shulkers:
#summon minecraft:armor_stand ~ ~1 ~ {Passengers:[{id:"minecraft:shulker",Color:7,Silent:1b,NoAI:1b,Invulnerable:1b}],Tags:["ele1"],NoGravity:1b}

execute as @e[tag=ele1,type=minecraft:armor_stand] at @s if score .elevator factory matches -1 run tp @s ~ -51 ~

scoreboard players remove .elevator factory 1
execute as @e[tag=ele1,type=armor_stand] at @s if score .elevator factory matches -71..-2 run tp @s ~ ~-.1 ~
execute if score .elevator factory matches ..-131 run scoreboard players set .elevator factory 0
fill 219 -48 951 219 -46 953 minecraft:white_stained_glass_pane
execute if score .elevator factory matches -76..-1 run fill 219 -55 951 219 -53 953 minecraft:white_stained_glass_pane
execute if score .elevator factory matches -76 run fill 219 -55 951 219 -53 953 air
scoreboard objectives add spectrig trigger
scoreboard objectives add hometrig trigger

scoreboard players enable @a spectrig
scoreboard players enable @a hometrig

execute as @a[team=!finish,scores={spectrig=1..}] run tellraw @s [{"text": "You do not have the permission to do that right now.","color": "red"}]
execute as @a[team=finish,scores={spectrig=1..}] run gamemode spectator

execute as @a[scores={spectrig=1..}] run scoreboard players reset @s spectrig

execute as @a[team=!finish,scores={hometrig=1..}] run tellraw @s [{"text": "You do not have the permission to do that right now.","color": "red"}]
execute as @a[team=finish,scores={hometrig=1..}] run function system:system/timer/reset

execute as @a[scores={hometrig=1..}] run scoreboard players reset @s hometrig
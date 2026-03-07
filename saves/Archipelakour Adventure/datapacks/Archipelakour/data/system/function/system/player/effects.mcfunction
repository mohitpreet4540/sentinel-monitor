#Killing
execute as @a[team=player,scores={timer=0..}] at @s if block ~ ~ ~ #system:water_element run effect give @s instant_damage 1 1 true
execute as @a[team=player,scores={timer=0..}] at @s if block ~ ~ ~ small_dripleaf[waterlogged=true] run effect give @s instant_damage 1 1 true
execute as @a[team=player,scores={timer=0..}] at @s if block ~ ~ ~ big_dripleaf[waterlogged=true] run effect give @s instant_damage 1 1 true
execute as @a[team=player,scores={timer=0..}] at @s if block ~ ~ ~ big_dripleaf_stem[waterlogged=true] run effect give @s instant_damage 1 1 true

execute as @a[team=player,scores={timer=0..}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 1 1 true

#End Void
execute as @a[x=50,y=-56,z=950,distance=..55,team=player,scores={timer=0..}] at @s if block ~ ~-1 ~ #system:void run effect give @s instant_damage 1 2 true

effect give @a saturation infinite 10 true
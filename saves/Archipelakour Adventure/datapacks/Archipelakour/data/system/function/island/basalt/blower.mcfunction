execute as @a[x=98,y=-55,z=815,dy=1] at @s unless entity @e[type=minecraft:firework_rocket,distance=..1] run summon minecraft:firework_rocket ~ ~.5 ~ {LifeTime:5,Motion:[0.0d,1.0d,0.0d],Silent:1b,active_effects:[{amplifier:0,duration:999999,id:"invisibility"}]}
execute as @a[x=98,y=-55,z=815,dy=1] at @s run ride @s mount @e[type=minecraft:firework_rocket,distance=..1,sort=nearest,limit=1]
execute as @a at @s if entity @e[type=minecraft:firework_rocket,distance=..1] run effect give @s minecraft:slow_falling 2 0 true
particle minecraft:cloud 98 -53.5 815 .02 1 0.2 .1 2 force
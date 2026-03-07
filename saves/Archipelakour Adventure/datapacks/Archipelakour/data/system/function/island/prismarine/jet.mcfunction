scoreboard objectives add prismarine dummy
scoreboard players add .jet prismarine 1
execute if score .jet prismarine matches 36.. run scoreboard players set .jet prismarine 1

execute if score .jet prismarine matches 1..7 run summon firework_rocket -1 -48.5 814 {ShotAtAngle:1b,Motion:[0d,0d,2d],LifeTime:5,Silent:1b}
execute if score .jet prismarine matches 1..7 run summon firework_rocket 1 -48.5 815 {ShotAtAngle:1b,Motion:[0d,0d,2d],LifeTime:5,Silent:1b}

execute if score .jet prismarine matches 1..3 run playsound item.firecharge.use block @a 0 -50 815 60 .9 1

execute if score .jet prismarine matches 1..10 run particle dust{color:[0.1,0.4,0.8],scale:1} -1 -48.5 816 .15 .15 2 1 100 force @a
execute if score .jet prismarine matches 1..10 run particle dust{color:[0.1,0.4,0.8],scale:1} 1 -48.5 816 .15 .15 2 1 100 force @a

execute as @a at @s positioned ~ ~1 ~ run ride @s mount @e[type=firework_rocket,distance=..2,sort=nearest,limit=1]
execute as @a at @s run ride @s mount @e[type=firework_rocket,distance=..2,sort=nearest,limit=1]

execute as @a[x=-7,y=-55,z=809,dx=16,dy=9,dz=20] at @s run effect clear @s slow_falling
#Global Stuff
function system:animation/boat
function system:system/player/effects
function system:animation/elytra/ctrl
execute as @e[type=armor_stand,tag=checkpoint] at @s run function system:system/checkpoint/activate

#Start
execute as @a[x=-1,y=-56,z=19,dx=2,dy=2,team=!player] at @s run function system:system/timer/start
function system:island/intro/dialogue

#Timer
execute as @a[team=player] at @s run function system:system/timer/timer
function system:system/setting/timedisplay

#Islands
# Intro
function system:island/intro/boatout
# Outpost
function system:island/outpost/gate
# Sonic
function system:island/sonic/effects
execute if entity @p[x=277,y=-57,z=778,dx=43,dy=16,dz=41] run function system:island/sonic/log
# Prismarine
execute if entity @p[x=-7,y=-55,z=809,dx=16,dy=9,dz=20] run function system:island/prismarine/jet
# Basalt
execute if entity @p[x=80,y=-55,z=791,dx=31,dy=10,dz=35] run function system:island/basalt/blower
execute if score .bsltcage factory matches 1..200 run function system:island/basalt/cagerst
# Quicksands
function system:island/quicksand
# Factory
#   Front Gate
    function system:island/factory/frontgate
#   Blower   
    execute if entity @p[x=294,y=-54,z=925,dx=5,dy=6,dz=15] run function system:island/factory/blower
#   Elevator & Power System
    function system:island/factory/elevator/elevator
#   Crane
    function system:island/factory/crane/power
#   Toxic Waste
    function system:island/factory/waste
# End Island
function system:island/end_land/bridge

#Island Count
execute if entity @p[team=player] run function system:system/player/island

#Finish
execute as @a[team=player,x=150,y=-30,z=1145,distance=..3] at @s run function system:system/timer/finish
execute as @a at @s if score @s finishanim matches -1..300 run function system:animation/finish
function system:system/player/trigger
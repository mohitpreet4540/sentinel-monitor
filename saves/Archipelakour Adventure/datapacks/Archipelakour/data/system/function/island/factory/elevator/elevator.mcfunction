execute if score .elevator factory matches 1..76 run function system:island/factory/elevator/up
execute if score .elevator factory matches -131..-1 run function system:island/factory/elevator/down

execute if block 222 -47 947 lever[powered=true] run function system:island/factory/elevator/power
execute if block 218 -47 954 polished_blackstone_button[powered=true] if block 222 -47 947 lever[powered=false] run tellraw @a[x=218,y=-48,z=952,distance=..5] [{"text": "Activate the Power Generator first!","color": "red"}]
execute if block 218 -47 954 polished_blackstone_button[powered=true] run setblock 218 -47 954 minecraft:polished_blackstone_button[face=wall,facing=west,powered=false]

execute if block 222 -47 947 lever[powered=false] run title @a[x=222,y=-47,z=947,distance=..4] actionbar [{"text": "Start Me Up!","color": "green"}]
execute if block 222 -47 947 lever[powered=false] run particle happy_villager 222 -46.9 947 .3 .3 .3 1 1 force
execute if block 222 -47 947 lever[powered=false] if score .elepower factory matches 1..600 run setblock 222 -47 947 minecraft:lever[face=floor,facing=east,powered=true]
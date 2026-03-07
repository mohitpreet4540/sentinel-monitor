scoreboard players add .bridge endisle 1
execute if score .bridge endisle matches 401.. run setblock 77 -50 991 crimson_button[face=floor,facing=west,powered=false]
execute if score .bridge endisle matches 401.. run scoreboard players set .bridge endisle 0

#Extending
execute if score .bridge endisle matches 1..5 run clone 58 -57 997 60 -57 997 62 -52 999
execute if score .bridge endisle matches 6..10 run clone 58 -57 997 60 -57 997 62 -52 1000
execute if score .bridge endisle matches 11..15 run clone 58 -57 997 60 -57 997 62 -52 1001
execute if score .bridge endisle matches 16..20 run clone 58 -57 997 60 -57 997 62 -52 1002
execute if score .bridge endisle matches 21..25 run clone 58 -57 997 60 -57 997 62 -52 1003
execute if score .bridge endisle matches 26..30 run clone 58 -57 997 60 -57 997 62 -52 1004

#Collapsing
execute if score .bridge endisle matches 371..375 run fill 62 -52 1004 64 -52 1004 air
execute if score .bridge endisle matches 376..380 run fill 62 -52 1003 64 -52 1003 air
execute if score .bridge endisle matches 381..385 run fill 62 -52 1002 64 -52 1002 air
execute if score .bridge endisle matches 386..390 run fill 62 -52 1001 64 -52 1001 air
execute if score .bridge endisle matches 391..395 run fill 62 -52 1000 64 -52 1000 air
execute if score .bridge endisle matches 396..400 run fill 62 -52 999 64 -52 999 air

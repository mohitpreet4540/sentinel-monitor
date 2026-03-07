scoreboard players add @s tick 1
execute if score @s tick matches 20 run function core:timer/tickreset
execute if score @s seconds matches 60 run function core:timer/secondreset
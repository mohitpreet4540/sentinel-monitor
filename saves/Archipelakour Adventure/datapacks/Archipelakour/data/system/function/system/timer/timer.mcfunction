#Increment (in tick for easier operations)
scoreboard players add @s timer 1

scoreboard players set #2 timer 2
scoreboard players set #20 timer 20
scoreboard players set #200 timer 200
scoreboard players set #1200 timer 1200
scoreboard players set #12000 timer 12000
scoreboard players set #72000 timer 72000

scoreboard players operation @s h = @s timer
scoreboard players operation @s h /= #72000 timer

scoreboard players operation @s tm = @s timer
scoreboard players operation @s tm %= #72000 timer
scoreboard players operation @s tm /= #12000 timer

scoreboard players operation @s m = @s timer
scoreboard players operation @s m %= #12000 timer
scoreboard players operation @s m /= #1200 timer

scoreboard players operation @s ts = @s timer
scoreboard players operation @s ts %= #1200 timer
scoreboard players operation @s ts /= #200 timer

scoreboard players operation @s s = @s timer
scoreboard players operation @s s %= #200 timer
scoreboard players operation @s s /= #20 timer

scoreboard players operation @s tenth = @s timer
scoreboard players operation @s tenth %= #20 timer
scoreboard players operation @s tenth /= #2 timer
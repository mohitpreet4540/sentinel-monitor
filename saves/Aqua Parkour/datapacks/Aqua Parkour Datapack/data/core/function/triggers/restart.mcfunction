function core:death
spawnpoint @s -37 0 -58 -30
tp @s -37 0 -58 -30 0
gamemode adventure @s
tag @s remove TimerGoing
team leave @s
scoreboard players reset @s Timer
tag @s remove RankShown
clear @s
scoreboard players set @s restart 0
scoreboard players reset @s Level
tag @s remove Tower
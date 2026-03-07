function core:death
spawnpoint @s 44 5 -108 30
tp @s 44 5 -108 30 0
gamemode adventure @s
tag @s remove TimerGoing
team join Lobby @s 
scoreboard players reset @s Timer
tag @s remove RankShown
clear @s
scoreboard players set @s reset 0
scoreboard players reset @s Level
advancement revoke @s everything
tag @s remove Tower
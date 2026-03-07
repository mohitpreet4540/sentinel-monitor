#Function to start the game
tp @s 6 -48 189 30 -5

scoreboard players set @s timer -300
spawnpoint @s -1 -56 192 25
team join player @s

gamemode adventure @s
scoreboard players set @s death 0

tellraw @a [{"selector": "@s","color": "#1bccd9"}, {"text": " has started their journey!", "color": "white"}]
scoreboard players enable @s skipcut
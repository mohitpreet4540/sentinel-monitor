scoreboard players operation @s sidetimer = @s timer
scoreboard players operation @s sidetimer /= #20 timer

execute if score @s[team=player] timer matches ..-1 run scoreboard players display numberformat @s sidetimer fixed {"text": "Starting...", "color": "gray", "italic": true}

execute if score @s[team=player] timer matches 0.. run scoreboard players display numberformat @s sidetimer styled {"color": "#1bccd9", "italic": false}

execute if entity @s[team=finish] run scoreboard players display numberformat @s sidetimer styled {"color": "green","italic": false}
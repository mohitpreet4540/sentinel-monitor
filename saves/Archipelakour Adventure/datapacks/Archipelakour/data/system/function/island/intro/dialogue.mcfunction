#Freeze
execute as @a[team=player] if score @s timer matches -282..-1 run tp @s 6 -56.4 189 30 -5

execute as @a[team=player] if score @s timer matches -295 run tellraw @s [{"text": "[Skip Cutscene]", "color": "green", "clickEvent": {"action": "run_command","value": "/trigger skipcut"}}]

execute as @a[team=player] if score @s timer matches -290 run tellraw @s [{"text": "[ItsPungpond98]", "color": "#34c5de"}, {"text": ": Hello there, visitor! Don't go any deeper; I'm afraid you'll drown.", "color": "white"}]
execute as @a[team=player] if score @s timer matches -215 run tellraw @s [{"text": "[Teddyishappyl]", "color": "blue"}, {"text": ": Yeah, water equals death here.", "color": "white"}]
execute as @a[team=player] if score @s timer matches -180 run tellraw @s [{"text": "[ItsPungpond98]", "color": "#34c5de"}, {"text": ": I guess you're trying to get around the Archipelakour.", "color": "white"}]
execute as @a[team=player] if score @s timer matches -120 run tellraw @s [{"text": "[ItsPungpond98]", "color": "#34c5de"}, {"text": ": Alright, you can freely pick your own path to get to the finish. All path leads to the finish, really.", "color": "white"}]
execute as @a[team=player] if score @s timer matches -60 run tellraw @s [{"text": "[Teddyishappyl]", "color": "blue"}, {"text": ": But the quickest path - is another story.", "color": "white"}]
execute as @a[team=player] if score @s timer matches 0 run tellraw @s [{"text": "[ItsPungpond98]", "color": "#34c5de"}, {"text": ": What are you waiting for? Get out of the water, and start your journey!", "color": "white"}]
execute as @a[team=player] if score @s timer matches 0 run playsound entity.player.levelup neutral @s ~ ~ ~ 100 .9 1

execute as @a[team=player,scores={skipcut=1..}] if score @s timer matches ..-10 run scoreboard players set @s timer -10
execute as @a[team=player,scores={skipcut=1..}] run scoreboard players reset @s skipcut
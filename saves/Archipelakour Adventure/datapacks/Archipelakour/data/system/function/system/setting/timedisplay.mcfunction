#Mode 0 => Hide All

#Mode 1 => Just Action Bar
execute as @a[team=player] if score timer setting matches 1..2 if score @s timer matches 0..72000 run title @s actionbar [{"score":{"name": "@s","objective": "death"},"color": "#1bccd9"},{"text":" ☠ | Time: ","color": "white"},{"score":{"name": "@s","objective": "tm"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "m"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "ts"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "s"},"color": "#1bccd9"},{"text": ".","color": "#1bccd9"},{"score":{"name": "@s","objective": "tenth"},"color": "#1bccd9"},{"text": " | Islands Left: ","color": "white"},{"score":{"name": "@s","objective": "isle"},"color": "#1bccd9"}]
execute as @a[team=player] if score timer setting matches 1..2 if score @s timer matches 72001.. run title @s actionbar [{"score":{"name": "@s","objective": "death"},"color": "#1bccd9"},{"text":" ☠ | Time: ","color": "white"},{"score":{"name": "@s","objective": "h"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "tm"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "m"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "ts"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "s"},"color": "#1bccd9"},{"text": ".","color": "#1bccd9"},{"score":{"name": "@s","objective": "tenth"},"color": "#1bccd9"},{"text": " | Islands Left: ","color": "white"},{"score":{"name": "@s","objective": "isle"},"color": "#1bccd9"}]

#Mode 2 => Actionbar + Island Scoreboard
execute if score timer setting matches 2 unless entity @p[team=player] run scoreboard objectives setdisplay sidebar
execute if score timer setting matches 2 if entity @p[team=player] run scoreboard objectives setdisplay sidebar isle

#Mode 3 => Just Timer Scoreboard
execute as @a[team=player] if score timer setting matches 3..4 run function system:system/timer/sidetimer
execute as @a[team=finish] if score timer setting matches 3..4 run function system:system/timer/sidetimer

execute if score timer setting matches 3..4 unless entity @p[team=!] run scoreboard objectives setdisplay sidebar
execute if score timer setting matches 3..4 if entity @p[team=!] run scoreboard objectives setdisplay sidebar sidetimer
execute unless score timer setting matches 2..4 run scoreboard objectives setdisplay sidebar

#Mode 4 => Actionbar + Timer Scoreboard
execute as @a[team=player] if score timer setting matches 4 if score @s timer matches 0..72000 run title @s actionbar [{"score":{"name": "@s","objective": "death"},"color": "#1bccd9"},{"text":" ☠ | Time: ","color": "white"},{"score":{"name": "@s","objective": "tm"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "m"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "ts"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "s"},"color": "#1bccd9"},{"text": ".","color": "#1bccd9"},{"score":{"name": "@s","objective": "tenth"},"color": "#1bccd9"},{"text": " | Islands Left: ","color": "white"},{"score":{"name": "@s","objective": "isle"},"color": "#1bccd9"}]
execute as @a[team=player] if score timer setting matches 4 if score @s timer matches 72001.. run title @s actionbar [{"score":{"name": "@s","objective": "death"},"color": "#1bccd9"},{"text":" ☠ | Time: ","color": "white"},{"score":{"name": "@s","objective": "h"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "tm"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "m"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "ts"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "s"},"color": "#1bccd9"},{"text": ".","color": "#1bccd9"},{"score":{"name": "@s","objective": "tenth"},"color": "#1bccd9"},{"text": " | Islands Left: ","color": "white"},{"score":{"name": "@s","objective": "isle"},"color": "#1bccd9"}]

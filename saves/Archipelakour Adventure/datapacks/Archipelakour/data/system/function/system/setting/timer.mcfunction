scoreboard players add time setting 1
execute if score time setting matches 5.. run scoreboard players set time setting 0

execute if score time setting matches 0 run tellraw @a[distance=..5] [{"text": "[Game]","color": "#1bccd9"},{"text": ": Everything is now hidden.","color": "white"}]
execute if score time setting matches 1 run tellraw @a[distance=..5] [{"text": "[Game]","color": "#1bccd9"},{"text": ": Displaying on Actionbar.","color": "white"}]
execute if score time setting matches 2 run tellraw @a[distance=..5] [{"text": "[Game]","color": "#1bccd9"},{"text": ": Displaying on Actionbar and Showing Remaining Island Scoreboard. ","color": "white"},{"text": "[Default]","color": "green"}]
execute if score time setting matches 3 run tellraw @a[distance=..5] [{"text": "[Game]","color": "#1bccd9"},{"text": ": Showing Individual Time Scoreboard.","color": "white"}]
execute if score time setting matches 4 run tellraw @a[distance=..5] [{"text": "[Game]","color": "#1bccd9"},{"text": ": Displaying on Actionbar and Individual Time Scoreboard.","color": "white"}]
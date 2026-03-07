scoreboard players add @s finishanim 1

execute if score @s finishanim matches 5 run summon firework_rocket 145 -30 1156 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1b,has_trail:1b,colors:[I;2651799,6719955],fade_colors:[I;2651799,6719955]}]}}}}
execute if score @s finishanim matches 5 run summon firework_rocket 154 -30 1156 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{fireworks:{flight_duration:2,explosions:[{shape:"large_ball",has_twinkle:1b,has_trail:1b,colors:[I;2651799,6719955],fade_colors:[I;2651799,6719955]}]}}}}

execute if score @s finishanim matches 1 run title @s title [{"text": "?:??:??.?","color": "gray"}]
execute if score @s finishanim matches 1 run title @s subtitle [{"text": "Time","color": "dark_gray"}]
execute if score @s finishanim matches 1..30 run playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 100 1 1

execute if score @s finishanim matches 35 run title @s title [{"score":{"name": "@s","objective": "h"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "tm"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "m"},"color": "#1bccd9"},{"text": ":","color": "#1bccd9"},{"score":{"name": "@s","objective": "ts"},"color": "#1bccd9"},{"score":{"name": "@s","objective": "s"},"color": "#1bccd9"},{"text": ".","color": "#1bccd9"},{"score":{"name": "@s","objective": "tenth"},"color": "#1bccd9"}]
execute if score @s finishanim matches 35 run title @s subtitle [{"text": "Time","color": "aqua"}]
execute if score @s finishanim matches 35 run playsound entity.player.levelup neutral @s ~ ~ ~ 100 .9 1

execute if score @s finishanim matches 96 run title @s title [{"text": "??","color": "gray"}]
execute if score @s finishanim matches 96 run title @s subtitle [{"text": "Rank","color": "dark_gray"}]
execute if score @s finishanim matches 96..125 run playsound entity.experience_orb.pickup neutral @s ~ ~ ~ 100 1 1

execute if score @s finishanim matches 130 run function system:system/timer/rank
execute if score @s finishanim matches 130 run title @s subtitle [{"text": "Rank","color": "aqua"}]
execute if score @s finishanim matches 130 run playsound block.anvil.use neutral @s ~ ~ ~ 100 .9 1

execute if score @s finishanim matches 190 run title @s times 20t 80t 20t
execute if score @s finishanim matches 190 run title @s title [{"text": "Thanks For Playing!","color": "#1bccd9"}]
execute if score @s finishanim matches 190 run title @s subtitle [{"text": "Map Made By ","color": "white"},{"text": "ItsPungpond98","color": "#34c5de"}]
execute if score @s finishanim matches 190 run playsound ui.button.click neutral @s ~ ~ ~ 100 1 1
execute if score @s finishanim matches 210 run title @s subtitle [{"text": "Built By ","color": "white"},{"text": "Teddyishappyl","color": "#1bccd9"}]
execute if score @s finishanim matches 210 run playsound ui.button.click neutral @s ~ ~ ~ 100 1 1
execute if score @s finishanim matches 230 run title @s subtitle [{"text": "Built By ","color": "white"},{"text": "Sk0ck0","color": "#1bccd9"}]
execute if score @s finishanim matches 230 run playsound ui.button.click neutral @s ~ ~ ~ 100 1 1
execute if score @s finishanim matches 250 run title @s subtitle [{"text": "Built By ","color": "white"},{"text": "Artem","color": "#1bccd9"}]
execute if score @s finishanim matches 250 run playsound ui.button.click neutral @s ~ ~ ~ 100 1 1
execute if score @s finishanim matches 270 run title @s subtitle [{"text": "Built By ","color": "white"},{"text": "Omar_6374","color": "#1bccd9"}]
execute if score @s finishanim matches 270 run playsound ui.button.click neutral @s ~ ~ ~ 100 1 1

execute if score @s finishanim matches 300.. run scoreboard players reset @s finishanim
execute if score @s finishanim matches 300.. run title @s reset
#Create Scoreboard (Auto)
scoreboard objectives add timer dummy
scoreboard objectives add tenth dummy
scoreboard objectives add s dummy
scoreboard objectives add ts dummy
scoreboard objectives add m dummy
scoreboard objectives add tm dummy
scoreboard objectives add h dummy

scoreboard objectives add sidetimer dummy
scoreboard objectives add setting dummy
scoreboard objectives add skipcut trigger

scoreboard objectives add finishanim dummy
scoreboard objectives add isle dummy
scoreboard objectives add death deathCount

team add player
team add finish

tellraw @p [{"text": "The Datapack Is Successfully Loaded!","color": "green"}]

scoreboard objectives add endisle dummy
execute if block 77 -50 991 crimson_button[powered=true] if score .bridge endisle matches 0 run scoreboard players set .bridge endisle 1
execute if score .bridge endisle matches 1..400 run setblock 77 -50 991 crimson_button[face=floor,facing=west,powered=true]

execute if score .bridge endisle matches 1..401 run function system:island/end_land/bridge_ani

execute if score .bridge endisle matches 1..40 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚❚","color": "green"}]
execute if score .bridge endisle matches 41..80 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚","color": "gray"}]
execute if score .bridge endisle matches 81..120 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚","color": "gray"}]
execute if score .bridge endisle matches 121..160 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 161..200 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 201..240 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 241..280 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 281..320 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 321..360 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚","color": "gray"}]
execute if score .bridge endisle matches 361..400 run title @a[x=51,y=-55,z=982,dx=39,dy=11,dz=27] actionbar [{"text": "Time Left: "},{"text": "❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚❚","color": "gray"}]

execute if score .bridge endisle matches 0 run title @a[x=77,y=-50,z=991,distance=..4] actionbar [{"text": "Start Me Up!","color": "green"}]
execute if score .bridge endisle matches 0 run particle happy_villager 77 -49.5 991 .3 .3 .3 1 1 force
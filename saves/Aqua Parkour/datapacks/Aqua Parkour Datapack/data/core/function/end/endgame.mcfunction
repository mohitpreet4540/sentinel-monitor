tag @s remove Elytra
tag @s remove Tower
team join Lobby @s
clear @s
function core:end/stoptimer
function core:end/endtitle
execute as @a[tag=!Rankshown,team=Winners] at @s run function core:end/finalranktime
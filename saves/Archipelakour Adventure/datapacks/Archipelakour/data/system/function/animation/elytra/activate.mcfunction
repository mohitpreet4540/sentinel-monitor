spawnpoint @a[distance=..3] ~ ~2 ~-1
tag @a[distance=..3] add elytra
item replace entity @a[distance=..3] armor.chest with elytra[enchantment_glint_override=true,enchantments={binding_curse:1}]
execute as @a[distance=..3] at @s run summon firework_rocket ~ ~ ~ {Motion:[0d,3d,0d],LifeTime:9}
execute as @a[distance=..3] at @s run ride @s mount @e[type=firework_rocket,sort=nearest,limit=1]
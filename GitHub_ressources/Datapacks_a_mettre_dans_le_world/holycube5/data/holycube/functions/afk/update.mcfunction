data modify storage holycube:temp updated set value 0b

execute unless data entity @s RootVehicle store success storage holycube:temp updated byte 1 run data modify storage holycube:temp copyafk[0].Pos set from entity @s Pos
execute if data entity @s RootVehicle store success storage holycube:temp updated byte 1 run data modify storage holycube:temp copyafk[0].Pos set from entity @s Rotation

execute if data storage holycube:temp {updated:1b} run data modify storage holycube:temp copyafk[0].ticks set from storage holycube:config afk_timer
execute if data storage holycube:temp {updated:1b} run tag @s remove hc_afk

execute if data storage holycube:temp {updated:0b} store result score @s hc5 run data get storage holycube:temp copyafk[0].ticks
execute if data storage holycube:temp {updated:0b} if score @s hc5 matches 1.. store result storage holycube:temp copyafk[0].ticks int 1 run scoreboard players remove @s hc5 1
execute if data storage holycube:temp {updated:0b} if score @s hc5 matches 0 if entity @s[tag=!hc_afk] run tellraw @a [{"color":"green","selector":"@s"}, {"color":"white","text":" est maintenant AFK."}]
execute if data storage holycube:temp {updated:0b} if score @s hc5 matches 0 run tag @s add hc_afk
team empty afk
team join afk @a[tag=hc_afk]
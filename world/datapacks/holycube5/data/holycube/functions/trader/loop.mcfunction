execute store result score #HC5# hc5 run data get storage holycube:timer trader
execute if score #HC5# hc5 matches 1.. store result storage holycube:timer trader int 1 run scoreboard players remove #HC5# hc5 1
execute if score #HC5# hc5 matches 0 run data modify storage holycube:timer trader set value 20

execute if score #HC5# hc5 matches 0 as @e[type=wandering_trader,sort=random,tag=!hc5trader] run function holycube:trader/update
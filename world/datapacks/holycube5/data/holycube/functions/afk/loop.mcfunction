execute store result score #HC5# hc5 run data get storage holycube:timer afk
execute if score #HC5# hc5 matches 1.. store result storage holycube:timer afk int 1 run scoreboard players remove #HC5# hc5 1
execute if score #HC5# hc5 matches 0 run data modify storage holycube:timer afk set value 20

execute if score #HC5# hc5 matches 0 as @a[nbt={playerGameType:0}] run function holycube:afk/cache
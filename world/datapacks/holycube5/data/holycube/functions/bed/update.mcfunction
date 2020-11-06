data modify storage holycube:temp sleepingCount set value 0
scoreboard players set #HC5Count# hc5 0

execute store result storage holycube:temp sleepingCount int 100 as @a[tag=!hc_afk,nbt={playerGameType:0,Dimension:"minecraft:overworld"}] unless data entity @s {SleepTimer:0s} run scoreboard players add #HC5Count# hc5 1
execute store result score #HC5Count# hc5 run data get storage holycube:temp sleepingCount 1

execute store result score #HC5Req# hc5 if entity @a[tag=!hc_afk,nbt={playerGameType:0,Dimension:"minecraft:overworld"}]
execute store result score #HC5BedReq# hc5 run data get storage holycube:config bed_req 1
scoreboard players operation #HC5Req# hc5 *= #HC5BedReq# hc5
scoreboard players reset #HC5BedReq# hc5

execute store success storage holycube:temp sleepChanged byte 1 run data modify storage holycube:cache bed.sleepingCount set from storage holycube:temp sleepingCount

execute unless data storage holycube:temp {sleepingCount:0} if data storage holycube:temp {sleepChanged:1b} run function holycube:bed/notify
execute if data storage holycube:temp {sleepingCount:0} if data storage holycube:temp {sleepChanged:1b} run bossbar set holycube:bed visible false

execute if score #HC5Count# hc5 matches 2.. if score #HC5Count# hc5 >= #HC5Req# hc5 run data modify storage holycube:cache bed.passTime set value 1b

#cleanup
data remove storage holycube:temp sleepingCount
data remove storage holycube:temp sleepingCountA
data remove storage holycube:temp sleepingReq
data remove storage holycube:temp sleepChanged
scoreboard players reset #HC5Count# hc5
scoreboard players reset #HC5Req# hc5
scoreboard players reset #HC5Time# hc5
scoreboard players reset #HC5A# hc5
scoreboard players reset #HC5B# hc5
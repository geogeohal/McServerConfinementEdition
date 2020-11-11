data modify storage holycube:temp iscache set value 0b
data modify storage holycube:temp copy set from storage holycube:temp copyafk[0]

execute store success storage holycube:temp iscache byte 1 run data modify storage holycube:temp copy.UUID set from entity @s UUID

execute if data storage holycube:temp {iscache:0b} run data modify storage holycube:temp foundcache set value 1b
execute if data storage holycube:temp {iscache:0b} run function holycube:afk/update

data modify storage holycube:temp newafk append from storage holycube:temp copyafk[0]

data remove storage holycube:temp copyafk[0]
execute if data storage holycube:temp copyafk[0] run function holycube:afk/iterate

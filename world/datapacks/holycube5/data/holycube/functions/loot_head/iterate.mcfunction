data modify storage holycube:temp iscache set value 0b
data modify storage holycube:temp copy set from storage holycube:temp copyhead[0]

execute store success storage holycube:temp iscache byte 1 run data modify storage holycube:temp copy.Id set from entity @s UUID

execute if data storage holycube:temp {iscache:0b} at @s run function holycube:loot_head/drop

data remove storage holycube:temp copyhead[0]
execute if data storage holycube:temp copyhead[0] run function holycube:loot_head/iterate
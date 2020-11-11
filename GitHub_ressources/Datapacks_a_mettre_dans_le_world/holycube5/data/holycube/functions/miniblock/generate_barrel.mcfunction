execute unless data storage holycube:temp {barrel:{id:"minecraft:barrel"}} run data modify storage holycube:temp barrel set value {id:"minecraft:barrel",Count:1b,tag:{BlockEntityTag:{Items:[],id:"minecraft:barrel"},display:{Lore:[]}}}

data modify storage holycube:temp Item set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{}}}
data modify storage holycube:temp Item.tag.SkullOwner set from storage holycube:temp list[0]
execute store result storage holycube:temp Item.Slot byte 1 run data get storage holycube:temp barrel.tag.BlockEntityTag.Items

data modify storage holycube:temp barrel.tag.BlockEntityTag.Items append from storage holycube:temp Item

data remove storage holycube:temp list[0]

data remove storage holycube:temp Item

scoreboard players add count hc5 1
execute if score count hc5 < max hc5 run function holycube:miniblock/generate_barrel
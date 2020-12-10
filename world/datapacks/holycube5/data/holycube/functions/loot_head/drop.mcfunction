summon minecraft:item ~ ~ ~ {Tags:["hc5head"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{}}}}
data modify entity @e[tag=hc5head,limit=1] Item.tag.SkullOwner set from storage holycube:temp copy
tag @e[tag=hc5head] remove hc5head
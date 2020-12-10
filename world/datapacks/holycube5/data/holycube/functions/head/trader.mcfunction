data modify storage holycube:temp sellItem set value {rewardExp:0b,maxUses:1,buy:{id:"minecraft:skeleton_skull",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{}}}}
data modify storage holycube:temp sellItem.sell.tag.SkullOwner set from storage holycube:cache head[0]
data modify entity @s Offers.Recipes prepend from storage holycube:temp sellItem

data modify storage holycube:cache head append from storage holycube:cache head[0]
data remove storage holycube:cache head[0]

data remove storage holycube:temp sellItem
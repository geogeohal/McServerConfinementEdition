data modify storage holycube:temp sellItem set value {rewardExp:0b,maxUses:128,buy:{id:"minecraft:diamond",Count:1b},buyB:{id:"minecraft:barrel",Count:1b},sell:{}}
data modify storage holycube:temp sellItem.sell set from storage holycube:cache alphanumeric
data modify entity @s Offers.Recipes prepend from storage holycube:temp sellItem
function holycube:miniblock/clean
data modify storage holycube:temp list set from storage holycube:cache miniblock
execute store result score cut hc5 run data get entity @s UUID[0] 1
function holycube:shuffle/cut
function holycube:shuffle/riffle
execute store result score cut hc5 run data get entity @s UUID[1] 1
function holycube:shuffle/cut
function holycube:shuffle/riffle
data modify storage holycube:cache miniblock set from storage holycube:temp list

scoreboard players set count hc5 0
scoreboard players set max hc5 27
execute if score count hc5 < max hc5 run function holycube:miniblock/generate_barrel
data modify storage holycube:temp barrel.tag.display.Lore append value "[{\"text\":\"Miniblock Lootbox !\",\"italic\":true}]"

data modify storage holycube:temp sellItem set value {rewardExp:0b,maxUses:128,buy:{id:"minecraft:diamond",Count:1b},buyB:{id:"minecraft:barrel",Count:1b},sell:{}}
data modify storage holycube:temp sellItem.sell set from storage holycube:temp barrel
data modify entity @s Offers.Recipes prepend from storage holycube:temp sellItem

function holycube:miniblock/clean
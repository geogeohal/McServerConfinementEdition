execute store result score max hc5 run data get storage holycube:temp list
scoreboard players set divider hc5 2
scoreboard players operation half hc5 = max hc5
scoreboard players operation half hc5 /= divider hc5
scoreboard players set count hc5 0

data modify storage holycube:temp rifflelist set value []
data modify storage holycube:temp rifflelist append value []
data modify storage holycube:temp rifflelist append value []

function holycube:shuffle/riffle/divide

scoreboard players set count hc5 0
data modify storage holycube:temp list set value []

function holycube:shuffle/riffle/add

data remove storage holycube:temp rifflelist
scoreboard players reset half hc5
scoreboard players reset max hc5
scoreboard players reset divider hc5
scoreboard players reset count hc5
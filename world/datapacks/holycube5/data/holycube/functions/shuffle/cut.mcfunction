execute store result score modulo hc5 run data get storage holycube:temp list
scoreboard players set minus hc5 -1
execute if score cut hc5 matches ..-1 run scoreboard players operation cut hc5 *= minus hc5
scoreboard players operation cut hc5 %= modulo hc5
scoreboard players reset minus hc5

execute if score cut hc5 matches 1.. run function holycube:shuffle/cut/add
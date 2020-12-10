execute if score count hc5 <= half hc5 run data modify storage holycube:temp rifflelist[0] append from storage holycube:temp list[0]
execute if score count hc5 > half hc5 run data modify storage holycube:temp rifflelist[1] append from storage holycube:temp list[0]

data remove storage holycube:temp list[0]
scoreboard players add count hc5 1

execute if score count hc5 < max hc5 run function holycube:shuffle/riffle/divide
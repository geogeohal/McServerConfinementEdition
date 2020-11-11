data modify storage holycube:temp list append from storage holycube:temp rifflelist[0][0]
data modify storage holycube:temp list append from storage holycube:temp rifflelist[1][0]

data remove storage holycube:temp rifflelist[0][0]
data remove storage holycube:temp rifflelist[1][0]
scoreboard players add count hc5 2

execute if score count hc5 < max hc5 run function holycube:shuffle/riffle/add
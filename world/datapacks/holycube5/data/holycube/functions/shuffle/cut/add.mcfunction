data modify storage holycube:temp list append from storage holycube:temp list[0]
data remove storage holycube:temp list[0]

scoreboard players remove cut hc5 1

execute if score cut hc5 matches 1.. run function holycube:shuffle/cut
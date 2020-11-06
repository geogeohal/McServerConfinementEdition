execute store result score #HC5Time# hc5 run time query daytime

weather clear 0
execute if score #HC5Time# hc5 matches 12550.. run time add 50
execute if score #HC5Time# hc5 matches 0..12499 run data modify storage holycube:cache bed.passTime set value 0b
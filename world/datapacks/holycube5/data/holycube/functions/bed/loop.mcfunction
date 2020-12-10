execute store result score #HC5# hc5 run data get storage holycube:timer bed
execute if score #HC5# hc5 matches 1.. store result storage holycube:timer bed int 1 run scoreboard players remove #HC5# hc5 1
execute if score #HC5# hc5 matches 0 run data modify storage holycube:timer bed set value 20

execute if score #HC5# hc5 matches 0 run function holycube:bed/update
execute if data storage holycube:cache {bed:{passTime:1b}} run function holycube:bed/pass
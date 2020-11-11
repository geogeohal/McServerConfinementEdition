execute store result score #HC5# hc5 run data get storage holycube:timer head
execute if score #HC5# hc5 matches 1.. store result storage holycube:timer head int 1 run scoreboard players remove #HC5# hc5 1
execute if score #HC5# hc5 matches 0 run data modify storage holycube:timer head set value 20

execute if score #HC5# hc5 matches 2 as @a[tag=!hc5_headed] run function holycube:head/spawn
execute if score #HC5# hc5 matches 0 as @e[type=item,nbt={Item:{tag:{hc5headspawn:1b}}}] run function holycube:head/addtocache
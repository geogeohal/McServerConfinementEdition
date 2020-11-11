execute store result score #HC5# hc5 run data get storage holycube:timer helmet
execute if score #HC5# hc5 matches 1.. store result storage holycube:timer helmet int 1 run scoreboard players remove #HC5# hc5 1
execute if score #HC5# hc5 matches 0 run data modify storage holycube:timer helmet set value 20

execute if score #HC5# hc5 matches 0 as @a if data entity @s {Dimension:"minecraft:the_nether",Inventory:[{Slot:103b,tag:{Tags:["night_vision"]}}]} run effect give @s minecraft:night_vision 24 0 true
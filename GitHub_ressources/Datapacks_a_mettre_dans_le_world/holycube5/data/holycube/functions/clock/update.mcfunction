execute store result score #HC5# hc5 run time query daytime
execute store result bossbar holycube:clock value run time query daytime

scoreboard players operation #HC5A# hc5 = #HC5# hc5
scoreboard players operation #HC5B# hc5 = #HC5# hc5

scoreboard players operation #HC5A# hc5 += #HC5CLOCK_ha# hc5
scoreboard players operation #HC5A# hc5 %= #HC5CLOCK_ho# hc5
scoreboard players operation #HC5A# hc5 /= #HC5CLOCK_hd# hc5

scoreboard players operation #HC5B# hc5 %= #HC5CLOCK_mo# hc5
scoreboard players operation #HC5B# hc5 *= #HC5CLOCK_mm# hc5
scoreboard players operation #HC5B# hc5 /= #HC5CLOCK_md# hc5

execute if score #HC5B# hc5 matches 0..9 run bossbar set holycube:clock name [{"score":{"name":"#HC5A#","objective":"hc5"}}, ":", "0", {"score":{"name":"#HC5B#","objective":"hc5"}}]
execute if score #HC5B# hc5 matches 10.. run bossbar set holycube:clock name [{"score":{"name":"#HC5A#","objective":"hc5"}}, ":", {"score":{"name":"#HC5B#","objective":"hc5"}}]

execute if score #HC5# hc5 matches 0..11999 run bossbar set holycube:clock color yellow
execute if score #HC5# hc5 matches 12000..12999 run bossbar set holycube:clock color blue
execute if score #HC5# hc5 matches 13000..22999 run bossbar set holycube:clock color purple
execute if score #HC5# hc5 matches 23000.. run bossbar set holycube:clock color blue

bossbar set holycube:clock players @a[nbt={Inventory:[{id:"minecraft:clock"}]}]

#cleanup
scoreboard players reset #HC5# hc5
scoreboard players reset #HC5A# hc5
scoreboard players reset #HC5B# hc5
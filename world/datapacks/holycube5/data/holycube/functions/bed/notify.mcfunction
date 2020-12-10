execute if data storage holycube:temp {sleepingCount:100} as @a unless data entity @s {SleepTimer:0s} run title @a actionbar [{"color":"green","selector":"@s"}, {"color":"white","text":" est maintenant dans un lit."}]

execute unless data storage holycube:temp {sleepingCount:100} as @a[nbt=!{SleepTimer:0s},limit=1,sort=random] run tag @s add hc5bedlast

execute unless data storage holycube:temp {sleepingCount:100} as @a[tag=hc5bedlast,limit=1] run title @a actionbar [{"color":"green","selector":"@a[nbt=!{SleepTimer:0s},tag=!hc5bedlast]"}, " et ", {"color":"green","selector":"@s"}, {"color":"white","text":" sont maintenant dans un lit."}]

tag @a[tag=hc5bedlast] remove hc5bedlast

execute store result score #HC5# hc5 run scoreboard players get #HC5Req# hc5
scoreboard players set #HC5A# hc5 0
function holycube:bed/count
scoreboard players operation #HC5B# hc5 = #HC5A# hc5
execute store result bossbar holycube:bed max run scoreboard players get #HC5A# hc5

execute store result score #HC5# hc5 run scoreboard players get #HC5Count# hc5
scoreboard players set #HC5A# hc5 0
function holycube:bed/count
execute store result bossbar holycube:bed value run scoreboard players get #HC5A# hc5

bossbar set holycube:bed name ["Passer la nuit [", {"score":{"name":"#HC5A#","objective":"hc5","color":"light_purple"}}," / ",{"score":{"name":"#HC5B#","objective":"hc5","color":"dark_green"}}, "]"]

bossbar set holycube:bed players @a
bossbar set holycube:bed visible true
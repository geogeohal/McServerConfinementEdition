#CONFIG and CACHE
execute unless data storage holycube: cache run data modify storage holycube: cache set value {}
execute unless data storage holycube: config run data modify storage holycube: config set value {}
execute unless data storage holycube: timer run data modify storage holycube: timer set value {}
execute unless data storage holycube:config enabled run data modify storage holycube:config enabled set value {afk:1b,bed:1b,bedrock:1b,clock:1b,head:1b,helmet:1b,loot_head:1b,miniblock:1b,trader:1b}
function holycube:reset

#WE STILL CAN'T LIVE WITHOUT SCOREBOARDS !!!
scoreboard objectives add hc5 dummy

#AFK
execute unless data storage holycube:timer afk run data modify storage holycube:timer afk set value 14
execute unless data storage holycube:config afk_timer run data modify storage holycube:config afk_timer set value 300
data modify storage holycube:cache afk set value []
team add afk
team modify afk color dark_aqua
team modify afk prefix {"text":"[AFK] ", "color":"dark_aqua"}
#BED
execute unless data storage holycube:timer bed run data modify storage holycube:timer bed set value 16
execute unless data storage holycube:config bed_req run data modify storage holycube:config bed_req set value 33
data modify storage holycube:cache bed set value {}
data modify storage holycube:cache bed.sleepingCount set value 0
bossbar add holycube:bed [{"text":"Passage de la nuit","color":"gray"}]
bossbar set holycube:bed visible false
#BEDROCK
scoreboard objectives add bedrockhc5 minecraft.used:minecraft.carrot_on_a_stick
#CLOCK
execute unless data storage holycube:timer clock run data modify storage holycube:timer clock set value 16
bossbar add holycube:clock [{"text":""}]
bossbar set holycube:clock visible true
bossbar set holycube:clock max 23999

scoreboard players set #HC5CLOCK_hd# hc5 1000
scoreboard players set #HC5CLOCK_ha# hc5 6000
scoreboard players set #HC5CLOCK_ho# hc5 24000

scoreboard players set #HC5CLOCK_mo# hc5 1000
scoreboard players set #HC5CLOCK_mm# hc5 100000
scoreboard players set #HC5CLOCK_md# hc5 1666666
#HEAD
execute unless data storage holycube:timer head run data modify storage holycube:timer head set value 8
execute unless data storage holycube:cache head run data modify storage holycube:cache head set value []
#HELMET
execute unless data storage holycube:timer helmet run data modify storage holycube:timer helmet set value 20
#LOOT_HEAD
scoreboard objectives add hc5kills playerKillCount
scoreboard objectives add hc5deaths deathCount
#MINIBLOCK
data modify storage holycube:cache miniblock set value []
function holycube:miniblock/addlist
function holycube:miniblock/generate_barrel
#TRADER
execute unless data storage holycube:timer trader run data modify storage holycube:timer trader set value 12
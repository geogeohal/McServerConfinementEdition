data modify storage holycube:temp copyafk set from storage holycube:cache afk
data modify storage holycube:temp newafk set value []
data modify storage holycube:temp foundcache set value 0b

execute if data storage holycube:cache afk[0] run function holycube:afk/iterate

execute unless data storage holycube:temp {foundcache:1b} run function holycube:afk/addtocache
data modify storage holycube:cache afk set from storage holycube:temp newafk

#cleanup
data remove storage holycube:temp isCache
data remove storage holycube:temp copycache
data remove storage holycube:temp copyafk
data remove storage holycube:temp iscache
data remove storage holycube:temp newcache
data remove storage holycube:temp newafk
data remove storage holycube:temp foundcache
data remove storage holycube:temp.newplayer UUID
data remove storage holycube:temp.newplayer Pos
data remove storage holycube:temp newplayer
data remove storage holycube:temp copy
data remove storage holycube:temp updated
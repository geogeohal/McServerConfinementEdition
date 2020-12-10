data modify storage holycube:temp copyhead set from storage holycube:cache head
data modify storage holycube:temp foundcache set value 0b

execute if data storage holycube:cache head[0] run function holycube:loot_head/iterate

#cleanup
data remove storage holycube:temp copyhead

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
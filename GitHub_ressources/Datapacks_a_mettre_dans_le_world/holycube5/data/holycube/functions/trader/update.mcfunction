execute store result score uuid hc5 run data get entity @s UUID[0] 1
scoreboard players set minus hc5 -1
execute if score uuid hc5 matches ..-1 run scoreboard players operation cut hc5 *= minus hc5
scoreboard players set modulo hc5 20
scoreboard players operation uuid hc5 %= modulo hc5
scoreboard players reset modulo hc5
scoreboard players reset minus hc5

execute if score uuid hc5 matches 0 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 2 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 6 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 9 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 13 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 14 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 18 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader
execute if score uuid hc5 matches 19 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/lootbox/totrader

execute if score uuid hc5 matches 1 if data storage holycube:config {enabled:{head:1b}} run function holycube:head/trader
execute if score uuid hc5 matches 10 if data storage holycube:config {enabled:{head:1b}} run function holycube:head/trader

execute if score uuid hc5 matches 3 if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/trader
execute if score uuid hc5 matches 5 if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/trader
execute if score uuid hc5 matches 7 if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/trader
execute if score uuid hc5 matches 11 if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/trader
execute if score uuid hc5 matches 16 if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/trader

execute if score uuid hc5 matches 4 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/alphanumeric/totrader
execute if score uuid hc5 matches 8 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/alphanumeric/totrader
execute if score uuid hc5 matches 12 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/alphanumeric/totrader
execute if score uuid hc5 matches 15 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/alphanumeric/trader
execute if score uuid hc5 matches 17 if data storage holycube:config {enabled:{miniblock:1b}} run function holycube:miniblock/alphanumeric/totrader

tag @s add hc5trader
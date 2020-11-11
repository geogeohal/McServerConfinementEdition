#execute if data storage holycube:config.enabled { spawn:1b } run function holycube:spawn/loop
execute if data storage holycube:config {enabled:{head:1b}} run function holycube:head/loop

execute if data storage holycube:config {enabled:{afk:1b}} run function holycube:afk/loop
execute if data storage holycube:config {enabled:{bed:1b}} run function holycube:bed/loop
execute if data storage holycube:config {enabled:{bedrock:1b}} run function holycube:bedrock/loop
execute if data storage holycube:config {enabled:{clock:1b}} run function holycube:clock/loop

execute if data storage holycube:config {enabled:{trader:1b}} run function holycube:trader/loop
execute if data storage holycube:config {enabled:{helmet:1b}} run function holycube:helmet/loop
execute if data storage holycube:config {enabled:{loot_head:1b}} as @a[scores={hc5deaths=1..}] run function holycube:loot_head/loop
scoreboard players add cast hc5 1
scoreboard players add pos hc5 10

execute if score pos hc5 matches 1170.. if block ^ ^ ^ air positioned ^ ^ ^0.1 if score cast hc5 matches 1..50 run function holycube:bedrock/cast

execute positioned ^ ^ ^ if block ^ ^ ^ bedrock positioned ~ 127 ~ run function holycube:bedrock/apply
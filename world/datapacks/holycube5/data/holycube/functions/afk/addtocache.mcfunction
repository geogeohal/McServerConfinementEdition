data modify storage holycube:temp newafk prepend value {}
data modify storage holycube:temp newafk[0].UUID set from entity @s UUID
data modify storage holycube:temp newafk[0].Pos set from entity @s Pos
data modify storage holycube:temp newafk[0].ticks set from storage holycube:config afk_timer
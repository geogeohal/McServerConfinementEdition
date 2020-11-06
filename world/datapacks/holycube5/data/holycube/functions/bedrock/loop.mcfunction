execute as @a[scores={bedrockhc5=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{breakbedrock:1b}}}] at @s positioned ~ ~1.67 ~ run function holycube:bedrock/snipe
scoreboard players set @a bedrockhc5 0

execute as @a[nbt={Inventory:[{id:"minecraft:phantom_spawn_egg"}]}] run function holycube:bedrock/give
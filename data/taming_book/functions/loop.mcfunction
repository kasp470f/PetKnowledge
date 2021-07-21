# Rightclick section
execute at @p[scores={Right_Click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:201101}}}] run execute as @e[type=wolf,sort=nearest,limit=1,tag=tamed,distance=..2] if data entity @s Owner run function taming_book:stats
scoreboard players set @p[scores={Right_Click=1..}] Right_Click 0

# Tamed wolves
execute as @e[type=wolf] if entity @e[type=wolf,tag=!tamed] if data entity @s Owner run data merge entity @s[type=wolf] {Tags:["1","tamed"]} 
execute as @e[type=wolf,tag=tamed] run scoreboard players set @s Tamed_LVL 1

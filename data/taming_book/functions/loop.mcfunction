# Rightclick section
execute at @p[scores={Right_Click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:201101}}}] run execute as @e[type=wolf,sort=nearest,limit=1,tag=tamed,distance=..2] if data entity @s Owner run function taming_book:stats_wolf
execute at @p[scores={Right_Click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:201101}}}] run execute as @e[type=cat,sort=nearest,limit=1,tag=tamed,distance=..2] if data entity @s Owner run function taming_book:stats_cat
scoreboard players set @p[scores={Right_Click=1..}] Right_Click 0

# Tamed wolves
execute as @e[type=wolf] if entity @e[type=wolf,tag=!tamed] if data entity @s Owner run data merge entity @s[type=wolf] {Tags:["1","tamed"]} 
execute as @e[type=wolf,tag=tamed] unless score @s Tamed_LVL matches 0.. run scoreboard players set @s Tamed_LVL 1
execute as @e[type=wolf,tag=tamed] unless score @s Tamed_XP matches 0.. run scoreboard players set @s Tamed_XP 0

# Tamed cat
execute as @e[type=cat] if entity @e[type=cat,tag=!tamed] if data entity @s Owner run data merge entity @s[type=cat] {Tags:["1","tamed"]} 
execute as @e[type=cat,tag=tamed] unless score @s Tamed_LVL matches 0.. run scoreboard players set @s Tamed_LVL 1
execute as @e[type=cat,tag=tamed] unless score @s Tamed_XP matches 0.. run scoreboard players set @s Tamed_XP 0


# Level up

## Wolf
execute as @e[type=wolf,tag=tamed] at @e if score @s Tamed_XP matches 10.. run scoreboard players add @s Tamed_LVL 1
execute as @e[type=wolf,tag=tamed] at @e if score @s Tamed_XP matches 10.. run scoreboard players set @s Tamed_XP 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}] at @s as @e[type=wolf,limit=1,sort=nearest,distance=..1] run scoreboard players add @s Tamed_XP 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}] at @s as @e[type=wolf,limit=1,sort=nearest,distance=..1] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}]

## Cat
execute as @e[type=cat,tag=tamed] at @e if score @s Tamed_XP matches 10.. run scoreboard players add @s Tamed_LVL 1
execute as @e[type=cat,tag=tamed] at @e if score @s Tamed_XP matches 10.. run scoreboard players set @s Tamed_XP 0
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}] at @s as @e[type=cat,limit=1,sort=nearest,distance=..1] run scoreboard players add @s Tamed_XP 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}] at @s as @e[type=cat,limit=1,sort=nearest,distance=..1] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:apple"}}]
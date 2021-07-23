# Rightclick section
execute at @p[scores={Right_Click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:201101}}}] run execute as @e[type=wolf,sort=nearest,limit=1,tag=tamed,distance=..2] if data entity @s Owner run function taming_book:stats_wolf
execute at @p[scores={Right_Click=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:201101}}}] run execute as @e[type=cat,sort=nearest,limit=1,tag=tamed,distance=..2] if data entity @s Owner run function taming_book:stats_cat
scoreboard players set @p[scores={Right_Click=1..}] Right_Click 0

# Taming
execute as @e[tag=tamed] unless score @s Tamed_LVL matches 0.. run scoreboard players set @s Tamed_LVL 1
execute as @e[tag=tamed] unless score @s Tamed_XP matches 0.. run scoreboard players set @s Tamed_XP 0

## Tamed wolves
execute as @e[type=wolf] if entity @e[type=wolf,tag=!tamed] if data entity @s Owner run tag @s add tamed

## Tamed cat
execute as @e[type=cat] if entity @e[type=cat,tag=!tamed] if data entity @s Owner run function taming_book:fix/fix_cat


# Level up
execute as @e[tag=tamed] if score @s Tamed_XP matches 10.. run function taming_book:level_up
execute as @e[tag=tamed] if score @s Tamed_XP matches 10.. run scoreboard players add @s Tamed_LVL 1 
execute as @e[tag=tamed] if score @s Tamed_XP matches 10.. run scoreboard players set @s Tamed_XP 0
execute as @e[tag=tamed] if score @s Tamed_LVL matches 99.. run effect give @s minecraft:instant_health 20 1 true

## Wolf
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s as @e[type=wolf,limit=1,sort=nearest,distance=..0.5,tag=tamed] run scoreboard players add @s Tamed_XP 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:rabbit",Count:1b}}] at @s as @e[type=wolf,limit=1,sort=nearest,distance=..0.5,tag=tamed] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:rabbit"}},limit=1,sort=nearest]


## Cat
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:salmon",Count:1b}}] at @s as @e[type=cat,limit=1,sort=nearest,distance=..0.5,tag=tamed] run scoreboard players add @s Tamed_XP 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:salmon",Count:1b}}] at @s as @e[type=cat,limit=1,sort=nearest,distance=..0.5,tag=tamed] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:salmon"}},limit=1,sort=nearest]


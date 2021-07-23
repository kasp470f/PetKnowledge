## Level 10 - 20
execute if score @s Tamed_LVL matches 9..19 run attribute @s minecraft:generic.attack_damage base set 4
execute if score @s Tamed_LVL matches 9..19 run attribute @s minecraft:generic.max_health base set 20
execute if score @s Tamed_LVL matches 9..19 run attribute @s minecraft:generic.movement_speed base set 0.9
## Level 20 - 30
execute if score @s Tamed_LVL matches 19..29 run attribute @s minecraft:generic.attack_damage base set 5
execute if score @s Tamed_LVL matches 19..29 run attribute @s minecraft:generic.max_health base set 30
execute if score @s Tamed_LVL matches 19..29 run attribute @s minecraft:generic.movement_speed base set 1.5
## Level 30 and above
execute if score @s Tamed_LVL matches 29.. run attribute @s minecraft:generic.attack_damage base set 6
execute if score @s Tamed_LVL matches 29.. run attribute @s minecraft:generic.max_health base set 40
execute if score @s Tamed_LVL matches 29.. run attribute @s minecraft:generic.movement_speed base set 2

execute if score @s Tamed_LVL matches 99.. if entity @e[type=cat] run tellraw @p {"text":"This cat has now become immortal!","color":"#00FF4A"}
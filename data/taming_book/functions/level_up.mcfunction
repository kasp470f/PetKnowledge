# Level up notification
execute at @s run particle minecraft:glow ~ ~0.5 ~ 0.25 0.25 0.25 1 75 normal
execute at @s run playsound entity.player.levelup ambient @a

execute if entity @s[name="Wolf"] run tellraw @p [{"text":"Wolf","color":"#00FF4A"},{"text":" has leveled up!","color":"#00FF4A"}] 
execute if entity @s[type=wolf,name=!"Wolf"] run tellraw @p [{"nbt":"CustomName","entity":"@e[type=wolf,sort=nearest,limit=1,tag=tamed]","interpret":true, "color":"#00FF4A"},{"text":" has leveled up!","color":"#00FF4A"}]

execute if entity @s[name="Cat"] run tellraw @p [{"text":"Cat","color":"#00FF4A"},{"text":" has leveled up!","color":"#00FF4A"}]
execute if entity @s[type=cat,name=!"Cat"] run tellraw @p [{"nbt":"CustomName","entity":"@e[type=cat,sort=nearest,limit=1,tag=tamed]","interpret":true, "color":"#00FF4A"},{"text":" has leveled up!","color":"#00FF4A"}]

# Increase in stats
execute as @s[type=wolf] run function taming_book:stat_increase/stat_increase_wolf
execute as @s[type=cat] run function taming_book:stat_increase/stat_increase_cat
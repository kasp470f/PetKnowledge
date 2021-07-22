# Stats
## Name
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed,name="Wolf"] run tellraw @p [{"text":"Name: ","color":"gray"},{"text":"Wolf","color":"#FF8000"}]
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed,name=!"Wolf"] run tellraw @p [{"text":"Name: ","color":"gray"},{"nbt":"CustomName","entity":"@e[type=wolf,sort=nearest,limit=1,tag=tamed]","interpret":true, "color":"#FF8000"}]

## Level
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"Tamed_LVL"},"color":"#FF8000"}]

## Health
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Health: ","color":"gray"},{"nbt":"Health","entity":"@e[type=wolf,sort=nearest,limit=1,tag=tamed] 5", "color":"#FF8000"},{"text":" / ","color":"#FF8000"},{"nbt":"Attributes[1].Base","entity":"@e[type=wolf,sort=nearest,limit=1,tag=tamed]", "color":"#FF8000"}]
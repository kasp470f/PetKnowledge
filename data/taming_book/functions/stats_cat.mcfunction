# Stats
## Name
execute if entity @e[type=cat,sort=nearest,limit=1,tag=tamed,name="Cat"] run tellraw @p [{"text":"Name: ","color":"gray"},{"text":"Cat","color":"#FF8000"}]
execute if entity @e[type=cat,sort=nearest,limit=1,tag=tamed,name=!"Cat"] run tellraw @p [{"text":"Name: ","color":"gray"},{"nbt":"CustomName","entity":"@e[type=cat,sort=nearest,limit=1,tag=tamed]","interpret":true, "color":"#FF8000"}]

## Level & XP
execute if entity @e[type=cat,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"Tamed_LVL"},"color":"#FF8000"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"Tamed_XP"},"color":"#FF8000"},{"text":" / ","color":"#FF8000"},{"text":"10", "color":"#FF8000"},{"text":")","color":"gray"}]

## Health
execute if entity @e[type=cat,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Health: ","color":"gray"},{"nbt":"Health","entity":"@e[type=cat,sort=nearest,limit=1,tag=tamed]", "color":"#FF8000"},{"text":" / ","color":"#FF8000"},{"nbt":"Attributes[1].Base","entity":"@e[type=cat,sort=nearest,limit=1,tag=tamed]", "color":"#FF8000"}]
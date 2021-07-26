# Name
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed,name="Wolf"] run tellraw @p [{"text":"Name: ","color":"gray"},{"text":"Wolf","color":"#FF8000"}]
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed,name=!"Wolf"] run tellraw @p [{"text":"Name: ","color":"gray"},{"nbt":"CustomName","entity":"@s","interpret":true, "color":"#FF8000"}]

# Level & XP
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"Tamed_LVL"},"color":"#FF8000"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"Tamed_XP"},"color":"#FF8000"},{"text":" / ","color":"#FF8000"},{"text":"10", "color":"#FF8000"},{"text":")","color":"gray"}]

# Health
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Health: ","color":"gray"},{"nbt":"Health","entity":"@s", "color":"#FF8000"},{"text":" / ","color":"#FF8000"},{"nbt":"Attributes[1].Base","entity":"@s", "color":"#FF8000"}]

# Stats
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Attack Damage: ","color":"gray"},{"nbt":"Attributes[0].Base","entity":"@s", "color":"#FF8000"}]
execute if entity @e[type=wolf,sort=nearest,limit=1,tag=tamed] run tellraw @p [{"text":"Movement Speed: ","color":"gray"},{"nbt":"Attributes[2].Base","entity":"@s", "color":"#FF8000"}]


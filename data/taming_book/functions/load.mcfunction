# scoreboard objectives
scoreboard objectives add Right_Click minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add Tamed_LVL dummy
scoreboard objectives add Tamed_XP dummy
scoreboard objectives setdisplay sidebar Tamed_XP

tellraw @a {"text": "Datapack loaded sucessfully"}
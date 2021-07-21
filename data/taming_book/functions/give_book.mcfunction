# Give player the Book of Taming when they make the knowledge book
recipe take @s minecraft:book_of_taming
advancement revoke @s only minecraft:taming_adv
clear @s minecraft:knowledge_book

give @s warped_fungus_on_a_stick{display:{Name:'{"text":"Taming Book"}',Lore:['{"text":"A book for viewing the stats of tamed pets.","italic":true}']},HideFlags:4,CustomModelData:201101,taming_book:1b} 1
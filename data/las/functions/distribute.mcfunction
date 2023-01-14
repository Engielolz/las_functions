# Do not distribute! - Mojang, probably

# Just the one piece
execute if entity @a[scores={armorPieces=1,hasHelmet=1}] run function las:result/helmetonly
execute if entity @a[scores={armorPieces=1,hasChestplate=1}] run function las:result/chestplateonly
execute if entity @a[scores={armorPieces=1,hasLeggings=1}] run function las:result/leggingsonly
execute if entity @a[scores={armorPieces=1,hasBoots=1}] run function las:result/bootsonly

# Helmet and Boots
execute if entity @a[scores={armorPieces=2,hasHelmet=1,hasBoots=1}] run function las:result/helmetboots

execute if entity @a[scores={armorPieces=3,hasChestplate=1,hasLeggings=1,hasBoots=1}] run function las:result/nohelmet
execute if entity @a[scores={armorPieces=4}] run function las:result/fullset
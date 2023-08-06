# One Piece
tell @s[tag=LAS.DebugMsg.OptIn] I got one piece
scoreboard players operation @s targetArmorPoints = @s currentArmorPoints
execute if entity @s[scores={armorPieces=1,hasHelmet=1}] run function las:data/sethelmet
execute if entity @s[scores={armorPieces=1,hasChestplate=1}] run function las:data/setchestplate
execute if entity @s[scores={armorPieces=1,hasLeggings=1}] run function las:data/setleggings
execute if entity @s[scores={armorPieces=1,hasBoots=1}] run function las:data/setboots
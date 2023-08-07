# The following DON'T have precision issues: Helmet+Boots, Helm+Legs+Boots, Full Set
scoreboard players set @s targetArmorPoints 65535

# Just one piece? Go there.
execute if entity @s[scores={armorPieces=1}] run function las:result/onepiece

# Two pieces? Find the two and go there.
execute if entity @s[scores={armorPieces=2,hasHelmet=1,hasChestplate=1}] run function las:result/helmetchestplate
execute if entity @s[scores={armorPieces=2,hasHelmet=1,hasLeggings=1}] run function las:result/helmetleggings
execute if entity @s[scores={armorPieces=2,hasHelmet=1,hasBoots=1}] run function las:result/helmetboots
execute if entity @s[scores={armorPieces=2,hasChestplate=1,hasLeggings=1}] run function las:result/chestplateleggings
execute if entity @s[scores={armorPieces=2,hasChestplate=1,hasBoots=1}] run function las:result/chestplateboots
execute if entity @s[scores={armorPieces=2,hasLeggings=1,hasBoots=1}] run function las:result/leggingsboots

# Three pieces? Certainly getting shorter...
execute if entity @s[scores={armorPieces=3,hasHelmet=1,hasChestplate=1,hasLeggings=1}] run function las:result/helmchestlegs
execute if entity @s[scores={armorPieces=3,hasHelmet=1,hasLeggings=1,hasBoots=1}] run function las:result/helmlegsboots
execute if entity @s[scores={armorPieces=3,hasChestplate=1,hasLeggings=1,hasBoots=1}] run function las:result/chestlegsboots
execute if entity @s[scores={armorPieces=3,hasHelmet=1,hasChestplate=1,hasBoots=1}] run function las:result/helmchestboots

# Full set, we have a function for that.
execute if entity @s[scores={armorPieces=4}] run function las:result/fullset

# Silence warning message if no armor is being worn
execute if entity @s[scores={armorPieces=0}] run scoreboard players set @s targetArmorPoints 0

execute if score @s targetArmorPoints matches 65535 run tellraw @s {"text":"[LAS Warning] The armor changed, but the armor points were not. Armor combination not supported?"}
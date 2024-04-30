# loop.mcfunction
scoreboard objectives add helmetBaseDurability dummy
scoreboard objectives add chestplateBaseDurability dummy
scoreboard objectives add leggingsBaseDurability dummy
scoreboard objectives add bootsBaseDurability dummy
scoreboard objectives add totalBaseDurability dummy
scoreboard objectives add LAS.Debug trigger

# basearmorpoints.mcfunction
scoreboard objectives add baseArmorPoints dummy
scoreboard objectives add hasHelmet dummy
scoreboard objectives add hasChestplate dummy
scoreboard objectives add hasLeggings dummy
scoreboard objectives add hasBoots dummy
scoreboard objectives add armorPieces dummy

# currentdurability.mcfunction
scoreboard objectives add currentHelmetDurability dummy
scoreboard objectives add currentChestplateDurability dummy
scoreboard objectives add currentLeggingsDurability dummy
scoreboard objectives add currentBootsDurability dummy
scoreboard objectives add lasTemp dummy
scoreboard objectives add totalCurrentDurability dummy

#armorpower.mcfunction
scoreboard objectives add currentArmorPoints dummy
scoreboard objectives add lastArmorPoints dummy

# i believe only domath.mcfunction uses this now
scoreboard objectives add lasTemp2 dummy

# calcarmor.mcfunction
scoreboard objectives add targetArmorPoints dummy

# remove version check thing
scoreboard objectives remove LAS.Unsupported
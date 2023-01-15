scoreboard objectives add helmetArmorPoints dummy
scoreboard objectives add chestplateArmorPoints dummy
scoreboard objectives add leggingsArmorPoints dummy
scoreboard objectives add bootsArmorPoints dummy

# Get actual durability by flipping
scoreboard players operation @a lasTemp = @a helmetBaseDurability
scoreboard players operation @a lasTemp -= @a currentHelmetDurability
scoreboard players operation @a currentHelmetDurability = @a lasTemp

scoreboard players operation @a lasTemp = @a chestplateBaseDurability
scoreboard players operation @a lasTemp -= @a currentChestplateDurability
scoreboard players operation @a currentChestplateDurability = @a lasTemp

scoreboard players operation @a lasTemp = @a leggingsBaseDurability
scoreboard players operation @a lasTemp -= @a currentLeggingsDurability
scoreboard players operation @a currentLeggingsDurability = @a lasTemp

scoreboard players operation @a lasTemp = @a bootsBaseDurability
scoreboard players operation @a lasTemp -= @a currentBootsDurability
scoreboard players operation @a currentBootsDurability = @a lasTemp

# Calculate armor points
scoreboard players set MultiplyBy lasTemp 3
scoreboard players operation @a lasTemp = @a currentHelmetDurability
scoreboard players operation @a lasTemp *= MultiplyBy lasTemp
scoreboard players operation @a lasTemp /= @a helmetBaseDurability
scoreboard players operation @a helmetArmorPoints = @a lasTemp

# Chestplate
scoreboard players set MultiplyBy lasTemp 8
scoreboard players operation @a lasTemp = @a currentChestplateDurability
scoreboard players operation @a lasTemp *= MultiplyBy lasTemp
scoreboard players operation @a lasTemp /= @a chestplateBaseDurability
scoreboard players operation @a chestplateArmorPoints = @a lasTemp

# Leggings
scoreboard players set MultiplyBy lasTemp 6
scoreboard players operation @a lasTemp = @a currentLeggingsDurability
scoreboard players operation @a lasTemp *= MultiplyBy lasTemp
scoreboard players operation @a lasTemp /= @a leggingsBaseDurability
scoreboard players operation @a leggingsArmorPoints = @a lasTemp

# Boots
scoreboard players set MultiplyBy lasTemp 3
scoreboard players operation @a lasTemp = @a currentBootsDurability
scoreboard players operation @a lasTemp *= MultiplyBy lasTemp
scoreboard players operation @a lasTemp /= @a bootsBaseDurability
scoreboard players operation @a bootsArmorPoints = @a lasTemp
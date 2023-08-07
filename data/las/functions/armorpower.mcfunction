# (baseArmorPoints * totalCurrentDurability) / totalBaseDurability = lasTemp

# Help fix precision loss
scoreboard players set @a lasTemp 100
# Multiply everything by 100
scoreboard players operation @a totalCurrentDurability *= @a lasTemp
scoreboard players operation @a baseArmorPoints *= @a lasTemp
scoreboard players operation @a totalBaseDurability *= @a lasTemp

# set lasTemp to totalCurrentDurability
scoreboard players operation @a lasTemp = @a totalCurrentDurability
# multiply lasTemp by baseArmorPoints
scoreboard players operation @a lasTemp *= @a baseArmorPoints
# divide by totalBaseDurability
scoreboard players operation @a lasTemp /= @a totalBaseDurability
# If Player is wearing armor but it's so low on HP it'd normally give no AP, give 1 AP.
# Might not be accurate, check Beta 1.7.3 for specifics.
# Removed due to being buggy. Try fixing it.
# scoreboard players add @a[scores={armorPieces=1..,lasTemp=0}] lasTemp 1

# set currentArmorPoints
scoreboard players operation @a currentArmorPoints = @a lasTemp
# if currentArmorPoints changed, recalculate armor.
execute as @a unless score @s currentArmorPoints = @s lastArmorPoints run function las:calcarmor
# Set lastArmorPoints to currentArmorPoints.
scoreboard players operation @a lastArmorPoints = @a currentArmorPoints
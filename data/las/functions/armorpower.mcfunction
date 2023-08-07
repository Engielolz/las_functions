# (baseArmorPoints * totalCurrentDurability) / totalBaseDurability = lasTemp

# Help fix precision loss
scoreboard players set @a lasTemp 100
# Multiply everything by 100
execute as @a run scoreboard players operation @s totalCurrentDurability *= @s lasTemp
execute as @a run scoreboard players operation @s baseArmorPoints *= @s lasTemp
execute as @a run scoreboard players operation @s totalBaseDurability *= @s lasTemp

# set lasTemp to totalCurrentDurability
execute as @a run scoreboard players operation @s lasTemp = @s totalCurrentDurability
# multiply lasTemp by baseArmorPoints
execute as @a run scoreboard players operation @s lasTemp *= @s baseArmorPoints
# divide by totalBaseDurability
execute as @a run scoreboard players operation @s lasTemp /= @s totalBaseDurability
# If Player is wearing armor but it's so low on HP it'd normally give no AP, give 1 AP.
# Might not be accurate, check Beta 1.7.3 for specifics.
# Removed due to being buggy. Try fixing it.
# scoreboard players add @a[scores={armorPieces=1..,lasTemp=0}] lasTemp 1

# set currentArmorPoints
execute as @a run scoreboard players operation @s currentArmorPoints = @s lasTemp
# if currentArmorPoints changed, recalculate armor.
execute as @a unless score @s currentArmorPoints = @s lastArmorPoints run function las:calcarmor
# Set lastArmorPoints to currentArmorPoints.
execute as @a run scoreboard players operation @s lastArmorPoints = @s currentArmorPoints
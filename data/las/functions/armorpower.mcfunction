# Entry point: currentdurability.mcfunction

# The magical Beta 1.7.3 formula:
# (baseArmorPoints * totalCurrentDurability) / totalBaseDurability = lasTemp

# Stupid hack to mitigate precision loss
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

# set currentArmorPoints
execute as @a run scoreboard players operation @s currentArmorPoints = @s lasTemp
# if currentArmorPoints changed, recalculate armor.
execute as @a unless score @s currentArmorPoints = @s lastArmorPoints run function las:calcarmor
# Set lastArmorPoints to currentArmorPoints.
execute as @a run scoreboard players operation @s lastArmorPoints = @s currentArmorPoints

# This is where it ends.
# calcarmor runs if the armor changed from what it was previously
# but if it didn't, we can save on CPU time and just stop.
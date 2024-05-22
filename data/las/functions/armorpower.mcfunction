# Entry point: currentdurability.mcfunction
# In that file, this is always called to run on all players

# The magical Beta 1.7.3 formula:
# (baseArmorPoints * totalCurrentDurability) / totalBaseDurability = lasTemp

# Stupid hack to mitigate precision loss
scoreboard players set @s lasTemp 100
# Multiply everything by 100
scoreboard players operation @s totalCurrentDurability *= @s lasTemp
scoreboard players operation @s baseArmorPoints *= @s lasTemp
scoreboard players operation @s totalBaseDurability *= @s lasTemp

# set lasTemp to totalCurrentDurability
scoreboard players operation @s lasTemp = @s totalCurrentDurability
# multiply lasTemp by baseArmorPoints
scoreboard players operation @s lasTemp *= @s baseArmorPoints
# divide by totalBaseDurability
scoreboard players operation @s lasTemp /= @s totalBaseDurability

# set currentArmorPoints
scoreboard players operation @s currentArmorPoints = @s lasTemp
# if currentArmorPoints changed, recalculate armor.
execute unless score @s currentArmorPoints = @s lastArmorPoints run function las:calcarmor
# Set lastArmorPoints to currentArmorPoints.
scoreboard players operation @s lastArmorPoints = @s currentArmorPoints

# This is where it ends.
# calcarmor runs if the armor changed from what it was previously
# but if it didn't, we can save on CPU time and just stop.
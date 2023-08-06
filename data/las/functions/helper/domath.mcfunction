# Instructions for usage
# Before using run the following commands
# scoreboard players operation @s lasTemp = @s currentArmorPoints
# scoreboard players set @s lasTemp2 <NUM> where NUM is the percentage
# Multiply lasTemp (currentArmorPoints) by NUM
scoreboard players operation @s lasTemp *= @s lasTemp2
# Then correct it to get our proper number
# First remove the zero, then again to get a 100s number
scoreboard players set @s lasTemp2 10
scoreboard players operation @s lasTemp /= @s lasTemp2
scoreboard players operation @s lasTemp /= @s lasTemp2
# Our final result is set in targetArmorPoints.
scoreboard players operation @s targetArmorPoints = @s lasTemp
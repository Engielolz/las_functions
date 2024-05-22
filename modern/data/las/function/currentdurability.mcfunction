# Entry point: loop.mcfunction
# In that file, this is always called to run on all players

# Fetch armor damage values of everyone and store them
function las:helper/getarmvl

# Get total current durability
# =========================
scoreboard players set @s totalCurrentDurability 0
# Add up durability
# There is an elytra fix but nothing for pumpkins. Do we need it?
scoreboard players operation @s totalCurrentDurability += @s currentHelmetDurability
# Fix Elytra messing with armor points
scoreboard players operation @s[scores={hasChestplate=1}] totalCurrentDurability += @s currentChestplateDurability
scoreboard players operation @s totalCurrentDurability += @s currentLeggingsDurability
scoreboard players operation @s totalCurrentDurability += @s currentBootsDurability

# Convert total current durability into something we can use.
scoreboard players operation @s lasTemp = @s totalBaseDurability
scoreboard players operation @s lasTemp -= @s totalCurrentDurability
scoreboard players operation @s totalCurrentDurability = @s lasTemp

# Now we can move on and calcluate the armor power
function las:armorpower
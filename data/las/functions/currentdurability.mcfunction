# Entry point: loop.mcfunction

# Check the armor's damage tag
# First, reset
scoreboard players set @a currentHelmetDurability 0
scoreboard players set @a currentChestplateDurability 0
scoreboard players set @a currentLeggingsDurability 0
scoreboard players set @a currentBootsDurability 0


# Fetch armor damage values of everyone and store them
execute as @a store result score @s currentHelmetDurability run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute as @a store result score @s currentChestplateDurability run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute as @a store result score @s currentLeggingsDurability run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute as @a store result score @s currentBootsDurability run data get entity @s Inventory[{Slot:100b}].tag.Damage

# Get total current durability
# =========================
scoreboard players set @a totalCurrentDurability 0
# Add up durability
# There is an elytra fix but nothing for pumpkins. Do we need it?
execute as @a run scoreboard players operation @s totalCurrentDurability += @s currentHelmetDurability
# Fix Elytra messing with armor points
execute as @a run scoreboard players operation @s[scores={hasChestplate=1}] totalCurrentDurability += @s currentChestplateDurability
execute as @a run scoreboard players operation @s totalCurrentDurability += @s currentLeggingsDurability
execute as @a run scoreboard players operation @s totalCurrentDurability += @s currentBootsDurability

# Convert total current durability into something we can use.
execute as @a run scoreboard players operation @s lasTemp = @s totalBaseDurability
execute as @a run scoreboard players operation @s lasTemp -= @s totalCurrentDurability
execute as @a run scoreboard players operation @s totalCurrentDurability = @s lasTemp

# Now we can move on and calcluate the armor power
function las:armorpower
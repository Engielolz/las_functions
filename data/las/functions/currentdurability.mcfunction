# INIT current durability
# =======================
scoreboard objectives add currentHelmetDurability dummy
scoreboard objectives add currentChestplateDurability dummy
scoreboard objectives add currentLeggingsDurability dummy
scoreboard objectives add currentBootsDurability dummy
scoreboard objectives add lasTemp dummy
scoreboard objectives add totalCurrentDurability dummy

# Check the armor's damage tag
# First, reset
scoreboard players set @a currentHelmetDurability 0
scoreboard players set @a currentChestplateDurability 0
scoreboard players set @a currentLeggingsDurability 0
scoreboard players set @a currentBootsDurability 0


# Fetch them values!
# DANGER: This uses a limit becuase @a by itself doesn't work. FIX THIS BEFORE RELEASE
execute store result score @a currentHelmetDurability run data get entity @a[limit=1] Inventory[{Slot:103b}].tag.Damage
execute store result score @a currentChestplateDurability run data get entity @a[limit=1] Inventory[{Slot:102b}].tag.Damage
execute store result score @a currentLeggingsDurability run data get entity @a[limit=1] Inventory[{Slot:101b}].tag.Damage
execute store result score @a currentBootsDurability run data get entity @a[limit=1] Inventory[{Slot:100b}].tag.Damage

# Get total current durability
# =========================
scoreboard players set @a totalCurrentDurability 0
scoreboard players operation @a totalCurrentDurability += @a currentHelmetDurability
scoreboard players operation @a totalCurrentDurability += @a currentChestplateDurability
scoreboard players operation @a totalCurrentDurability += @a currentLeggingsDurability
scoreboard players operation @a totalCurrentDurability += @a currentBootsDurability

# Convert total current durability into something we can use.
scoreboard players operation @a lasTemp = @a totalBaseDurability
scoreboard players operation @a lasTemp -= @a totalCurrentDurability
scoreboard players operation @a totalCurrentDurability = @a lasTemp

function las:armorpower
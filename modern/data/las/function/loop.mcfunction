# Entry point: Minecraft itself, ran every tick

# Debugging
execute as @a unless score @s LAS.Debug matches 0.. run scoreboard players enable @s LAS.Debug
execute as @a[scores={LAS.Debug=1}] run function las:debug

# Check armor to get base durability:
# ===================================

# We should reset everything first
scoreboard players set @a helmetBaseDurability 0
scoreboard players set @a chestplateBaseDurability 0
scoreboard players set @a leggingsBaseDurability 0
scoreboard players set @a bootsBaseDurability 0
# from currentdurability
scoreboard players set @a currentHelmetDurability 0
scoreboard players set @a currentChestplateDurability 0
scoreboard players set @a currentLeggingsDurability 0
scoreboard players set @a currentBootsDurability 0
# from basearmorpoints
scoreboard players set @a hasHelmet 0
scoreboard players set @a hasChestplate 0
scoreboard players set @a hasLeggings 0
scoreboard players set @a hasBoots 0
scoreboard players set @a armorPieces 0
scoreboard players set @a baseArmorPoints 0

# these NBT calls are very slow. Maybe figure out a way to optimize?

# Leather
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] helmetBaseDurability 55
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] chestplateBaseDurability 80
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] leggingsBaseDurability 75
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] bootsBaseDurability 65

# Gold
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:golden_helmet",Slot:103b}]}] helmetBaseDurability 77
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:golden_chestplate",Slot:102b}]}] chestplateBaseDurability 112
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:golden_leggings",Slot:101b}]}] leggingsBaseDurability 105
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:golden_boots",Slot:100b}]}] bootsBaseDurability 91

# Chainmail
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b}]}] helmetBaseDurability 165
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",Slot:102b}]}] chestplateBaseDurability 240
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings",Slot:101b}]}] leggingsBaseDurability 225
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:chainmail_boots",Slot:100b}]}] bootsBaseDurability 195

# Iron
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b}]}] helmetBaseDurability 165
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",Slot:102b}]}] chestplateBaseDurability 240
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:iron_leggings",Slot:101b}]}] leggingsBaseDurability 225
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] bootsBaseDurability 195

# Diamond
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:103b}]}] helmetBaseDurability 363
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate",Slot:102b}]}] chestplateBaseDurability 528
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:diamond_leggings",Slot:101b}]}] leggingsBaseDurability 495
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:diamond_boots",Slot:100b}]}] bootsBaseDurability 429

# Netherite
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:netherite_helmet",Slot:103b}]}] helmetBaseDurability 407
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:netherite_chestplate",Slot:102b}]}] chestplateBaseDurability 592
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:netherite_leggings",Slot:101b}]}] leggingsBaseDurability 555
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:netherite_boots",Slot:100b}]}] bootsBaseDurability 481

# Turtle Shell
scoreboard players set @a[nbt={Inventory:[{id:"minecraft:turtle_helmet",Slot:103b}]}] helmetBaseDurability 275

# Calculate base armor points
function las:basearmorpoints

# Get total base durability
# =========================
scoreboard players set @a totalBaseDurability 0
execute as @a run scoreboard players operation @s totalBaseDurability += @s helmetBaseDurability
execute as @a run scoreboard players operation @s totalBaseDurability += @s chestplateBaseDurability
execute as @a run scoreboard players operation @s totalBaseDurability += @s leggingsBaseDurability
execute as @a run scoreboard players operation @s totalBaseDurability += @s bootsBaseDurability

# We're done here, move on to fetch current durability
execute as @a run function las:currentdurability
scoreboard players set @a hasHelmet 0
scoreboard players set @a hasChestplate 0
scoreboard players set @a hasLeggings 0
scoreboard players set @a hasBoots 0
scoreboard players set @a armorPieces 0

scoreboard players set @a baseArmorPoints 0
scoreboard players add @a[scores={helmetBaseDurability=1..}] baseArmorPoints 3
scoreboard players set @a[scores={helmetBaseDurability=1..}] hasHelmet 1
scoreboard players add @a[scores={chestplateBaseDurability=1..}] baseArmorPoints 8
scoreboard players set @a[scores={chestplateBaseDurability=1..}] hasChestplate 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b}]}] baseArmorPoints 6
scoreboard players set @a[nbt={Inventory:[{Slot:101b}]}] hasLeggings 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b}]}] baseArmorPoints 3
scoreboard players set @a[nbt={Inventory:[{Slot:100b}]}] hasBoots 1

scoreboard players add @a[scores={hasHelmet=1}] armorPieces 1
scoreboard players add @a[scores={hasChestplate=1}] armorPieces 1
scoreboard players add @a[scores={hasLeggings=1}] armorPieces 1
scoreboard players add @a[scores={hasBoots=1}] armorPieces 1
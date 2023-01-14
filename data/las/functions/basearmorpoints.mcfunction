scoreboard objectives add baseArmorPoints dummy

scoreboard objectives add hasHelmet dummy
scoreboard objectives add hasChestplate dummy
scoreboard objectives add hasLeggings dummy
scoreboard objectives add hasBoots dummy
scoreboard objectives add armorPieces dummy

scoreboard players set @a hasHelmet 0
scoreboard players set @a hasChestplate 0
scoreboard players set @a hasLeggings 0
scoreboard players set @a hasBoots 0
scoreboard players set @a armorPieces 0

scoreboard players set @a baseArmorPoints 0
scoreboard players add @a[nbt={Inventory:[{Slot:103b}]}] baseArmorPoints 3
scoreboard players set @a[nbt={Inventory:[{Slot:103b}]}] hasHelmet 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b}]}] baseArmorPoints 8
scoreboard players set @a[nbt={Inventory:[{Slot:102b}]}] hasChestplate 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b}]}] baseArmorPoints 6
scoreboard players set @a[nbt={Inventory:[{Slot:101b}]}] hasLeggings 1
scoreboard players add @a[nbt={Inventory:[{Slot:100b}]}] baseArmorPoints 3
# See armorpower.mcfunction
# scoreboard players remove @a[nbt={Inventory:[{Slot:100b}]}] baseArmorPoints 1
scoreboard players set @a[nbt={Inventory:[{Slot:100b}]}] hasBoots 1

scoreboard players add @a[scores={hasHelmet=1}] armorPieces 1
scoreboard players add @a[scores={hasChestplate=1}] armorPieces 1
scoreboard players add @a[scores={hasLeggings=1}] armorPieces 1
scoreboard players add @a[scores={hasBoots=1}] armorPieces 1
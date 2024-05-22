# Check player armor and set scores accordingly
# Use of *BaseDurability over NBT is to prevent issues with Elytra/Pumpkins and improve performance
scoreboard players add @a[scores={helmetBaseDurability=1..}] baseArmorPoints 3
scoreboard players add @a[scores={chestplateBaseDurability=1..}] baseArmorPoints 8
scoreboard players add @a[scores={leggingsBaseDurability=1..}] baseArmorPoints 6
scoreboard players add @a[scores={bootsBaseDurability=1..}] baseArmorPoints 3

# todo: rewrite calcarmor and currentdurability to remove these
scoreboard players set @a[scores={helmetBaseDurability=1..}] hasHelmet 1
scoreboard players set @a[scores={chestplateBaseDurability=1..}] hasChestplate 1
scoreboard players set @a[scores={leggingsBaseDurability=1..}] hasLeggings 1
scoreboard players set @a[scores={bootsBaseDurability=1..}] hasBoots 1


# Tally up how much armor everyone has
scoreboard players add @a[scores={hasHelmet=1}] armorPieces 1
scoreboard players add @a[scores={hasChestplate=1}] armorPieces 1
scoreboard players add @a[scores={hasLeggings=1}] armorPieces 1
scoreboard players add @a[scores={hasBoots=1}] armorPieces 1
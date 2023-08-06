# (baseArmorPoints * totalCurrentDurability) / totalBaseDurability = lasTemp

# Help fix precision loss
scoreboard players set @a lasTemp 100
scoreboard players operation @a totalCurrentDurability *= @a lasTemp
scoreboard players operation @a baseArmorPoints *= @a lasTemp
scoreboard players operation @a totalBaseDurability *= @a lasTemp

# set lasTemp to totalCurrentDurability
scoreboard players operation @a lasTemp = @a totalCurrentDurability
# multiply lasTemp by baseArmorPoints
scoreboard players operation @a lasTemp *= @a baseArmorPoints
# divide by totalBaseDurability
scoreboard players operation @a lasTemp /= @a totalBaseDurability
# If Player is wearing armor but it's so low on HP it'd normally give no AP, give 1 AP.
# Might not be accurate, check Beta 1.7.3 for specifics.
# Removed due to being buggy. Try fixing it.
# scoreboard players add @a[scores={armorPieces=1..,lasTemp=0}] lasTemp 1

# Strange ass manual overrides
# You should always have 1 AP per piece of armor. At least, I think that's how it worked...
# scoreboard players set @a[scores={armorPieces=4..,lasTemp=..3}] lasTemp 4
# scoreboard players set @a[scores={armorPieces=3..,lasTemp=..2}] lasTemp 3
# scoreboard players set @a[scores={armorPieces=2..,lasTemp=..1}] lasTemp 2
# scoreboard players set @a[scores={armorPieces=1..,lasTemp=..0}] lasTemp 1


scoreboard players operation @a currentArmorPoints = @a lasTemp

execute as @a unless score @s currentArmorPoints = @s lastArmorPoints run function las:calcarmor
scoreboard players operation @a lastArmorPoints = @a currentArmorPoints
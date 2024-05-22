# Full set and Helm + Boots
# So we need to determine the durability of the armor and set it accordingly
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Multiply by 15 for helmet/boots
scoreboard players set @s lasTemp2 15
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet/boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet
function las:data/setboots

# Chestplate is next
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Multiply by 40 this time
scoreboard players set @s lasTemp2 40
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate

# Last up, the leggings
# Same as the other but with multiply of 30
scoreboard players operation @s lasTemp = @s currentArmorPoints
scoreboard players set @s lasTemp2 30
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for leggings is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setleggings
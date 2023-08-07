# Helmet, Chestplate, and Leggings
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Helmet is 18
scoreboard players set @s lasTemp2 18
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet

scoreboard players operation @s lasTemp = @s currentArmorPoints
# Chestplate is 47
scoreboard players set @s lasTemp2 47
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate

# Leggings is 35
scoreboard players operation @s lasTemp = @s currentArmorPoints
scoreboard players set @s lasTemp2 35
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for leggings is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setleggings
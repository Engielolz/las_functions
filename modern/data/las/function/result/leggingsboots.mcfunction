# Leggings + Boots
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Leggings
scoreboard players set @s lasTemp2 67
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for leggings is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setleggings

scoreboard players operation @s lasTemp = @s currentArmorPoints
# Boots
scoreboard players set @s lasTemp2 33
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setboots
# Chestplate + Boots
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Chestplate
scoreboard players set @s lasTemp2 73
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate

scoreboard players operation @s lasTemp = @s currentArmorPoints
# Boots
scoreboard players set @s lasTemp2 27
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setboots
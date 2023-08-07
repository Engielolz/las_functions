# Chestplate + Leggings
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Chestplate
scoreboard players set @s lasTemp2 57
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate

scoreboard players operation @s lasTemp = @s currentArmorPoints
# Leggings
scoreboard players set @s lasTemp2 43
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for leggings is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setleggings
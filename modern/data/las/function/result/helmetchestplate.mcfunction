# Helm + Chestplate
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Start with helmet.
scoreboard players set @s lasTemp2 27
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet

scoreboard players operation @s lasTemp = @s currentArmorPoints
# Next up is chestplate
scoreboard players set @s lasTemp2 73
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate
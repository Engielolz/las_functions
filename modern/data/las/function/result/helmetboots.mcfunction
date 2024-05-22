# Helm + Boots
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Multiply by 50 for both helmet/boots
scoreboard players set @s lasTemp2 50
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet/boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet
function las:data/setboots
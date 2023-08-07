# Helmet, Leggings, and Boots (the Elytra one lol)
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Helmet and Boots are 25
scoreboard players set @s lasTemp2 25
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet/boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet
function las:data/setboots

# Leggings is 50
scoreboard players operation @s lasTemp = @s currentArmorPoints
scoreboard players set @s lasTemp2 50
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for leggings is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setleggings
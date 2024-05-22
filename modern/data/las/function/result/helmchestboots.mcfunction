# Helmet, Chestplate, and Boots
tellraw @s[tag=LAS.DebugMsg.OptIn] {"text":"[Debug] Warning: This combo has precision issues"}
scoreboard players operation @s lasTemp = @s currentArmorPoints
# Helmet and Boots are 21
scoreboard players set @s lasTemp2 21
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for helmet/boots is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/sethelmet
function las:data/setboots

# Cheatplate is 58
scoreboard players operation @s lasTemp = @s currentArmorPoints
scoreboard players set @s lasTemp2 58
function las:helper/domath
tellraw @s[tag=LAS.DebugMsg.OptIn] [{"text":"The targetArmorPoints for chestplate is "},{"score":{"name":"@s","objective":"targetArmorPoints"}}]
function las:data/setchestplate
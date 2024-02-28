a guide to what the scoreboard variables and tags do

# scoreboard variables

## LAS.Debug

this variable is a trigger that runs a script to output debug info when triggered. most of this information was only useful in development when las didn't fully work, although you can get a glimpse of how las works as it spits out the values and abbreviated names of many of the variables.

## *basedurability

these are used by loop.mcfunction to set the normal "healthy" durability for the armor the players are wearing. at the end of loop.mcfunction, all the basedurabilities are tallied together to become the aptly named totalBaseDurability

## has(armor piece)

(as far as las is concerned) binary variables that say whether a player has the given armor piece or not. all handled in basearmorpoints.mcfunction (i think)

it is set to 1 if the helmet or chestplate base durability is non-zero, and by manually looking at inventory nbt for leggings and boots. while it does that it also adds to the baseArmorPoints and armorPieces (see below)

notably hasChestplate is used in currentdurability has a crude elytra fix. the other has(armor pieces) are not used unless armorcalc.mcfunction is called

## baseArmorPoints

this value is how much in armor points an undamaged armor set would protect the player. calculated in basearmorpoints.mcfunction (hence the name of the function)

used to calculate currentArmorPoints (see below)

## armorPieces

how many pieces of armor you're wearing. calculated in basearmorpoints.mcfunction. non-armor wearables are NOT counted as the aforementioned function checks durability for has(armor piece) (also basearmorpoints) which is then used to calculate this variable. putting shit on your legs and feet might cause problems, but who would do that?

this variable is only really used in calcarmor.mfunction, used along with has(armor piece) to determine what combination you're wearing

**(this function could probably be moved to calcarmor to save resources)**

## totalBaseDurability

holds the result of tallying up all the base durabilities. it gets used with totalCurrentDurability to basically invert it.

used to calculate currentArmorPoints (see below)

## current(Armor piece)Durability

these variables store the damage values of the current armor. mainly handled in currentdurability.mcfunction. all of them are tallied up to become totalCurrentDurability much like totalBaseDurability.

## totalCurrentDurability

a tally of the current durabilities. one of the 3 variables used to calculate currentArmorPoints, but it gets inverted before that by getting subtracted by totalBaseDurability (i think)

## lasTemp

this is a temporary variable as the name implies, and it is used to store things that need further processing and can't be done in one go. first used in currentdurability.mcfunction and used in most other functions following it.

## currentArmorPoints

this value is the protection value of the current armor the player is wearing. almost all of the other variables are there to calculate this variable.

## lastArmorPoints

the currentArmorPoints of the last tick. if the newly calculated currentArmorPoints is different from this variable, it will run calcarmor.mcfunction. this is done so it doesn't need to re-calc armor every tick.

## lasTemp2

the second temp variable. currently this is only used by domath.mcfunction and is set to a percentage by whatever is calling it. targetArmorPoints is then set to this percentage of currentArmorPoints.

## targetArmorPoints

this is used to map the currentArmorPoints to the armor. it stores in XYY format where it is X.YY armor points. it is a percentage (stored in lasTemp2) of the currentArmorPoints, calculated via domath.mcfunction.

this is done one armor piece at a time. if you were to add up all targetArmorPoints that get put on the armor, it should equal the currentArmorPoints.

# tag

## LAS.DebugMsg.OptIn

players with this tag set will be told about the targetArmorPoints for the armor they're wearing as well as a warning about precision issues if applicable. this message will appear every time the armor updates.

# oddities

why does has(armor piece) exist when we can just use *basedurability=1..

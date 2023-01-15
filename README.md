# Legacy Armor System Proof of Concept
This very unfinished datapack makes Minecraft's armor system work like it did in Beta, at least in theory.

Well, it does work! The equation is ~fully~ mostly implemented, just kinda rough around the edges. I just haven't fully mapped it to the armor.

## Supported armor configurations
* One of the four pieces of armor, on their own
* The full set
* A Helmet and Boots
* Everything but a Helmet

## What doesn't work
* All armor configurations not listed above
* Turtle Shells and Elytra aren't accounted for, not even as exceptions
* The individual armor values don't match up when wearing multiple pieces. (Wearing a damaged helmet alone gives 2 armor points but in a set it gives 1)
* Multiplayer. I wrote the code during an all-nighter and probably only works because I said nice things to it.
* It doesn't auto-run continuously like it needs to. Put `function las:armorcalculate` in a repeating command block to play with it.

## About the lazy branch
The lazy branch calculates armor points for each armor piece instead of calculating the total and then mapping it to the pieces. It only works for the helmet though.

-----
If you want something that actually functions, try out [Nostalgic Food System](http://github.com/Engielolz/nfs_functions). It's like LAS, but with food, and it actually functions well enough to be used!

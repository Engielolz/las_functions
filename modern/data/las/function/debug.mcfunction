# Called by /trigger LAS.Debug
function las:helper/variant
tellraw @s [{"text":"Base Durability: "},{"score":{"name":"@s","objective":"helmetBaseDurability"},"hoverEvent":{"action":"show_text","contents":[{"text":"helmetBaseDurability"}]}},{"text":", "},{"score":{"name":"@s","objective":"chestplateBaseDurability"},"hoverEvent":{"action":"show_text","contents":[{"text":"chestplateBaseDurability"}]}},{"text":", "},{"score":{"name":"@s","objective":"leggingsBaseDurability"},"hoverEvent":{"action":"show_text","contents":[{"text":"leggingsBaseDurability"}]}},{"text":", "},{"score":{"name":"@s","objective":"bootsBaseDurability"},"hoverEvent":{"action":"show_text","contents":[{"text":"bootsBaseDurability"}]}},{"text":", Total: "},{"score":{"name":"@s","objective":"totalBaseDurability"},"hoverEvent":{"action":"show_text","contents":[{"text":"totalBaseDurability"}]}}]
tellraw @s [{"text":"Current Durability: "},{"hoverEvent":{"action":"show_text","value":[{"text":"currentHelmetDurability"}]},"score":{"name":"@s","objective":"currentHelmetDurability"}},{"text":", "},{"hoverEvent":{"action":"show_text","value":[{"text":"currentChestplateDurability"}]},"score":{"name":"@s","objective":"currentChestplateDurability"}},{"text":", "},{"hoverEvent":{"action":"show_text","value":[{"text":"currentLeggingsDurability"}]},"score":{"name":"@s","objective":"currentLeggingsDurability"}},{"text":", "},{"hoverEvent":{"action":"show_text","value":[{"text":"currentBootsDurability"}]},"score":{"name":"@s","objective":"currentBootsDurability"}},{"text":", Total: "},{"hoverEvent":{"action":"show_text","value":[{"text":"totalCurrentDurability"}]},"score":{"name":"@s","objective":"totalCurrentDurability"}}]
tellraw @s [{"text":"baseArmorPoints: "},{"score":{"name":"@s","objective":"baseArmorPoints"}},{"text":" currentArmorPoints: "},{"score":{"name":"@s","objective":"currentArmorPoints"}}]
scoreboard players set @s LAS.Debug 0
scoreboard players enable @s LAS.Debug
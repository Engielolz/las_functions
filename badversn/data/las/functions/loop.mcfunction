scoreboard objectives add LAS.Unsupported dummy
execute as @a unless score @s LAS.Unsupported = @s LAS.Unsupported run scoreboard players set @s LAS.Unsupported 1
execute as @a[scores={LAS.Unsupported=1}] run tellraw @a [{"text":"[LAS] Due to "},{"clickEvent":{"action":"open_url","value":"https://bugs.mojang.com/browse/MC-269482"},"color":"blue","text":"MC-269482","underlined":true},{"text":", this datapack is not compatible with the version of Minecraft you're running. It is recommended you update to 24w14a or a later version of Minecraft: Java Edition."}]
execute as @a[scores={LAS.Unsupported=1}] run scoreboard players set @s LAS.Unsupported 0
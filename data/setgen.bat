@echo off
:start
set /p slot=slot=
set maxnum=0
if %slot% == head set name=helmet&& set maxnum=306
if %slot% == chest set name=chestplate&& set maxnum=812
if %slot% == legs set name=leggings&& set maxnum=603
if %slot% == feet set name=boots&& set maxnum=306
if %maxnum% == 0 echo *incorrect buzzer noise* && goto start
:startloop
if not exist las\functions\data mkdir las\functions\data
set num=1
:loop
echo item modify entity @s[scores={targetArmorPoints=%num%}] armor.%slot% las:%slot%-%num%>>las\functions\data\set%name%.mcfunction
if %num% GEQ %maxnum% goto start
set /a num+=1
goto loop
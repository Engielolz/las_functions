@echo off
:start
set /p slot=slot=
set maxnum=0
if %slot% == head set name=helmet&& set maxnum=300
if %slot% == chest set name=chestplate&& set maxnum=800
if %slot% == legs set name=leggings&& set maxnum=600
if %slot% == feet set name=boots&& set maxnum=300
if %maxnum% == 0 echo *incorrect buzzer noise* && goto start
:startloop
set num=1
:loop
echo item modify entity @s[scores={targetArmorPoints=%num%}] armor.%slot% las:%slot%-%num%>>las\functions\result\set%name%.mcfunction
if %num% GEQ %maxnum% goto start
set /a num+=1
goto loop
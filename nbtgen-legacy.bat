@echo off
pushd %~dp0
echo Please wait while the item modifiers are generated. This may take some time...
call :start head
call :start chest
call :start legs
call :start feet
del data\las\item_modifiers\*.json 2>nul
move jsons data\las\item_modifiers
popd
pause
:start
set slot=%1
if %slot% == head set uuid=[I;718533190,-18788761,-1199150595,940290384]&& set maxnum=3.06
if %slot% == chest set uuid=[I;-1623373971,-1055374012,-2090507132,1761916046]&& set maxnum=8.12
if %slot% == legs set uuid=[I;-666264828,241583910,-1423350714,-1653387763]&& set maxnum=6.03
if %slot% == feet set uuid=[I;-2074234244,-970700449,-1935712224,-1448768661]&& set maxnum=3.06

:main
if not exist jsons\ mkdir jsons
set major=0
set minor=1
set slot2=%slot%
set num=1
:loop
if %minor% LEQ 9 (set displayminor=0%minor%) else (set displayminor=%minor%)
set amount=%major%.%displayminor%
echo {>jsons\%slot2%-%num%.json
echo 	"function": "minecraft:set_nbt",>>jsons\%slot2%-%num%.json
echo 	"tag": "{AttributeModifiers:[{AttributeName:\"generic.armor\",Name:\"generic.armor\",Amount:%amount%,Operation:0,UUID:%uuid%,Slot:\"%slot%\"}]}">>jsons\%slot2%-%num%.json
echo }>>jsons\%slot2%-%num%.json
set /a minor+=1
set /a num+=1
if %minor% == 100 set /a major+=1 && set minor=0
if %amount% == %maxnum% goto break
goto loop

:break
echo i made %slot2%!
set slot2=
exit /b 0
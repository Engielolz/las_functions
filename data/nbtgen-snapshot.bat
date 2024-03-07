@echo off
call :start head
call :start chest
call :start legs
call :start feet
move jsons las\item_modifiers
pause
:start
set slot=%1
if %slot% == head set uuid1=0&& set maxnum=3.06
if %slot% == chest set uuid1=2&& set maxnum=8.12
if %slot% == legs set uuid1=3&& set maxnum=6.03
if %slot% == feet set uuid1=1&& set maxnum=3.06

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
echo 	"function": "minecraft:set_components",>>jsons\%slot2%-%num%.json
echo 	"components": "attribute_modifiers={modifiers=[{AttributeName:\"generic.armor\",Name:\"generic.armor\",Amount:%amount%,Operation:0,UUID:[I;71853319%uuid1%,-18788761,-1199150595,940290384],Slot:\"%slot%\"}]}">>jsons\%slot2%-%num%.json
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
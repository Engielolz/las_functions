@echo off
call :start head
call :start chest
call :start legs
call :start feet
move jsons las\item_modifiers
pause
:start
set slot=%1
if %slot% == head set uuid1=0&& set maxnum=3
if %slot% == chest set uuid1=2&& set maxnum=8
if %slot% == legs set uuid1=3&& set maxnum=6
if %slot% == feet set uuid1=1&& set maxnum=3

:main
if not exist jsons\ mkdir jsons
set major=0
set minor=1
set slot2=%slot%
:loop
if %minor% LEQ 9 (set displayminor=0%minor%) else (set displayminor=%minor%)
set amount=%major%.%displayminor%
echo {>jsons\%slot2%-%major%%displayminor%.json
echo 	"function": "minecraft:set_nbt",>>jsons\%slot2%-%major%%displayminor%.json
echo 	"tag": "{AttributeModifiers:[{AttributeName:\"generic.armor\",Name:\"generic.armor\",Amount:%amount%,Operation:0,UUID:[I;71853319%uuid1%,-18788761,-1199150595,940290384],Slot:\"%slot%\"}]}">>jsons\%slot2%-%major%%displayminor%.json
echo }>>jsons\%slot2%-%major%%displayminor%.json
set /a minor+=1
if %minor% == 100 set /a major+=1 && set minor=0
if %major% == %maxnum% if %minor% GEQ 1 goto break
goto loop

:break
echo i made %slot2%!
set slot2=
exit /b 0
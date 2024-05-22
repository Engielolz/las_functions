@echo off
pushd %~dp0
echo Please wait while the item modifiers are generated. This may take some time...
call :start head
call :start chest
call :start legs
call :start feet
del modern\data\las\item_modifier\*.json 2>nul
move jsons modern\data\las\item_modifier
pause
popd
:start
set slot=%1
if %slot% == head set maxnum=3.06
if %slot% == chest set maxnum=8.12
if %slot% == legs set maxnum=6.03
if %slot% == feet set maxnum=3.06
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
echo 	"function": "minecraft:set_attributes",>>jsons\%slot2%-%num%.json
echo 	"modifiers": [>>jsons\%slot2%-%num%.json
echo        {>>jsons\%slot2%-%num%.json
echo            "attribute": "minecraft:generic.armor",>>jsons\%slot2%-%num%.json
echo            "operation": "add_value",>>jsons\%slot2%-%num%.json
echo            "slot": "%slot%",>>jsons\%slot2%-%num%.json
echo            "id": "las:%slot%",>>jsons\%slot2%-%num%.json
echo            "amount": %amount%>>jsons\%slot2%-%num%.json
echo        }>>jsons\%slot2%-%num%.json
echo    ]>>jsons\%slot2%-%num%.json
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
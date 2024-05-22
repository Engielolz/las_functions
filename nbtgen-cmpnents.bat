@echo off
pushd %~dp0
echo Please wait while the item modifiers are generated. This may take some time...
call :start head
call :start chest
call :start legs
call :start feet
del cmpnents\data\las\item_modifiers\*.json 2>nul
move jsons cmpnents\data\las\item_modifiers
popd
pause
:start
set slot=%1
if %slot% == head set uuid=2AD3F246-FEE1-4E67-B886-69FD380BB150&& set maxnum=3.06
if %slot% == chest set uuid=9F3D476D-C118-4544-8365-64846904B48E&& set maxnum=8.12
if %slot% == legs set uuid=D8499B04-0E66-4726-AB29-64469D734E0D&& set maxnum=6.03
if %slot% == feet set uuid=845DB27C-C624-495F-8C9F-6020A9A58B6B&& set maxnum=3.06

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
echo            "name": "",>>jsons\%slot2%-%num%.json
echo            "attribute": "minecraft:generic.armor",>>jsons\%slot2%-%num%.json
echo            "operation": "add_value",>>jsons\%slot2%-%num%.json
echo            "slot": "%slot%",>>jsons\%slot2%-%num%.json
echo            "id": "%uuid%",>>jsons\%slot2%-%num%.json
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
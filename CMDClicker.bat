��&cls
cls
@echo off
title CMDClicker


:starting
::DONT CHANGE ANYTHING THAT WILL BE MAKE GAME BORING
title CMDClicker
set/a money=0
set/a upgradebonus=10
set/a upgradecost=500
set/a currentupgradebonus=1

goto menu

:earnmoney
set/a money=%money% +%currentupgradebonus%
:menu
@Mode 36,8
cls
echo.        CMDclicker By Mehdi
echo.         For more press H
echo                v1.0
echo.
echo           Your Money %money%
echo.
echo          Type S for shop
Choice /C EHS /n
If %errorlevel% equ 1 goto earnmoney
If %errorlevel% equ 2 goto help
If %errorlevel% equ 3 goto shop

:shop
cls
echo B - %upgradebonus% Extra Click. Needs %upgradecost% gold
echo M - for menu
Choice /C BM /n
If %errorlevel% equ 1 goto buy
If %errorlevel% equ 2 goto menu

:buy
if %money% lss %upgradecost% goto nofund
set /a money=%money% - %upgradecost%
set /a currentupgradebonus= %upgradebonus% + %upgradebonus%
set/a upgradebonus=%upgradebonus% +10
set/a upgradecost=%upgradecost% +500
echo Now Clicks get %currentupgradebonus% bonus
pause>nul
goto menu

:nofund
cls
echo You dont have enought money
pause
goto menu

:help
::DONT OWN THIS PROJECT!!!
@Mode 50,8
cls
echo This is a simple game made in batch
echo Press E button to earn points
echo Press S for shop
echo Version v1.0
echo Game made by MEHDI-AZE
echo See Github for more https://github.com/MEHDI-AZE/
echo discord.gg/nDfu32Nxd7
pause>nul
goto menu
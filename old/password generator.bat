cls
@ECHO OFF
title Cyber Attack Weapon System
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD08002B30309D}" goto UNLOCK
if NOT EXIST Hidden goto MDHidden
:CONFIRM
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Hidden "Control Panel.{21EC2020-3AEA-1069-A2DD08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== 1234 goto FAIL
goto UNLOCK2
:UNLOCK2
CLS
echo Enter password to Unlock Your Secure Folder
set/p "pass=>"
if NOT %pass%== 1234 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
Hidden
echo Folder Unlocked successfully
goto End
:Fail
@echo off
color 02
echo Warning-Virus Initiated total hardrive corruption
imminent
timeout /t 5 /nobreak >nul
set count= 0
:tricks
if %count% == 200 goto shutdown
echo
%random%%random%%random%%random%%random%%random%%random%%r
andom%
set /a count=%count%+1
goto tricks
:shutdown
cls
:shutdown
shutdown -s -t 45 /c "You have tried to acces a file that
is not yours.
Good-Bye."
echo Enter password Start Abort Sequence
set/p "pass=>"
if NOT %pass%== 1234 goto shutdown
echo Abort Inittiated
goto Abort
:Abort
C:\Windows\System32\shutdown.exe -a
Abort Successful
timeout /t 3 /nobreak >nul
CLS
goto unlock
goto end
:MDHidden
md Hidden
echo Hidden created successfully
@echo off
color b
:1
cls
set /p q=Type your question
set /a ans=%q%
echo %ans%
pause
goto 1
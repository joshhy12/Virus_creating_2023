@echo off
:test
help color
echo -----------------------------------------------------
-----
echo.
echo Type a color code to test colors.
echo To exit, just press the X.
set/p color=
color %color%
goto test
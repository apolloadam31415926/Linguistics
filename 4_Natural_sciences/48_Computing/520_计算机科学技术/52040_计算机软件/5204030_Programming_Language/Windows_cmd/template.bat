:: template.bat
:: 2025-02-25
:: by: xdx
:: version: 1.0
:: description: bat template

:: close echo
@echo off

:: goto main
goto :main

:: check args
:function_check_args
echo "Arguments received: %*"
:: loop printe args
:loop
if "%1"=="" goto :eof
echo %1
shift
goto :loop
goto :EOF

:: usage
:function_usage
echo  "Usage: xx"
echo.
echo  description:      xxx
echo.
echo  arg1              xx
echo  arg2              xx
echo  argn              xx
echo.
echo Example: xx
goto :fail

:: function template
:function_xxx
goto :EOF

:: main function
:main

call:function_check_args %*

:: set var from args
set arg1=%~1

:: test args
set arg1="123"

call:function_xxx

goto :EOF

:: error handle
:fail
echo "something error"
:: change_filenames.bat
:: 2019-07-01 15:00:00
:: by: xdx
:: version: 1.0
:: description: change filenames

:: close echo
@echo off

:: goto main
goto :main

:: check args
:function_check_args
echo "Arguments received: %*"
echo "find arg1=%1 arg2=%2 arg3=%3 arg4=%4"
if /i "%1"=="/h" (
    goto :function_usage
)
if /i "%~1"=="" (
    goto :function_usage
)
if /i "%~2"=="" (
    goto :function_usage
)
if /i "%~3"=="" (
    goto :function_usage
)
if /i "%~4"=="" (
    goto :function_usage
)
if /i not "%~5"=="" (
    goto :function_usage
)
goto :EOF

:: change dir
:function_change_dir
cd /d %input_dir% 1>NUL 2>NUL || set success_flag=0
if errorlevel 1 (
    echo "[error] cd /d %input_dir%"
    goto :fail
)
goto :EOF

:: rename files 
:function_rename_files
set file_found=0
for %%i in (*) do ( 
    if "%%~xi"==".%input_format%" (
        :: 拷贝文件
        xcopy /Y %%i %output_dir%\%%~ni.%output_format%
        :: echo "xcopy /Y %%i %output_dir%\%%~ni.%output_format%"
        set file_found=1
    )
)
if "%file_found%"=="0" (
        echo "not found *.%input_format%"
        goto :fail
    )
goto :EOF

:: usage
:function_usage
::set EXITCODE=1
echo  "mutiple files re-name."
echo.
echo change_filenames input_dir output_dir input_format output_format
echo.
echo  input_dir         xx
echo  output_dir        xx
echo  input_format      xx
echo  output_format     xx
echo.
echo Example: change_filenames "c:\temp1" "c:\temp2" bmp png
goto :fail

:: function template
:function_xxx
goto :EOF

:: main function
:main

call:function_check_args %*

:: set var from args
set input_dir=%~1
set output_dir=%~2
set input_format=%3
set output_format=%4

call:function_change_dir
call:function_rename_files

goto :EOF

:: error handle
:fail
echo "something error"
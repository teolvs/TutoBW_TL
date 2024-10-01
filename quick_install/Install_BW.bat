@echo off
cls
:: Customize Window
title Brightway2 and Activity-Browser installation

echo Script version : 01/10/24
echo.
echo.  Miniforge3 installation
echo.
echo Miniforge3 installation will begin
echo Wait ...
start /wait "" Miniforge3-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=%UserProfile%\Miniforge3
echo Installation finished or Miniforge already existing in this PC

echo.  Micromamba installation
echo.
echo Micromamba installation will begin
echo Wait...
start /wait "" micromamba.exe
echo Installation finished or Micromamba already exists on this PC

:: Set the root to Miniforge3 installation path
set root=%UserProfile%\Miniforge3

:: Add Miniforge binaries to the PATH
set PATH=%root%\Scripts;%root%\Library\bin;%PATH%

:: Activate base environment
call %root%\Scripts\activate.bat


setlocal EnableExtensions

:: Menu Options
set "Op[1]=Activity-Browser installation"
set "Op[2]=Brightway2 installation"

:: Display the Menu
set "Message="
:Menu2
echo.%Message%
echo.
echo.  Brightway2 installation
echo.
set "x=0"
:MenuLoop
set /a "x+=1"
if defined Op[%x%] (
    call echo   %x%. %%Op[%x%]%%
    goto MenuLoop
)
echo.

:: Prompt User for Choice
:Prompt
set "Input2="
set /p "Input2=Select your choice (1, 2), and press enter : "

:: Validate Input [Remove Special Characters]
if not defined Input2 goto Prompt
set "Input2=%Input2:"=%"
set "Input2=%Input2:^=%"
set "Input2=%Input2:<=%"
set "Input2=%Input2:>=%"
set "Input2=%Input2:&=%"
set "Input2=%Input2:|=%"
set "Input2=%Input2:(=%"
set "Input2=%Input2:)=%"
:: Equals are not allowed in variable names
set "Input2=%Input2:^==%"
call :Validate2 %Input2%

:: Process Input
call :Process %Input2%
goto End


:Validate2
set "Next=%2"
if not defined Op[%1] (
    set "Message=Invalid Input: %1"
    goto Menu2
)
if defined Next shift & goto Validate2
goto :eof


:Process
set "Next=%2"
call set "Op=%%Op[%1]%%"

:: Run Installations
if "%1" EQU "1" (
    echo Activity-Browser installation will begin.
    conda env create -f environment_AB_Win64.yml
    echo Installation finished. Activity-Browser is installed in environment 'ab'.
    pause
    exit
)
if "%1" EQU "2" (
    echo Brightway2 installation will begin.
    conda env create -f environment_BW_LCA_algeb.yml
    echo Installation finished. Brightway2 is installed in environment 'bw_lca'.
    pause
    exit
)

:End
endlocal
pause >nul

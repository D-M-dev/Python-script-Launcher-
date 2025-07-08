@echo off
title Python program launcher v1.2 by D.M
color 1F
cls

echo ================================
echo    PYTHON SCRIPT LAUNCHER
echo ================================
echo.

:: Wrong path
python --version >nul 2>&1
if errorlevel 1 (
    color 4F
    echo [Error] Python is not installed or not in path!!
    pause
    exit /b
)

set /p pyscript=Enter path to py. file. 
if not exist "%pyscript%" (
    color 4F
    echo [CHYBA] File "%pyscript%" does not exist!
    pause
    exit /b
)

echo.
echo [INFO] Launching program: %pyscript%
echo -------------------------------
python "%pyscript%"

echo -------------------------------
echo [END] Program has finnished.
pause

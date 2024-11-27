@echo off

:: Parámetros
set "target=%~1"
set "action=%~2"

:: Mostrar mensajes claros
chcp 65001 >nul

:: Decidir acción según el argumento recibido
if "%action%"=="open" (
	echo ------------------------------
    echo Abriendo %target%...
	echo ------------------------------
    fa l "%target%"
    pause
	exit /b
)

if "%action%"=="extract_here" (
	echo ------------------------------
    echo Extrayendo %target%...
	echo ------------------------------
    fa x "%target%"
    pause
	exit /b
)

if "%action%"=="extract_subfolder" (
	echo ------------------------------
    echo Extrayendo en subcarpeta desde %target%...
	echo ------------------------------
    fa x "%target%" -o+ -dp"%~n1"
    pause
	exit /b
)

if "%action%"=="compress_default" (
	echo ------------------------------
    echo Comprimiendo: %~nx1...
	echo ------------------------------
    fa a "%~dpn1.arc" -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m1" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m1...
	echo ------------------------------
    fa a "%~dpn1.arc" -m1 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m2" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m2...
	echo ------------------------------
    fa a "%~dpn1.arc" -m2 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m3" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m3...
	echo ------------------------------
    fa a "%~dpn1.arc" -m3 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m4" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m4...
	echo ------------------------------
    fa a "%~dpn1.arc" -m4 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m5" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m5...
	echo ------------------------------
    fa a "%~dpn1.arc" -m5 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m6" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m6...
	echo ------------------------------
    fa a "%~dpn1.arc" -m6 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m7" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m7...
	echo ------------------------------
    fa a "%~dpn1.arc" -m7 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m8" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m8...
	echo ------------------------------
    fa a "%~dpn1.arc" -m8 -s "%~nx1"
    pause
	exit /b
)

if "%action%"=="compress_m9" (
	echo ------------------------------
    echo Comprimiendo: %~nx1 con método -m9...
	echo ------------------------------
    fa a "%~dpn1.arc" -m9 -s "%~nx1"
    pause
	exit /b
)

:: Acción no reconocida
echo Acción "%action%" no válida.
pause
exit /b

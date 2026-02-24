@echo off
setlocal
set MODS_DIR=%APPDATA%\metro-maker4\mods
set SRC_DIR=%~dp0
set DST_DIR=%MODS_DIR%\citymapper

if not exist "%MODS_DIR%" mkdir "%MODS_DIR%"

echo.
echo ========================================
echo CityMapper Installer v1.0r
echo ========================================
echo.

REM Copy files
robocopy "%SRC_DIR%" "%DST_DIR%" /E /NFL /NDL /NJH /NJS /NP >nul

if %ERRORLEVEL% GEQ 8 (
  echo ERROR: Install failed. Check permissions.
  pause
  exit /b 1
)

echo ✓ Installed to: %DST_DIR%
echo.
echo Next: Launch Subway Builder ^> Settings ^> Mods
echo Enable "CityMapper - Railway Overlay"
echo.
echo GitHub: https://github.com/giorgiodabest/subway-builder-citymapper
echo.
pause
exit /b 0

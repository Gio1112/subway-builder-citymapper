@echo off
setlocal
set MODS_DIR=%APPDATA%\metro-maker4\mods
set DST_DIR=%MODS_DIR%\citymapper

echo.
echo ========================================
echo CityMapper Uninstaller v1.0r
echo ========================================
echo.

if exist "%DST_DIR%" (
  echo Removing: %DST_DIR%
  rmdir /S /Q "%DST_DIR%"
  echo ✓ Uninstalled successfully
) else (
  echo Not found: %DST_DIR%
)

echo.
echo You can reinstall anytime from:
echo https://github.com/giorgiodabest/subway-builder-citymapper
echo.
pause
exit /b 0

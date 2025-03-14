@echo off

:: Jalankan compile.bat untuk kompilasi kode Java
call compile.bat

:: Periksa apakah kompilasi berhasil
if %errorlevel% neq 0 (
    echo Terjadi kesalahan saat kompilasi.
    exit /b %errorlevel%
)

:: Jalankan one.bat untuk menjalankan simulasi DTN
call one.bat -b 1 config/epidemic_settings.txt

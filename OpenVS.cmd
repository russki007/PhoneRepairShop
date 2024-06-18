@echo off
setlocal
set ACC_SITE_PATH=C:\src\temp\AcumaticaERPInstall_ 24.191.0155P\PhoneRepairShop
echo ---------------
start /B "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\devenv.exe" "%~dp0\PhoneRepairShop.sln %*"

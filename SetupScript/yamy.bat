@echo off

echo --------------------------------
echo yamyセットアップスクリプト
echo --------------------------------

set BIN_FOLDER=%USERPROFILE%\bin
set STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set "DOWNLOAD_URL=https://osdn.net/frs/redir.php?m=jaist&f=yamy%2F43637%2Fyamy-0.03.zip"
set DOWNLOAD_PATH=%USERPROFILE%\bin\yamy
set INSTALL_PATH=%USERPROFILE%\bin\yamy

echo %DOWNLOAD_URL% %DOWNLOAD_PATH%
bitsadmin.exe /TRANSFER xyzzy-download "%DOWNLOAD_URL%" "%DOWNLOAD_PATH%"



rem echo yamyをスタートアップに登録する
rem cmd /c mksc "%STARTUP_FOLDER%\yamy.lnk" "%BIN_FOLDER%\yamy\yamy.exe"

pause


@echo off

echo --------------------------------
echo  gitのセットアップ
echo --------------------------------

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FOLDER=%USERPROFILE%\bin\git

rem  --------------------------------
echo  git.exeにpathを通す
rem
setx PATH "%PATH%;%INSTALL_FOLDER%\cmd;"

pause

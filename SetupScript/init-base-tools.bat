@echo off

echo --------------------------------
echo  ~/binフォルダにベースとなるツールをコピー
echo --------------------------------

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin

robocopy "../bin/tools/" "%BIN%/tools/"

pause

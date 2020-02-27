@echo off

echo --------------------------------
echo  ~/binフォルダをPATHに追加する
echo --------------------------------

echo 現在のPATH
echo %PATH%

setx PATH "%PATH%;%USERPROFILE%\bin;"

pause

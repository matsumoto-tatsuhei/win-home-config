@echo off

echo --------------------------------
echo  git�̃Z�b�g�A�b�v
echo --------------------------------

rem --------------------------------
rem  ��{�ݒ�
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FOLDER=%USERPROFILE%\bin\git

rem  --------------------------------
echo  git.exe��path��ʂ�
rem
setx PATH "%PATH%;%INSTALL_FOLDER%\cmd;"

pause

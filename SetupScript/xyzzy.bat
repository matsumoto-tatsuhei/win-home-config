@echo off

echo --------------------------------
echo  xyzzy�̃Z�b�g�A�b�v
echo --------------------------------

rem --------------------------------
rem  ��{�ݒ�
rem
set BIN=%USERPROFILE%\bin
set EXE_PATH1=%USERPROFILE%\bin\xyzzy\xyzzy.exe
set EXE_PATH2=%USERPROFILE%\bin\xyzzy\xyzzycli.exe
set LAUNCHAR_PATH1=%USERPROFILE%\bin\xn.lnk
set LAUNCHAR_PATH2=%USERPROFILE%\bin\x.lnk
set SENDTO_PATH1=%APPDATA%\Microsoft\Windows\SendTo\xn.lnk
set SENDTO_PATH2=%APPDATA%\Microsoft\Windows\SendTo\x.lnk

rem --------------------------------
rem  xyzzy�������`���[�ɒǉ�
rem
cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH1%" "%EXE_PATH1%"
cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH2%" "%EXE_PATH2%"

rem --------------------------------
rem  xyzzy��SendTo�ɓo�^����
rem
cmd /c %BIN%\tools\mksc.bat "%SENDTO_PATH1%" "%EXE_PATH1%"
cmd /c %BIN%\tools\mksc.bat "%SENDTO_PATH2%" "%EXE_PATH2%"

rem --------------------------------
rem  xyzzy�p�̊��ϐ����쐬����
rem
setx XYZZYHOME %BIN%\xyzzy

pause

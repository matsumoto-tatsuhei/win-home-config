@echo off
echo xyzzy�̃Z�b�g�A�b�v

set BIN=%USERPROFILE%\bin
set SENDTO=%APPDATA%\Microsoft\Windows\SendTo

echo xyzzy�������`���[�ɒǉ�
cmd /c %BIN%\tools\mksc.bat "%BIN%\x.lnk" "%BIN%\xyzzy\xyzzycli.exe"
cmd /c %BIN%\tools\mksc.bat "%BIN%\xn.lnk" "%BIN%\xyzzy\xyzzy.exe"

echo xyzzy��SendTo�ɓo�^����
cmd /c mksc "%SENDTO%\x.lnk" "%BIN%\xyzzy\xyzzycli.exe"

echo xyzzy�p�̊��ϐ����쐬����
setx XYZZYHOME %BIN%\xyzzy

pause

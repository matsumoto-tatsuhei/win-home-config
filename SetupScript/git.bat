@echo off
echo git�̃Z�b�g�A�b�v

set BIN=%USERPROFILE%\bin

echo git.exe��path��ʂ�
cmd /c %BIN%\tools\setenv.bat "add" "PATH" "%BIN%\git\cmd"

echo gitk�������`���[�ɒǉ�
cmd /c %BIN%\tools\mksc.bat "%BIN%\gitk.lnk" "%BIN%\git\cmd\gitk.exe"

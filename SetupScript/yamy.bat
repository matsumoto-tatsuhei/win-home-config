@echo off

echo --------------------------------
echo  yamy�Z�b�g�A�b�v�X�N���v�g
echo --------------------------------

rem --------------------------------
rem  ��{�ݒ�
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\yamy
set "DOWNLOAD_URL=https://osdn.net/frs/redir.php?m=jaist&f=yamy%2F43637%2Fyamy-0.03.zip"
set DOWNLOAD_PATH=%USERPROFILE%\bin\yamy\yamy.zip
set EXE_PATH=%USERPROFILE%\bin\yamy\yamy.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\yamy.lnk
set "STARTUP_PATH=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\yamy.lnk"

rem --------------------------------
rem  �C���X�g�[��
rem
rem echo %DOWNLOAD_URL% %DOWNLOAD_PATH%
rem bitsadmin.exe /TRANSFER xyzzy-download "%DOWNLOAD_URL%" "%DOWNLOAD_PATH%"

rem --------------------------------
rem  �����`���[�ǉ�
rem
if not exist "%LAUNCHAR_PATH%" (
    echo yamy�����`���[���쐬���܂�
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

rem --------------------------------
rem  �X�^�[�g�A�b�v�ǉ�
rem
if not exist "%STARTUP_PATH%" (
    echo yamy���X�^�[�g�A�b�v�ɓo�^���܂�
    cmd /c %BIN%\tools\mksc.bat "%STARTUP_PATH%" "%EXE_PATH%"
)

pause


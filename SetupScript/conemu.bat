@echo off

echo --------------------------------
echo  conemu�Z�b�g�A�b�v�X�N���v�g
echo --------------------------------

rem --------------------------------
rem  ��{�ݒ�
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\conemu
set "DOWNLOAD_URL=https://www.fosshub.com/ConEmu.html?dwl=ConEmuPack.191012.7z"
set DOWNLOAD_PATH=%USERPROFILE%\bin\conemu\conemu.7z
set EXE_PATH=%USERPROFILE%\bin\conemu\ConEmu64.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\conemu.lnk

rem --------------------------------
rem  �C���X�g�[��
rem
if not exist "%INSTALL_FALDER%" (
    echo �C���X�g�[���p�t�H���_%INSTALL_FALDER%���쐬���܂�
    mkdir "%INSTALL_FALDER%"
)
rem echo %DOWNLOAD_URL% %DOWNLOAD_PATH%
rem bitsadmin.exe /TRANSFER conemu-download "%DOWNLOAD_URL%" "%DOWNLOAD_PATH%"
if not exist "%EXE_PATH%" (
    echo conemu���𓀂��܂�
    powershell Expand-Archive -Path "%DOWNLOAD_PATH%" "%INSTALL_FALDER%"
)

rem --------------------------------
rem  �����`���[�ǉ�
rem
if not exist "%LAUNCHAR_PATH%" (
    echo conemu�����`���[���쐬���܂�
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

pause


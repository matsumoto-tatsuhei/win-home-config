@echo off
rem --------------------------------
rem  VS Code�̃Z�b�g�A�b�v�X�N���v�g
rem --------------------------------
echo VS Code�̃Z�b�g�A�b�v���J�n���܂�

rem --------------------------------
rem  ��{�ݒ�
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\vscode
set DOWNLOAD_FILE=%USERPROFILE%\bin\vscode\vscode.zip
set EXE_PATH=%USERPROFILE%\bin\vscode\Code.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\vscode.lnk

rem --------------------------------
rem  �C���X�g�[��
rem
if not exist "%INSTALL_FALDER%" (
    echo �C���X�g�[���p�t�H���_%INSTALL_FALDER%���쐬���܂�
    mkdir "%INSTALL_FALDER%"
)
if not exist "%DOWNLOAD_FILE%" (
    echo VS Code���_�E�����[�h���܂�
    bitsadmin.exe /TRANSFER vscode-download https://update.code.visualstudio.com/latest/win32-x64-archive/stable "%DOWNLOAD_FILE%"
)
echo %EXE_PATH%
if not exist "%EXE_PATH%" (
    echo VS Code���𓀂��܂�
    powershell Expand-Archive -Path "%DOWNLOAD_FILE%" "%INSTALL_FALDER%"
)

rem --------------------------------
rem  �����`���[�ǉ�
rem
if not exist "%LAUNCHAR_PATH%" (
    echo vscode�����`���[���쐬���܂�
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

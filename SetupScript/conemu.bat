@echo off

echo --------------------------------
echo  conemuセットアップスクリプト
echo --------------------------------

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\conemu
set "DOWNLOAD_URL=https://www.fosshub.com/ConEmu.html?dwl=ConEmuPack.191012.7z"
set DOWNLOAD_PATH=%USERPROFILE%\bin\conemu\conemu.7z
set EXE_PATH=%USERPROFILE%\bin\conemu\ConEmu64.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\conemu.lnk

rem --------------------------------
rem  インストール
rem
if not exist "%INSTALL_FALDER%" (
    echo インストール用フォルダ%INSTALL_FALDER%を作成します
    mkdir "%INSTALL_FALDER%"
)
rem echo %DOWNLOAD_URL% %DOWNLOAD_PATH%
rem bitsadmin.exe /TRANSFER conemu-download "%DOWNLOAD_URL%" "%DOWNLOAD_PATH%"
if not exist "%EXE_PATH%" (
    echo conemuを解凍します
    powershell Expand-Archive -Path "%DOWNLOAD_PATH%" "%INSTALL_FALDER%"
)

rem --------------------------------
rem  ランチャー追加
rem
if not exist "%LAUNCHAR_PATH%" (
    echo conemuランチャーを作成します
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

pause


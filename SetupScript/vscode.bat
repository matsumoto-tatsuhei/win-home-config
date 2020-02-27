@echo off
rem --------------------------------
rem  VS Codeのセットアップスクリプト
rem --------------------------------
echo VS Codeのセットアップを開始します

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\vscode
set "DOWNLOAD_URL=https://az764295.vo.msecnd.net/stable/c47d83b293181d9be64f27ff093689e8e7aed054/VSCode-win32-x64-1.42.1.zip"
set DOWNLOAD_FILE=%USERPROFILE%\bin\vscode\vscode.zip
set EXE_PATH=%USERPROFILE%\bin\vscode\Code.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\vscode.lnk

rem --------------------------------
rem  インストール
rem
if not exist "%INSTALL_FALDER%" (
    echo インストール用フォルダ%INSTALL_FALDER%を作成します
    mkdir "%INSTALL_FALDER%"
)
if not exist "%DOWNLOAD_FILE%" (
    echo VS Codeをダウンロードします
    bitsadmin.exe /TRANSFER vscode-download "%DOWNLOAD_URL%" "%DOWNLOAD_FILE%"
)
if not exist "%EXE_PATH%" (
    echo VS Codeを解凍します
    powershell Expand-Archive -Path "%DOWNLOAD_FILE%" "%INSTALL_FALDER%"
)

rem --------------------------------
rem  ランチャー追加
rem
if not exist "%LAUNCHAR_PATH%" (
    echo vscodeランチャーを作成します
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

pause

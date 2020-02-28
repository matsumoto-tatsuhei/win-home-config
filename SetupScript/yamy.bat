@echo off

echo --------------------------------
echo  yamyセットアップスクリプト
echo --------------------------------

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin
set INSTALL_FALDER=%USERPROFILE%\bin\yamy
set "DOWNLOAD_URL=https://osdn.net/frs/redir.php?m=jaist&f=yamy%2F43637%2Fyamy-0.03.zip"
set DOWNLOAD_PATH=%USERPROFILE%\bin\yamy\yamy.zip
set EXE_PATH=%USERPROFILE%\bin\yamy\yamy.exe
set LAUNCHAR_PATH=%USERPROFILE%\bin\yamy.lnk
set "STARTUP_PATH=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\yamy.lnk"

rem --------------------------------
rem  インストール
rem
rem echo %DOWNLOAD_URL% %DOWNLOAD_PATH%
rem bitsadmin.exe /TRANSFER xyzzy-download "%DOWNLOAD_URL%" "%DOWNLOAD_PATH%"

rem --------------------------------
rem  ランチャー追加
rem
if not exist "%LAUNCHAR_PATH%" (
    echo yamyランチャーを作成します
    cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH%" "%EXE_PATH%"
)

rem --------------------------------
rem  スタートアップ追加
rem
if not exist "%STARTUP_PATH%" (
    echo yamyをスタートアップに登録します
    cmd /c %BIN%\tools\mksc.bat "%STARTUP_PATH%" "%EXE_PATH%"
)

pause


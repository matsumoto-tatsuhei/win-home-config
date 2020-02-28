@echo off

echo --------------------------------
echo  xyzzyのセットアップ
echo --------------------------------

rem --------------------------------
rem  基本設定
rem
set BIN=%USERPROFILE%\bin
set EXE_PATH1=%USERPROFILE%\bin\xyzzy\xyzzy.exe
set EXE_PATH2=%USERPROFILE%\bin\xyzzy\xyzzycli.exe
set LAUNCHAR_PATH1=%USERPROFILE%\bin\xn.lnk
set LAUNCHAR_PATH2=%USERPROFILE%\bin\x.lnk
set SENDTO_PATH1=%APPDATA%\Microsoft\Windows\SendTo\xn.lnk
set SENDTO_PATH2=%APPDATA%\Microsoft\Windows\SendTo\x.lnk

rem --------------------------------
rem  xyzzyをランチャーに追加
rem
cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH1%" "%EXE_PATH1%"
cmd /c %BIN%\tools\mksc.bat "%LAUNCHAR_PATH2%" "%EXE_PATH2%"

rem --------------------------------
rem  xyzzyをSendToに登録する
rem
cmd /c %BIN%\tools\mksc.bat "%SENDTO_PATH1%" "%EXE_PATH1%"
cmd /c %BIN%\tools\mksc.bat "%SENDTO_PATH2%" "%EXE_PATH2%"

rem --------------------------------
rem  xyzzy用の環境変数を作成する
rem
setx XYZZYHOME %BIN%\xyzzy

pause

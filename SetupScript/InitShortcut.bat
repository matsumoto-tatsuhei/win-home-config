@echo off

set BIN_FOLDER=%USERPROFILE%\bin

echo ConEmu�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\conemu.lnk" "%BIN_FOLDER%\ConEmu\ConEmu64.exe"

echo FiroFox�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\ff.lnk" "%ProgramFiles%\Mozilla Firefox\firefox.exe"
cmd /c mksc "%BIN_FOLDER%\firefox.lnk" "%ProgramFiles%\Mozilla Firefox\firefox.exe"

echo ID Manager�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\idm.lnk" "%BIN_FOLDER%\idm\IDM.exe"

echo MPC-HC�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\mpc.lnk" "%BIN_FOLDER%\mpc\mpc-hc64.exe"

echo RealSync�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\rsync.lnk" "%BIN_FOLDER%\rsync\RealSync.exe"

echo SMPlayer�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\smp.lnk" "%BIN_FOLDER%\smplayer\smplayer.exe"

echo SnippingTool�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\snip.lnk" "%SystemRoot%\system32\SnippingTool.exe"

echo Lhaplus�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\lhaplus.lnk" "%BIN_FOLDER%\lhaplus\Lhaplus.exe"

echo WinMerge�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\wm.lnk" "%BIN_FOLDER%\WinMerge\WinMergeU.exe"

echo yamy�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\yamy.lnk" "%BIN_FOLDER%\yamy\yamy.exe"

pause

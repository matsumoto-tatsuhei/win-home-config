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

echo SMPlayer�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\smp.lnk" "%BIN_FOLDER%\smplayer\smplayer.exe"

echo SnippingTool�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\snip.lnk" "%SystemRoot%\system32\SnippingTool.exe"

echo yamy�̃V���[�g�J�b�g���쐬����
cmd /c mksc "%BIN_FOLDER%\yamy.lnk" "%BIN_FOLDER%\yamy\yamy.exe"

pause

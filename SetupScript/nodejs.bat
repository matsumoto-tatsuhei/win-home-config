@echo off
rem --------------------------------
rem  node.js�̃Z�b�g�A�b�v�X�N���v�g
rem --------------------------------
echo node.js(nodist)�̃Z�b�g�A�b�v���J�n���܂�
echo �Ǘ��Ҍ����ȊO�Ŏ��s�����ꍇ�͊m�F�_�C�A���O��\�����܂�

rem --------------------------------
rem  �C���X�g�[��
rem
echo @echo off                > nodejs_su.bat
echo choco install -y nodist >> nodejs_su.bat
powershell start-process nodejs_su.bat -verb runas

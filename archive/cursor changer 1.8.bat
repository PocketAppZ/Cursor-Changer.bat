@echo off
title �J�[�\���ς�
rem VER v1.8
set batver=v1.8
rem ����ɂ������Ďg�p�����\�t�g windows notepad v10.2103.12.0 �g�p�t�H���g�@Nirmala UI�̑���
rem 2021�N12��09���ߑO0��2������ windows notepad v10.2110.64.0 Nirmala UI�̑���
:fastboot
cd /d %HOMEDRIVE%%HOMEPATH%
find "fastboot" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto syokaikennti) else (goto nofastboot)
:nofastboot


rem ###################
rem #    HELLO�@WORLD    #  
rem ###################
rem �\��100%�A�t���X�N���[�������@����ȊO�͕\���̕ۏ؂Ȃ�


rem ���Ȃ݂ɏ��
rem ���̃o�b�`�t�@�C���̊J�����n�܂����̂�2021�N��10��8��(���炭)
rem �J���̓��@�́A�J�[�\�������������ꂽ�Ƃ��ɂ��������ς���̂��߂�ǂ���������o�b�`�t�@�C���Ŏ��������悤�Ƃ�������B�������̂��Ƃ��낢��@�\�������Ă����č��̏�ԂɂȂ����̂ł���B
rem �o�[�W����2.0.0�܂ł̓J�[�\���u���b�N�Ƃ������O������
rem �J�������ɂȂ��ăJ�[�\���ւ�(��)�ɕύX���ꂽ
rem �ŏ��̃o�[�W������1.0.1������
rem ���O�̕ύX�����ꂽ�o�[�W������2.0.0��2.5.0beta5
rem �o�[�W����2.0.0�ł̓f�t�H���g�ɖ߂���@�\���ǉ�
rem �f�t�H���g�ɖ߂��@�\�̓o�[�W����1.5.0�����肩��ق̂߂����Ă���
rem �o�[�W����2.5.0 beta1�ł��ׂĂ̕ύX���f�t�H���g�ɖ߂��@�\���ǉ�
rem ���̌� �o�[�W�����@2.5.0 beta5���疼�O���A�J�[�\���ւ� 1.0beta�ɕύX
rem �o�[�W����2.1.x����NoFB NonFIxBug�Ƃ����o�[�W�������ǉ����ꂽ�������ɍ폜���ꂽ
rem �J�[�\���ւ��ɂ̓o�[�W���� Dev.1�Ƃ������̂�������
rem �o�[�W����Dev.1�̓o�[�W����2.4.x�ɑ���
rem �o�[�W����2.4.x�܂ł͂��̂������o�[�W�����̏�������������
rem ��ԊJ���Ɏ��Ԃ����������̂̓o�[�W����1.6�ł���B
rem ���e�������Ⴎ����Ȃ̂͂��Ƃ��Ɛl�Ɍ�������肪�Ȃ���������ł���B
rem �J�[�\���ւ��ɂ�2022�N2��22��22��22��22�b�Ɋ��������o�[�W����������B���ꂪ�J�[�\���ւ�1.7a���B

rem �o�[�W�����A�b�v���
rem �o�[�W����2.5.0 beta7 (1.0beta2)����Dogcheck�Ƃ����l�^�@�\���ǉ����ꂽ
rem �o�[�W����2.5.0 beta9 (1.0beta4)����Dogcheck�ɃA�b�v�f�[�g������A�������O�̃e�L�X�g�t�@�C������邾���ł͉�����ł��Ȃ��悤�ɂȂ���
rem �o�[�W����1.0(2.5.0 beta10)���琳���ɃJ�[�\���ς��̍����I�ȕ����������A����ɔ����J�[�\���ւ��̃o�[�W������1.0�ƂȂ���

rem �o�[�W����1.1 (2.5.0beta11)����alldef����̃R�}���h�̃~�X�ɂ�蕪�򂪂ł��Ă��Ȃ������o�O����������A����蕪�򂲂Ƃ̃N���A���Ȃ��Ȃ�A���V�[�����X�ɕ��򂷂�悤�ɂȂ����B
rem �o�[�W����1.2 (2.5.0beta13)����f�t�H���g�ɖ߂��A�������͍��F�ɕύX����ۂ̕������ύX���ꂽ�B
rem �o�[�W����1.3(2.5.0beta14)����A����̕ύX�ł����������������Ƃ��ɁA����J�[�\���ύX�Ƃ������̂��폜�����@�\��������������A����ɉ����āA�C�[�X�^�[�G�b�O�ɂ�����Ƃ����V�@�\���ǉ��B
rem �o�[�W����1.4(��2.5.0beta15)����A���ɊJ���������瓯���������@�\��I�����镔�����ύX����A����ɔ������o�[�W�����\�L���Ȃ��Ȃ�A�{���̈Ӗ��ł�ver2.5.0�ɂȂ����B
REM �o�[�W����1.5����A����^���Ƃ����Ă������x���Ȃ��قǂ̃A�b�v�f�[�g�������B

rem �ڂ��������ƁA�܂��ݒ胁�j���[�̒ǉ��A����ɔ����J�[�\����ύX�����ۂ̍ċN���̊m�F�����S��OFF�ɂ���ݒ�A�f�o�b�O���[�h��ON/OFF���ǉ����ꂽ�B
rem �����Ď��ɁA�z���C�g���[�h�̒ǉ��Bcmd��̃e�[�}���z���C�g��̃f�U�C���ɕύX�ł��A�������ݒ肵�����Ƃ��L�^����@�\������A�N�����Ɏ����I�Ƀz���C�g���[�h�ɂ��邱�Ƃ��ł���Ƃ����@�\�����ڂ��Ă���B
rem �����đ����̃o�O�C���A�뎚�E�����C�������B

rem �o�[�W����1.5a �ċN���̔��ʂɔ��������ύX�ƃ_�[�N�e�[�}�ɖ߂��ۂ̋@�\��p�~�\��̕���}�������B
rem �o�[�W����1.6 ����̃A�b�v�f�[�g�͒���^���B
rem �ڂ��������ƁA�܂�����N�����ɃJ�[�\���ւ��̕��������F�ɕω�����悤�ȋ@�\���ǉ�����A
rem ���ɁA�ŏ��̉�ʂŃG���^�[�L�[�𒷉������Ă���Ƃ�������m���ă��b�Z�[�W�������悤�ȋ@�\���ǉ�����A
rem ���̂܂����ɁA�z���C�g���[�h�̉�ʂ��v�V����A�ݒ胁�j���[�Ɠ����悤�ɂȂ����B����ɔ����ă_�[�N�e�[�}�ɖ߂��ۂ̌ʂ̉�ʂ����������B
rem �����ăG���^�[�L�[�����������m����@�\�̒ǉ��ɔ����āA�ݒ胁�j���[�ł��̋@�\�̖��������ł���悤�ɂ��Ȃ����B
rem �o�[�W���� 1.6a �z���C�g���[�h�ɕύX���������A�_�[�N���[�h���z���C�g���[�h�������o���A����ɔ���������ω�������@�\���ǉ�����A�����̃o�O�C�����s��ꂽ�B
rem �o�[�W���� 1.6b �ݒ胁�j���[�̎O�ԖځA�f�o�b�O���[�h�̗L���������̃��j���[�ɂ�����Ƃ������ǂ�������ꂽ�B
rem �o�[�W���� 1.7 ����̃A�b�v�f�[�g�ł́A�d��@�\���ǉ�����A������Ƃ����C�[�X�^�[�G�b�O���ǉ����ꂽ�B�����āAHNY�Ƃ��������͍����炾���폜���ꂽ�B
rem �o�[�W���� 1.7a ����̃A�b�v�f�[�g�́A�@�\�I���̉�ʂ̏��Ԃ��@�\�������Ă������Ƃɔ����A�ύX�����Balldef�͐ݒ胁�j���[�Ɉڍs�����B
rem �����āA�o�[�W�������ɑ����̕ύX�A�������Ȃ��ɂ�����Ƃ����ύX��������ꂽ�B
rem �o�[�W���� 1.8 ����̃A�b�v�f�[�g�͔�r�I���K�͂��B ���ẴA�b�v�f�[�g�ł͐ݒ胁�j���[�ɂ�����Ƃ����ύX���������A�ݒ�̐����ƌ��݂̐ݒ肪�L�������������V�[�����X�Ɍ����悤�ɂȂ����B
rem �����č���̃A�b�v�f�[�g�ł�2048�Ƃ����Q�[�������ڗ\�肾�����̂����A�J�������ɃZ�[�u�@�\�֘A�ɋZ�p�I�Ȑ���ƃo�O�����邱�Ƃ����o���A�J������q�������߁A
rem ���̋@�\�ǉ��������ɉ����ɂȂ����B


rem �x�[�^�ł̐i��

ver1.6
rem �o�[�W����1.6�� 1.6�̃��o�[�W�����B�ݒ��3�ԖځA�f�o�b�O���[�h�̗��̋@�\���������B
rem �o�[�W����1.6��1 1.6�̃x�[�^�ŁB���܂Ō����Ă����ݒ��2�Ԗڂ����������B
rem �o�[�W����1.6��2 1.6�̃x�[�^��2�B�ݒ�̓�Ԗڂɂ������d��ȃo�O���C�������B(setting3�ƃ^�C�v�~�X�Ŋ���,adminonoff�Ɗ֐�����̓~�X)
rem �o�[�W����1.6��2 c211220.1404
rem �o�[�W�����K�����x�[�^�Ō���ύX����X�V��������ǉ����邱�ƂƂȂ����B
rem �o�[�W����1.6��3 c211223.0209 1.6�̃x�[�^��3�B����N�����Ƀ��S�����F�Ō��鉉�o���ǉ����ꂽ�B���Ȃ݂ɂ�������1.6�������Ɋ�������B
rem �o�[�W����1.6��3 a211223.0439 1.6�̃x�[�^�ł̍ŏI�o�[�W�����B�O�قǋ@�\���ǉ����ꂽ�B





rem ����̗\�� (roadmap)

rem �ݒ胁�j���[�̃q���g�@�ݒ胁�j���[�ŁA�Ⴆ�΁@4?�Ɠ��͂����炻�̐ݒ�̋@�\�△���ɂ����牽���N���邩��������Ă����@�\ 
rem �ݒ胁�j���[�̗L���������̎��ʉ�(�L���ɂȂ��Ă��邩�ۂ����u���ɔc���ł���悤�ɂ�����)
rem �����ς�

rem ����J�[�\���ɕ�����}�����Č̈ӂɓ������O�̕����e�L�g�[�ɍ�������̌��{�@�\�@�����炭����J�[�\���ɂ�Dogcheck�𓱓��������Ƃ������Ƃ��낤���ʂ����ĈӖ�������̂��H...
rem �J�[�\���ւ��ݒ�.txt�̒��g��ύX���AXX=true�Ƃ��������ɕύX����(����)
rem 1.9�����\�� 22�N3���̒��{

rem �J�[�\���̕ύX�̓���
rem �z���C�g���[�h��ݒ胁�j���[�ɓ���
rem �ݒ胁�j���[�̉��v (GUI�̐���)�A����ɔ�����葽���̐ݒ�
rem �N���񐔂̃J�E���g
rem ����N�����ƃJ�[�\�����ύX���̃��b�Z�[�W�̕ύX�A�܂��͍œK��
rem 1.6b���炠����fastboot�𐳎��Ɏ���
rem ���x���C�[�X�^�[�Ɠ��͂��������5��ڂŉB���ꂽ�@�\����������悤�ȋ@�\
rem 1.10�����\�� 22�N��4����5��
rem 2048�����Ƃ����Ď���(�s�\)

rem �J�[�\���ւ�v2.0(1.13)�Ɍ����Ă̑S�̓I�ȉ��P
rem 1.11�����\�� 22�N��6�����{

rem �R�[�h�̏��Ԃ�ύX���A�ǂ݂₷������
rem 1.12�����\�� 22�N��8�����{

rem ver 2.0 (1.13) 22�N��10��
rem �S�̓I�ȃR�[�h�̐���
rem ������Ή�
rem bat�t�@�C����ʂŗp�ӂ��ăJ���[�\���Ή����B
rem ����N�����Ɏ���̃��S��\���B
rem �����B�@�\�ǉ��A�b�v�f�[�g�͂���ōŌ�ɂȂ�B(�o�O�̏C���͏���)
rem v2.0�ɂȂ�܂łɂ̓R�[�h��2000��2500�s��ڎw���B




rem �������܂Ƃ߂�ƁA�J�[�\���ւ�������������ɂ́A�ȉ��̋@�\�����ׂĎ������Ȃ���΂����Ȃ��Ȃ�B

rem �R�[�h�̏��Ԃ�ύX���A�ǂ݂₷������
rem �S�̓I�ȃR�[�h�̐���
rem �J�[�\���ւ�v2.0(1.13)�Ɍ����Ă̑S�̓I�ȉ��P
rem ����N�����ƃJ�[�\�����ύX���̃��b�Z�[�W�̕ύX�A�܂��͍œK��
rem �ݒ胁�j���[�̉��v (GUI�̐���)�A����ɔ�����葽���̐ݒ�
rem �J�[�\���ւ��ݒ�.txt�̒��g��ύX���AXX=true�Ƃ��������ɕύX����
rem ����N�����Ɏ���̃��S��\���B
rem �N���񐔂̃J�E���g
rem 1.6b���炠����fastboot�𐳎��Ɏ���
rem �J�[�\���̕ύX�̓���
rem �z���C�g���[�h��ݒ胁�j���[�ɓ���
rem ������Ή�
rem �J�[�\���̐F�����������I�����ύX���������p�~�A�������V�[�����X�ɐF��ς����悤�ɂ���
rem bat�t�@�C����ʂŗp�ӂ��ăJ���[�\���Ή����B
rem ���x���C�[�X�^�[�Ɠ��͂��������5��ڂŉB���ꂽ�@�\����������悤�ȋ@�\
rem ����J�[�\���ɕ�����}�����Č̈ӂɓ������O�̕����e�L�g�[�ɍ�������̌��{�@�\

rem �ł��邾�낤��....����A�S������������邾�낤��....




rem ���� 
rem �J�[�\���̐F�����������I�����ύX���������p�~�A�������V�[�����X�ɐF��ς����悤�ɂ���
rem �E���ւ�Ƀ��A���^�C���ŕ\������鎞�v
rem ��ɋN���A�j���[�V�������Đ�������
rem �ݒ胁�j���[�̑s�剻�A�I�v�V������bat�t�@�C���̎g�p
rem �p��Ή��@�����������I�ł͂Ȃ�
rem ��̂���������ɂ������āA��Ԏ������₷���͕̂ϐ���p���āA�����ϐ�lang��jp�ł���Ȃ�΁A�֐�jp1,2,3,4,5,6,7,8...�ɓK���ȕ�����}��������Ƃ����낤���B
rem ������������s�����Ƃ���ƍ����̃o�b�`�����Ɋ܂܂�Ă���S������ϐ��̖��O�ɂ��Ȃ���΂������A��������Ƃ��Ă�v1.10�ȍ~�̎����ɂȂ肻�����B

rem ############################################################################################################################

rem �ŏ��̋N���Ȃ̂������m
:syokaicolorlogo
cd /d %HOMEDRIVE%%HOMEPATH%
if exist ����J�[�\��.txt goto :batstarttest
if not exist ����J�[�\��.txt goto :syokaiboot

title welcome to my bat file!
rem ����N������̃A�j���[�V�������Đ�
:syokaiboot
color 09
echo �J
powershell sleep -m 100
cls

color 0a
echo �@�[
powershell sleep -m 100
cls

color 0b
echo �@�@�\
powershell sleep -m 100
cls

color 0c
echo �@�@�@��
powershell sleep -m 100
cls

color 0d
echo �@�@�@�@��
powershell sleep -m 100
cls

color 0e
echo �@�@�@�@�@��
powershell sleep -m 100
cls
color 0f

cls
echo �J�[�\���ւ�
powershell sleep -m 500
cls
echo �J�[�\���ւ� by tamago_1908
powershell sleep -m 1000
cls
goto saisyonokidou



echo copyright.�J�[�\���ւ�1.8 by ������ӂɂ��闑
echo.
rem �Ǘ��Ҍ����̃v�����v�g�Ɋւ���ݒ�����m
:batstarttest
find "adminon" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto batstart)
if {%errorlevel%}=={1} (goto batstarttest2)

cls
:batstarttest2
find "adminoff" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto hazime)
if {%errorlevel%}=={1} (goto batstart)
cls
rem �Ǘ��Ҍ����̎擾
:batstart
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%p]temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

rem ����N���������m
:syokaikennti
cd /d %HOMEDRIVE%%HOMEPATH%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if exist ����J�[�\��.txt goto hazime
if not exist ����J�[�\��.txt goto saisyonokidou

rem ����N�����̃��b�Z�[�W
:saisyonokidou
title ���ȏЉ�
type nul > ����J�[�\��.txt
echo nodogcheckforfastboot >> ����J�[�\��.txt
echo (����N�����̂�)
echo ����ɂ��́B
pause
cls
echo ����bat�t�@�C���̓}�E�X�J�[�\�����������F(�f�t�H���g)�ɕύX���邽�߂����ɂ���bat�t�@�C���ł��B
pause
cls
echo �ق�Ƃɂ��ꂾ���ł��B
pause
cls
echo ���Ȃ݂ɁA�{�i�I��bat�t�@�C����������̂͂��ꂪ���߂ĂȂ̂ŕs��Ƃ��������Ă������Ă��������ˁB
pause
cls
goto hazime

:hazime

rem �z���C�g���[�h�̌��m��dark��white�̕ύX
find "wmodeoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set wmodeonoff=�z���C�g
if %ErrorLevel%==1 goto hazimewmodeonoff

:hazimewmodeonoff
find "wmodeon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set wmodeonoff=�z���C�g
if %ErrorLevel%==0 set wmodeonoff=�_�[�N


rem �z���C�g���[�h�����m���ĐF��ύX
find "wmodeon" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (color f0)


rem �f�o�b�N���[�h�̌��m
find "debugon" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (echo on&set debugmode=debugmode)
if {%errorlevel%}=={1} (set debugmode=)

rem �T�C�Y�̎w��
mode con: cols=122 lines=30

find "nodogcheckforfastboot" ����J�[�\��.txt
if {%ErrorLevel%}=={0} (goto :haizmemenu)
if {%ErrorLevel%}=={1} (goto :itazurasyokai)

:haizmemenu
cls
rem ���j���[�̐���
rem �K����5,20
echo copyright.�J�[�\���ւ�1.8 by ������ӂɂ��闑 %debugmode%
title �J�[�\���ւ� %debugmode% 
set selected=0nul0
echo.
echo     1�J�[�\�������F�ɂ���     2�J�[�\���������̔��F�ɂ���     3%wmodeonoff%�e�[�}     4�������Ȃ�
echo                    5�d��     6 2048�Q�[��(�g�p�s��)     7�o�[�W�������     8�ݒ�
echo.
echo.
SET /P selected=�C�ӂ̎��s�����������A�������̓A���t�@�x�b�g����͂��Ă�������... :
echo.
if {%selected%}=={0nul0} ( goto hatenahazime)
echo %selected% ���I������܂����B

rem �I���̕���
if {%selected%}=={1} (goto :yes)
if {%selected%}=={a} (goto :yes)
if {%selected%}=={2} (goto :default)
if {%selected%}=={b} (goto :default)
if {%selected%}=={3} (goto :wmode)
if {%selected%}=={c} (goto :wmode)
if {%selected%}=={4} (goto :no)
if {%selected%}=={d} (goto :no)
if {%selected%}=={5} (goto :startcal)
if {%selected%}=={e} (goto :startcal)
if {%selected%}=={6} (goto :start2048)
if {%selected%}=={f} (goto :start2048)
if {%selected%}=={7} (goto :batver)
if {%selected%}=={g} (goto :batver)
if {%selected%}=={8} (goto :setting)
if {%selected%}=={h} (goto :setting)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={egg1} (goto :erroralldef1ok)
if {%selected%}=={egg2} (goto :Dogcheck)
if {%selected%}=={toxic} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=N6ael_DEPcs&goto hazime)
if {%selected%}=={abcdefu} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=qgRx58oItTk&goto hazime)
if {%selected%}=={dogsong} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=H4wptBuM6zs&goto hazime)
if {%selected%}=={alldefnow1} (goto :AllDefult1)
if {%selected%}=={���͖����ł�} (echo me too&pause& goto hazime)
if {%selected%}=={playdefboot} (cls&goto :syokaiboot)
if {%selected%}=={debugyesnow} (goto :kurogo)
if {%selected%}=={counttestdeb} (goto :testinthecalbeep)
if {%selected%}=={����} (echo.&echo Q.�J�[�\���ւ��͂���������́H&pause&echo.&echo A.����͍���Ă��邻����ӂɂ��闑���킩��܂���B&pause&echo.&echo �ł��ڈ��Ƃ��Ă�2022�N��10���������\�肵�Ă��܂��B&pause&echo.&echo �܂�2022�N���ɂ͊�������Ǝv���܂��B&pause&goto hazime)

rem �����ȕ�������͂����ꍇ�̋A�ҏ���
:hatenahazime
echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
find "hatenakeikokuoff" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto hazime)

rem �����������m���邽�߂̋@�\
set /a hatenaita=hatenaita+1
if %hatenaita% gtr 20  (goto :hatenaokotest1)
goto :hazime

:hatenaokotest1
if not %hatenaita% gtr 50 (goto hatenaoko1)
if %hatenaita% gtr 50 (goto hatenaokotest2)

:hatenaokotest2
if not %hatenaita% gtr 100 (goto hatenaoko2)
if %hatenaita% gtr 100 (goto hatenaokotest3)

:hatenaokotest3
if not %hatenaita% gtr 130 (goto hatenaoko3)
if %hatenaita% gtr 130 (goto hatenaokotest4)

:hatenaokotest4
if not %hatenaita% gtr 200 (goto hatenaoko4)
if %hatenaita% gtr 200 (goto hatenaokotest5)

:hatenaokotest5
if not %hatenaita% gtr 250 (goto hatenaoko5)
if %hatenaita% gtr 250 (goto hatenaoko6)

rem �������̌x�����b�Z�[�W�W
:hatenaoko1
if %hatenaita% gtr 21 (goto :hazime)
echo Dim answer:answer = MsgBox("��H�ȁA�Ȃɂ��Ă�́H",vbOKCancel,"��H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto :hazime

:hatenaoko2
if %hatenaita% gtr 51 (goto :hazime)
echo Dim answer:answer = MsgBox("����A������ƁI�����܂őł��ԈႦ�Ȃ��ł���I",vbOKCancel,"����������..."):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto :hazime

:hatenaoko3
if %hatenaita% gtr 101 (goto :hazime)
echo Dim answer:answer = MsgBox("�������́I��������100����ł��ԈႦ�Ȃ�����I�ӂ�����ȁI",vbOKCancel,"�m�M��"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto :hazime

:hatenaoko4
if %hatenaita% gtr 131 (goto :hazime)
echo Dim answer:answer = MsgBox("������ƁI�������ɂ�߂Ă���I�I�I�I�I",vbOKCancel,"..."):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto :hazime

:hatenaoko5
if %hatenaita% gtr 201 (goto :hazime)
echo Dim answer:answer = MsgBox("����ȏ��������������܂��B200���...",vbOKCancel,"�Ō�̌x��"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto :hazime

:hatenaoko6
if %hatenaita% gtr 251 (goto :hazime)
echo Dim answer:answer = MsgBox("..........",vbOKCancel,""):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
del /Q %TEMP%\msgbox.vbs
taskkill /im cmd.exe
goto :reboot


:itazurasyokai
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("�C�^�Y���ɏ���J�[�\��.txt����������!!!�S�������ʂ����I",vbOKCancel,"�������Ɩ߂��A����Ȃ��Ɖi���ɗ���邼"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("��������������΁Anodogcheckforfastboot������J�[�\��.txt�ɓ����񂾂ȁB",vbOKCancel,"�������Ɩ߂�"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
exit

:Wmode
cd /d %HOMEDRIVE%%HOMEPATH%
:wmodetest
find "wmodeoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set wmodeonoff=�z���C�g
if %ErrorLevel%==1 goto wmodeonoff

:wmodeonoff
find "wmodeon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set wmodeonoff=�z���C�g
if %ErrorLevel%==0 set wmodeonoff=�_�[�N

cls
SET /P selected=%wmodeonoff%�e�[�}�ɂ��܂����H (Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :wmodey)
if {%selected%}=={yes} (goto :wmodey)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={n} (goto :no01)
if {%selected%}=={no} (goto :no01)
if {%selected%}=={back} (goto :hazime)
if {%selected%}=={b} (goto :hazime)
if {%selected%}=={def} (goto :defultwok)
if {%selected%}=={defult} (goto :defultwok)
echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
goto wmode

:wmodey
find "wmodeoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 goto wmodeygo3test
if %ErrorLevel%==0 goto wmodeygo1

:wmodeygo3test
find "wmodeon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 echo wmodeon >> �J�[�\���ւ��ݒ�.txt&goto wmodeygo1
if %ErrorLevel%==0 goto wmodeygo2

:wmodeygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'wmodeon','wmodeoff' | sc �J�[�\���ւ��ݒ�.txt"
goto wmodeyokey

:wmodeygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'wmodeoff','wmodeon' | sc �J�[�\���ւ��ݒ�.txt"
goto wmodeyokey

:wmodeyokey
Title �J�[�\���ւ�
find "wmodeoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto wmodeonoffkenti
:wmodeonoffkenti
find "wmodeon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 color f0
cls
echo %wmodeonoff%�e�[�}�ɂ��܂����B
Pause
Goto hazime

:no01
echo %wmodeonoff%�e�[�}�ɂ͂��܂���ł����B
pause
Goto :hazime


rem �ݒ�̎���

:setting
:setting1onoff
find "rebootokeyon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting1onoff=�L��
if %ErrorLevel%==0 set setting1onoff=����

:setting2onoff
find "adominon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting2onoff=�L��
if %ErrorLevel%==0 set setting2onoff=����

:setting3onoff
find "debugon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set debugonoff=�L��
if %ErrorLevel%==0 set debugonoff=����

:setting4onoff
find "hatenakeikokuon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting4onoff=�L��
if %ErrorLevel%==0 set setting4onoff=����

title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo                           �ݒ�
Echo.
echo       1 �ύX��̍ċN���̊m�F��%setting1onoff%��
echo.
echo          2 �N�����̃A�h�~����%setting2onoff%��
echo.
Echo            3 �f�o�b�O�@�\��%debugonoff%��
Echo.
Echo    4 Enter�̒����������m����@�\��%setting4onoff%��
echo.
echo              5 �o�b�`�t�@�C���̏�����
echo.
echo �߂�ۂ� back �Ɠ��͂��A���̐ݒ�̃w���v���������ꍇ�͐����ɁAq��t�������Ă��������B
echo.
SET /P selected=�ύX���镨�𐔎��Ŏw�肵�Ă�������...
echo.
echo %selected% ���I������܂����B
if {%selected%}=={1} (goto :setting1)
if {%selected%}=={2} (goto :setting2)
if {%selected%}=={3} (goto :setting3)
if {%selected%}=={4} (goto :setting4)
if {%selected%}=={5} (goto :alldefult)
if {%selected%}=={b} (goto :hazime)
if {%selected%}=={back} (goto :hazime)
if {%selected%}=={1q} (goto :setting1help)
if {%selected%}=={2q} (goto :setting2help)
if {%selected%}=={3q} (goto :setting3help)
if {%selected%}=={4q} (goto :setting4help)
if {%selected%}=={5q} (goto :alldefultsettinghelp)
goto setting

:setting1
find rebootokey=false�J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set setting1onoff=�L��&goto setting1okey
if %ErrorLevel%==1 goto setting1onoff

:setting1onoff
find "rebootokeyon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting1onoff=����
if %ErrorLevel%==0 set setting1onoff=����

:setting1okey
cls
set selected=0nul0
SET /P selected=�J�[�\���ύX��̍ċN���̊m�F��%setting1onoff%�ɂ��܂����H
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting1y)
if {%selected%}=={n} (goto :setting1n)
if {%selected%}=={back} (goto :setting)
if {%selected%}=={b} (goto :setting)
goto setting1okey

:setting1y
find rebootokey=false�J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 goto setting1ygo3test
if %ErrorLevel%==0 goto setting1ygo1

:setting1ygo3test
find "rebootokeyon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 echo rebootokey=false>> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting1ygo2

:setting1ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'rebootokeyon','rebootokeyoff' | sc �J�[�\���ւ��ݒ�.txt"
goto setting1yokey

:setting1ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'rebootokeyoff','rebootokeyon' | sc �J�[�\���ւ��ݒ�.txt"
goto setting1yokey

:setting1yokey
Echo �ݒ��ύX���܂����B
Pause
Goto setting

:setting1n
Echo �ݒ��ύX���܂���ł���
Pause
goto setting

:setting2
find "adminoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set setting2onoff=�L��&goto setting2okey
if %ErrorLevel%==1 goto setting2onoff

:setting2onoff
find "adminon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting2onoff=����
if %ErrorLevel%==0 set setting2onoff=����

:setting2okey
cls
SET /P selected=�N�����̊Ǘ��҂̃v�����v�g��%setting2onoff%�ɂ��܂����H
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting2y)
if {%selected%}=={n} (goto :setting2n)
if {%selected%}=={back} (goto :setting)
if {%selected%}=={b} (goto :setting)
goto setting2okey

:setting2y
find "adminoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 goto setting2ygo3test
if %ErrorLevel%==0 goto setting2ygo1

:setting2ygo3test
find "adminon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 echo adminon >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting2ygo2

:setting2ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'adminon','adminoff' | sc �J�[�\���ւ��ݒ�.txt"
goto setting2yokey

:setting2ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'adminoff','adminon' | sc �J�[�\���ւ��ݒ�.txt"
goto setting2yokey

:setting2n
Echo �A�h�~���m�F��%setting2onoff%�ɂȂ�܂���ł���
Pause
goto setting

:setting2yokey
Echo �ݒ��ύX���܂����B
Pause
Goto setting


:setting3
find "debugoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set setting3onoff=�L��&goto setting3onoff
if %ErrorLevel%==1 goto setting3onoff

:setting3onoff
find "debugon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting3onoff=�L��&set setting3warning=�i���ӁI�f�o�b�O�@�\��L���ɂ���Ǝ��F����o�O�A���̑��l�X�Ȗ�肪�N����\��������܂��I�j
if %ErrorLevel%==0 set setting3onoff=����&set setting3warning= 

:setting3okey
cls
SET /P selected=�f�o�b�O�@�\��%setting3onoff%�ɂ��܂����H
echo %setting3warning%
pause
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting3y)
if {%selected%}=={n} (goto :setting3n)
if {%selected%}=={back} (goto :setting)
if {%selected%}=={b} (goto :setting)
goto setting3okey

:setting3y
find "debugoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 goto setting3ygo3test
if %ErrorLevel%==0 goto setting3ygo1

:setting3ygo3test
find "debugon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 echo debugoff >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting3ygo2

:setting3ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'debugon','debugoff' | sc �J�[�\���ւ��ݒ�.txt"
goto setting3yokey

:setting3ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'debugoff','debugon' | sc �J�[�\���ւ��ݒ�.txt"
goto setting3yokey

:setting3n
Echo �f�o�b�O���[�h�͗L���ɂȂ�܂���ł���
Pause
goto setting

:setting3yokey

find "debugoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 echo off&set debug=�I�t
if %ErrorLevel%==1 goto setting3onoffokey

:setting3onoffokey
find "debugon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 echo on&set debug=�I��

Echo �f�o�b�O���[�h��%debug%�ɂ��܂����B
Pause
Goto setting

:setting4
find "hatenakeikokuoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 set setting4onoff=�L��&goto setting4okey
if %ErrorLevel%==1 goto setting4onoff

:setting4onoff
find "hatenakeikokuon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 set setting4onoff=����
if %ErrorLevel%==0 set setting4onoff=����

:setting4okey
cls
SET /P selected=�G���^�[�L�[�̒������̌��o�@�\��%setting4onoff%�ɂ��܂����H
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting4y)
if {%selected%}=={n} (goto :setting4n)
if {%selected%}=={back} (goto :setting)
if {%selected%}=={b} (goto :setting)
goto setting2okey

:setting4y
find "hatenakeikokuoff" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 goto setting4ygo3test
if %ErrorLevel%==0 goto setting4ygo1

:setting4ygo3test
find "hatenakeikokuoffon" �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==1 echo hatenakeikokuoff >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting4ygo2

:setting4ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'hatenakeikokuon','hatenakeikokuoff' | sc �J�[�\���ւ��ݒ�.txt"
goto setting4yokey

:setting4ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'hatenakeikokuoff','hatenakeikokuon' | sc �J�[�\���ւ��ݒ�.txt"
goto setting4yokey

:setting4yokey
Echo �ݒ��ύX���܂����B
Pause
Goto setting

:setting4n
Echo �ݒ��ύX���܂���ł���
Pause
goto setting


rem �ݒ�̃w���v
:setting1help
cls
echo ���̐ݒ�́A�䂤�܂ł��Ȃ����̃o�b�`�����̃��C���ł�����J�[�\����ύX����@�\���g�p������Ɉ�x�ċN�����m�F����Ƃ��낪����̂ł����A���̕����𖳌��ɂ��A�V�[�����X��
echo �J�[�\����ς����悤�ɂ���ݒ�ł��B�܂��ł������܂�J�[�\����p�ɂɕς������Ƃ����l�͏��Ȃ��Ǝv���܂��̂ŁA�����炭���܂�g���Ȃ��ł��낤�@�\�ł��傤�B
pause
goto setting

:setting2help
cls
echo ���̐ݒ�́A�{���͂��̃o�b�`�����̓��W�X�g����ύX���邽�߁A���̍ۂɃG���[���N���Ȃ��悤�ɔO�̂��߂ɊǗ��Ҍ������擾���āA���ꂩ����s���Ă���̂ł����A
echo ��{�I�ɂ͊Ǘ��Ҍ������Ȃ��Ă�����ɕύX�ł��邽�߁A�����I�ɂ͂���Ȃ��@�\�ɂȂ��Ă��܂��Ă����ł��B�Ȃ̂ł��������N������Ƃ���
echo �����Ȃ��Ă������悤�ɖ������ł���悤�ɁA���̐ݒ肪����܂����A�W���ł̓I�t�ł��B
pause
goto setting

:setting3help
cls
echo ���̐ݒ�͌����܂ł��Ȃ��f�o�b�N���[�h��on/off�ɂȂ�܂��B���̐ݒ��L���ɂ���ƁAecho off���Ȃ��Ȃ�o�b�`�����̃R�}���h���ی����ɂȂ�A
echo �s���o�O���N�����Ƃ��Ɍ������ǋ����₷���Ȃ邽�߁A�f�o�b�O�����₷���Ȃ�̂ł��̐ݒ���������܂����B
echo ����������̓o�b�`�t�@�C���� ehco off����菜���΂����b�Ȃ̂Ŏ��ۂ̂Ƃ���͂��܂�g���Ă��܂���B
pause
goto setting

:setting4help
cls
echo ���̐ݒ�͏��X�킩��ɂ����ł����A�ȒP�Ɍ����ƃo�b�`���N�������Ƃ��ɕ\��������ʂ̂܂܂ŉ������͂����ɃG���^�[�𒷉��������Ƃ��ɏo�Ă���
echo �x�����b�Z�[�W��off/on�ɂł���@�\�ł��B
echo ����͎��ۂɑ̌����Ă�������ق����킩��₷���̂ł����A�܂����50��~250�񂭂炢�̊ԃG���^�[�𒷉����������Ă���ƁA
echo �x�������\������銴���ɂȂ�܂��ˁB���������ɂ͂��ꂪ�����Ƃ������Ǝv���l�����邩�Ǝv���܂��̂ŁA���̋@�\���I�t�ɂł���ݒ��ǉ����܂����B

:alldefultsettinghelp
cls
echo ����͌��t�̒ʂ�o�b�`�t�@�C�������������܂��B
echo ������OS�Ȃǂ������������킯�ł͂Ȃ��A���̃o�b�`�t�@�C���������A�����������s�����������ׂ�(���W�X�g���̕ҏW���܂�)�����ׂď���
echo �ɖ߂����̂ɂȂ�܂��B�Ȃ̂ŃJ�[�\���͔��F�ɁA���̃o�b�`�t�@�C�������������ݒ�t�@�C�������ׂĐՌ`�������ĂȂ��Ȃ�܂��B
echo ��������s���Ă��܂��ƃJ�[�\���ւ�������N�����̃��b�Z�[�W������Ă��܂���Ԃɖ߂��Ă��܂��̂ŁA
echo �p�\�R������A�C���C���X�g�[������p�ȊO�̗p�r�Ŏg���̂͂����߂��܂���B
echo �܂��A�A���C���X�g�[���@�\�͎��ȏ����@�\�𓋍ڂ��邱�Ƃɂ���Ď����\��Ȃ̂ŁA
echo ���̂����͂���ő��v�ł��������������珫���I�ɂ��̋@�\�͏�����\��������܂��B
pause
goto setting
 


:batver
echo.
echo �J�[�\���ւ� ver 1.8 thenks %username%!
pause
cls
goto hazime

:start2048
echo �d��ȕs��ɂ���Ĉꎞ�J�����~��
pause
echo �Z�[�u�֌W�Ƀo�O�����邹���ŉ�������
echo.
pause
echo ���̋@�\�������Ɏ��������̂͂���������ł��B
pause
goto hazime

:startcal
set q=0
set number1=0
set number2=0
set number3=0
cls
echo 2147483647�܂�(int�^�̏�� �d�l�ケ�����̌v�Z�͕s��)
echo.
title �J�[�\���d��

rem �V���v�����[�h
:simplemodecal
set q=0
set number1=0
set number2=0
set number3=0

cls
echo ������͂��Čv�Z����ꍇ��3�Ɠ��͂��Ă��������B
echo.
echo �߂�ꍇ��back�Ɠ��͂��Ă��������B
echo.
echo + or -
echo �����Z�Ȃ�1�A�����Z�Ȃ�2��I�����Ă��������B
set /p q=
if {%q%}=={back} (goto hazime)
if {%q%}=={b} (goto hazime)
if {%q%}=={1} (set whatnumber=������鑤&goto startcal2)
if {%q%}=={2} (set whatnumber=������鑤&goto startcal2) 
if {%q%}=={3} (goto advancemodecal) else (
echo �����ȑI���ł�&pause&goto startcal)

:startcal2
echo.
set /p number1=%whatnumber%����� :
if {%q%}=={1} (goto pcal)
if {%q%}=={2} (goto mcal)

:pcal
set /p number3=����������� :
set /a number1=number1+number3
echo ���� : %number1%
pause
goto simplemodecal

:mcal
set /p number3=����������� :
set /a number1=number1-number3
echo ���� : %number1%
pause
goto simplemodecal

rem �A�h�o���X���[�h
:advancemodecal

:loopcal
cls
echo �I���ꍇ��back�Ɠ��͂��Ă��������B
SET /P formula="�v�Z���鎮����͂��Ă�������."
SET /A result=%formula%
if "%formula%"=="back" goto :startcal
echo ���ʁF%Result%
pause
goto loopcal


:default
cls
echo copyright.�J�[�\���ւ�1.8 by ������ӂɂ��闑 %debugmode%
title �J�[�\���߂� %debugmode%
echo.
SET /P selected=�f�t�H���g�ɖ߂��܂����H(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes0)
if {%selected%}=={yes} (goto :yes0)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={n} (goto :no)
if {%selected%}=={no} (goto :no)
if {%selected%}=={back} (goto :hazime)
if {%selected%}=={b} (goto :hazime)
if {%selected%}=={debugyesnow} (goto :defgo)

echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
goto default

:yes0
if exist �J�[�\���ւ��ݒ�.txt goto henkoudefo
if not exist �J�[�\���ւ��ݒ�.txt goto saisyonokeikoku
:saisyonokeikoku
type nul > �J�[�\���ւ��ݒ�.txt
echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt
echo (����N�����̂�)
echo.
echo �@�@�@�@�I�x���I
echo.
echo ����bat�t�@�C���i�ȉ��A�X�N���v�g�j�́A�J�[�\�����f�t�H���g�A�܂��͍��F�ɂ��邾���̃X�N���v�g�ł��B�Ȃ��Ƃ͎v���܂����A���̃X�N���v�g���g�p����ɂ������Ĕ����������Q�A�܂��̓R���s���[�^�[�̑������̔�Q�̐ӔC�͐���҂̂�����ӂɂ��闑�͈�؂̐ӔC�����܂���I
pause
echo.
echo.
SET /P selected=��낵���ł����H(Y=Yes / N=No)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:henkoudefo
if {%selected%}=={n} (del �J�[�\���ւ��ݒ�.txt & goto exit)
if {%selected%}=={no} (del �J�[�\���ւ��ݒ�.txt & goto exit) 
if {%selected%}=={yes} (goto henkoudefo2)
if {%selected%}=={y} (goto henkoudefo2)
:henkoudefo2
echo %selected% ���I������܂����B
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x0"
cls
if %ErrorLevel%==0 goto sudenidef
if %ErrorLevel%==1 goto defgo

:sudenidef
title ���łɖ��邢
rundll32 user32.dll,MessageBeep
echo ���łɃf�t�H���g�ł��I�f�t�H���g����f�t�H���g�ɂ��ĉ��̈Ӗ��������ł����I
goto exit

:defgo
pause
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d ""
title 1
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001"
title 2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020"
title 3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f"
title 4
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000000"
title 5
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 6
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 7
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 8
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d ""
title 9
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 10
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 11
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 12
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 13
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 14
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 15
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 16
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 17
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title  18
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 19
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 20
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title nice 21

cls
echo �f�t�H���g�ɖ߂��܂����B
pause
goto reboot

:no 
echo ����...�ł����A�킩��܂����B
if %batver%=={v1.10} (goto nowhyver)
goto exit

:nowhyver
echo (�Ȃ�ł����܂Ńo�b�`�t�@�C������肱��ł��A�o�[�W������1.10�ɂȂ�܂łɋ@�\���[���������̂ɁA)
pause
echo.
echo (�����ĉ������Ȃ���I�Ԃ񂾂낤....)
goto exit

:yes
echo copyright.�J�[�\���ւ�1.8 by ������ӂɂ��闑 %debugmode%
title �J�[�\���ւ��i���j%debugmode%
echo.
SET /P selected=�J�[�\�������F�ɂ��܂����H(Y=Yes / N=No)
if {%selected%}=={y} (goto :yeskuro)
if {%selected%}=={yes} (goto :yeskuro)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={n} (goto :hazime)
if {%selected%}=={no} (goto :hazime)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto yes

:yeskuro
if exist �J�[�\���ւ��ݒ�.txt goto henkoukuro2
if not exist �J�[�\���ւ��ݒ�.txt goto saisyonokeikoku2
:saisyonokeikoku2
type nul > �J�[�\���ւ��ݒ�.txt
echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt
echo (����N�����̂ݍĐ�)
echo.
echo �@�@�@�@�I�x���I
echo.
echo ����bat�t�@�C���i�ȉ��A�X�N���v�g�j�́A�J�[�\�����f�t�H���g�A�܂��͍��F�ɂ��邾���̃X�N���v�g�ł��B�Ȃ��Ƃ͎v���܂����A���̃X�N���v�g���g�p����ɂ������Ĕ����������Q�A�܂��̓R���s���[�^�[�̑������̔�Q�̐ӔC�͐���҂̂�����ӂɂ��闑�͈�؂̐ӔC�����܂���I
pause

echo.
echo.
SET /P selected=��낵���ł����H(Y=Yes / N=No)
if {%selected%}=={n} (del �J�[�\���ւ��ݒ�.txt & goto exit)
if {%selected%}=={no} (del �J�[�\���ւ��ݒ�.txt & goto exit) 
if {%selected%}=={yes} (goto henkoukuro2)
if {%selected%}=={y} (goto henkoukuro2)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:henkoukuro2
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x2"
cls
if %ErrorLevel%==0 goto sudenikuro
if %ErrorLevel%==1 goto kurogo

:sudenikuro
title ���łɍ���
rundll32 user32.dll,MessageBeep
echo ���łɍ����ł��I����ɍ������ĉ��̈Ӗ��������ł����I
goto exit

:kurogo
pause
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d "Windows �� "
title 1
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001"
title 2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020"
title 3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f"
title 4
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000002"
title 5
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\wait_r.cur
title 6
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\arrow_r.cur
title 7
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\cross_r.cur
title 8
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d ""
title 9
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\help_r.cur
title 10
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\beam_r.cur
title 11
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\no_r.cur
title 12
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\pen_r.cur
title 13
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\person_r.cur
title 14
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\move_r.cur
title 15
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size1_r.cur
title 16
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size4_r.cur
title 17
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size2_r.cur
title 18
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size3_r.cur
title 19
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\up_r.cur
title 20
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\busy_r.cur
title black is nice. 21

cls
echo.
echo �ύX���܂���
goto reboot

:AllDefult
cd /d %HOMEDRIVE%%HOMEPATH%
if exist �J�[�\���ւ��ݒ�.txt goto AllDefulttest
if not exist �J�[�\���ւ��ݒ�.txt goto Dogcheck

:Dogcheck
title Dogcheck %debugmode%
cls
echo '########:::'#######:::'######:::::::'######::'##::::'##:'########::'######::'##:::'##:
echo ##.... ##:'##.... ##:'##... ##:::::'##... ##: ##:::: ##: ##.....::'##... ##: ##::'##::
echo ##:::: ##: ##:::: ##: ##:::..:::::: ##:::..:: ##:::: ##: ##::::::: ##:::..:: ##:'##:::
echo ##:::: ##: ##:::: ##: ##::'####:::: ##::::::: #########: ######::: ##::::::: #####::::
echo ##:::: ##: ##:::: ##: ##::: ##::::: ##::::::: ##.... ##: ##...:::: ##::::::: ##. ##:::
echo ##:::: ##: ##:::: ##: ##::: ##::::: ##::: ##: ##:::: ##: ##::::::: ##::: ##: ##:. ##::
echo ########::. #######::. ######::::::. ######:: ##:::: ##: ########:. ######:: ##::. ##:
echo ........::::.......::::......::::::::......:::..:::::..::........:::......:::..::::..::
echo.
start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=kO77pZFJp1o
echo Dim answer:answer = MsgBox("_;[ :-}3]^~",vbOKCancel,"Dogcheck"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
taskkill /im chrome.exe
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
exit

:AllDefulttest
cd /d %HOMEDRIVE%%HOMEPATH% 
find "nodogcheckfor1234567890qwertyuiop" �J�[�\���ւ��ݒ�.txt
cls
if %ErrorLevel%==0 goto AllDefult1
if %ErrorLevel%==1 goto Dogcheck

:AllDefult1
cls
color 9f
title �J�[�\���ւ��@�x�� %debugmode%
echo AllDefult�@�́A���̃o�b�`�t�@�C�����ύX�������W�X�g���A����L�^�p�̃t�@�C�������ׂČ��̏�Ԃɖ߂����̂ł��B
pause
cls
echo ���������āA���̋@�\���g�p����ƃ}�E�X�J�[�\���������̔��F�A�����Ă��̃o�b�`�t�@�C��������N�����b�Z�[�W������鏉���̏�Ԃɖ߂����ƂɂȂ�܂��I
echo (OS�������������킯�ł͂Ȃ�)
pause
cls
echo �܂��A����bat���N�����ĉ��炩�̏�Q�A�܂��͕s���v�������ꍇ�̐ӔC�͍쐬�҂̂�����ӂɂ��闑�͈�ؕ����܂���I
echo.
pause
:AllDefultOkey
SET /P selected=��낵���ł����H(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes2)
if {%selected%}=={yes} (goto :yes2)
if {%selected%}=={n} (goto :no2)
if {%selected%}=={no} (goto :no2)
if {%selected%}=={back} (goto :hazime)
if {%selected%}=={b} (goto :hazime)
if {%selected%}=={debugyesnow} (goto :yes2go)
echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
goto AllDefultOkey

:no2
echo �f�t�H���g�ɂ͖߂�܂���ł���
goto exit

:yes2
SET /P selected=�{���ɂ����̂ł��ˁH(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes2go)
if {%selected%}=={yes} (goto :yes2go)
if {%selected%}=={n} (goto :no2)
if {%selected%}=={no} (goto :no2)
if {%selected%}=={back} (goto :hazime)
if {%selected%}=={b} (goto :hazime)
if {%selected%}=={debugyesnow} (goto :yes2go)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:yes2go
echo ���s���܂��B�߂�ꍇ�̓o�b�`�t�@�C�����~���Ă��������B
pause

color 1f
cd /d %HOMEDRIVE%%HOMEPATH%
if exist ����J�[�\��.txt goto alldefnow
if not exist ����J�[�\��.txt goto erroralldef1
:erroralldef1
rem ���b�Z�[�W�\��
rundll32 user32.dll,MessageBeep
cls
echo A problem has been detected and windows has been shut down to prevent echo damage to your computer.
echo If this is the first time you've seen this stop error screen,
echo restart your computer.
echo If this screen appears again,
echo follow these steps:
echo.
echo Check to be sure you have adequate disk space.
echo If a driver is identified in the stop message,
echo disable the driver or check with the manufacturer for driver updates.
echo Try changing Video adapters.
echo.
echo Check with your hardware vendor for any BIOS updates.
echo Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components,
echo restart your computer, press F8 select Advanced Startup Options,
echo and then select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000008E (0xC0000005,0x8054DF87,0xB8F97810,0x00000000)
echo.
echo Beginning dump of physical memory
echo physical memory dump complete.
echo Contact your system administrator or technical support group for further echo assistance.

echo Dim answer:answer = MsgBox("�ǂ��Ȃ�̂��A�킩���Ă�̂��ȁH",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL%
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
if {%selected%}=={1} (goto :erroralldef1ok)
if {%selected%}=={2} (goto :erroralldef1ok)
goto erroralldef1ok

:erroralldef2
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("�ǂ��Ȃ�̂��A�킩���Ă�̂��ȁH",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL%
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
if {%selected%}=={1} (goto :erroralldef2ok)
if {%selected%}=={2} (goto :erroralldef2ok)
goto erroralldef2ok

:erroralldef1ok
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("���̃G���[�͂��ׂĂ��f�t�H���g�ɖ߂��ۂɑ��݂��Ă���͂��̃t�@�C�������݂��Ă��Ȃ��Ƃ��ɔ������܂��B",vbOKCancel,"�G���[�̌���"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL%
 
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbss

cls
echo A problem has been detected and windows has been shut down to prevent echo damage to your computer.
echo If this is the first time you've seen this stop error screen,
echo restart your computer.
echo If this screen appears again,
echo follow these steps:
echo.
echo Check to be sure you have adequate disk space.
echo If a driver is identified in the stop message,
echo disable the driver or check with the manufacturer for driver updates.
echo Try changing Video adapters.
echo.
echo Check with your hardware vendor for any BIOS updates.
echo Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components,
echo restart your computer, press F8 select Advanced Startup Options,
echo and then select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000008E (0xC0000005,0x8054DF87,0xB8F97810,0x00000000)
echo.
echo Beginning dump of physical memory
echo physical memory dump complete.
echo Contact your system administrator or technical support group for further echo assistance.
echo Dim answer:answer = MsgBox("�܂��A�����炭���Ȃ��� AllDefult �����s����ۂɏ���J�[�\���ύX.txt���폜�����̂��������Ǝv���܂����ǂˁB",vbOKCancel,"�G���[�̖{���̌���"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL%
if {%errorlevel%}=={1} (goto :erroralldef3ok)
if {%errorlevel%}=={2} (goto :erroralldef3no)
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs

:erroralldef3ok
cls
echo A problem has been detected and windows has been shut down to prevent echo damage to your computer.
echo If this is the first time you've seen this stop error screen,
echo restart your computer.
echo If this screen appears again,
echo follow these steps:
echo.
echo Check to be sure you have adequate disk space.
echo If a driver is identified in the stop message,
echo disable the driver or check with the manufacturer for driver updates.
echo Try changing Video adapters.
echo.
echo Check with your hardware vendor for any BIOS updates.
echo Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components,
echo restart your computer, press F8 select Advanced Startup Options,
echo and then select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000008E (0xC0000005,0x8054DF87,0xB8F97810,0x00000000)
echo.
echo Beginning dump of physical memory
echo physical memory dump complete.
echo damn u bich
echo Contact your system administrator or technical support group for further echo assistance.
echo Dim answer:answer = MsgBox(": )",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
 
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
exit

:erroralldef3no
cls
echo A problem has been detected and windows has been shut down to prevent echo damage to your computer.
echo If this is the first time you've seen this stop error screen,
echo restart your computer.
echo If this screen appears again,
echo follow these steps:
echo.
echo Check to be sure you have adequate disk space.
echo If a driver is identified in the stop message,
echo disable the driver or check with the manufacturer for driver updates.
echo Try changing Video adapters.
echo if you do you a delete .txt file, so fuck you,
echo Check with your hardware vendor for any BIOS updates.
echo Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components,
echo restart your computer, press F8 select Advanced Startup Options,
echo and then select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000008E (0xC0000005,0x8054DF87,0xB8F97810,0x00000000)
echo.
echo Beginning dump of physical memory
echo physical memory dump complete.
echo Contact your system administrator or technical support group for further echo assistance.
echo Dim answer:answer = MsgBox("�������[��B�ł��A�{���Ƀo�O�ł��ꂪ�N�������Ă��ƂȂ琻��҂ɓ`���Ē����Ă�����Ă��������ˁB",vbOKCancel,"�G���[�H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL%
del /Q %TEMP%\msgbox.vbs
exit

:alldefnow
color 0f
del ����J�[�\��.txt
del �J�[�\���ւ��ݒ�.txt
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d ""
title 1
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001"
title 2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020"
title 3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f"
title 4
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000000"
title 5
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 6
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 7
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 8
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d ""
title 9
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 10
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 11
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 12
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 13
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 14
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 15
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 16/
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 17
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title  18
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 19
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 20
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\
title 21

cls
title �f�t�H���g�ւ� %debugmode%
echo ���ׂĂ��f�t�H���g�ɖ߂��܂����B
pause
goto :reboot

:reboot

find rebootokey=false�J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto rebootexit)
if {%errorlevel%}=={1} (goto rebootoktest)
cls

:rebootexit
exit

:rebootoktest
find "rebootokeyon" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto reboot1)
if {%errorlevel%}=={1} (goto reboot1)
cls

:reboot1
title �ċN���̊m�F %debugmode%
cls
SET /P selected=�ċN�����܂����H�ċN�����Ȃ��ꍇ�͕ύX���K�p����܂���(Y=Yes / N=No / S=Skip)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={y} (goto :yesre)
if {%selected%}=={yes} (goto :yesre)
if {%selected%}=={n} (goto :no)
if {%selected%}=={no} (goto :no)
if {%selected%}=={skip} (goto :exit)
if {%selected%}=={s} (goto :exit)

echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:no
echo �ċN���͂���܂���ł����B
pause
echo ...
pause
goto higan

:yesre
echo �ċN�����܂��B
pause
shutdown /r /t 2
goto reboot

:higan
title �ߊ� %debugmode%
SET /P selected=�Ȃ点�߂ăT�C���A�E�g�����ł����肢���܂�.....(Y=Yes / N=No / B=Back)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={y} (goto :yes)
if {%selected%}=={yes} (goto :yes)
if {%selected%}=={n} (goto :no)
if {%selected%}=={no} (goto :no)
if {%selected%}=={back} (goto :rebootok)
if {%selected%}=={b} (goto :rebootok)

echo ?
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto higan

:no
echo.
echo �킩��܂���....
goto exit

:yes
echo ���肪�Ƃ��������܂��B
goto Lock

:secret
title why? %debugmode%
echo �����H�Ȃ�ł��̌��t��....
pause
SET /P selected=�ǂ��ł��̌��t��m������ł����H(���[�}���œ���)
if {%selected%}=={nakamiwomita} (goto :secrethentai)
if {%selected%}=={siranai} (goto :secretnomal)
if {%selected%}=={siran} (goto :secretnomal)
if {%selected%}=={kaiseki} (goto :secrethentai)
if {%selected%}=={tyokkan} (goto :secretnomal)

if {%selected%}=={tyokkan} (goto :secretnomal) else (goto secretnomal)

echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:secretnomal
echo �����H�Ă��Ƃ͒����ł�������Ă��ƂȂ́H
pause
echo �����ł���...?
goto exit
:secrethentai
echo �L���[�b�I%USERNAME%����̃G�b�`�[�I
goto exit


:testinthecalbeep
title counttest mode
cls
SET /P runcount=type run count :
cls
echo do not enter alphabet only number
echo.
echo if enter alphabet = inf loop
echo.
pause
cls
echo type run count :%runcount%
echo count test:%runcount% loop
set calbeepnotfound=1
cls

:loop
cls
echo count test:%runcount% loop %calbeep2%
echo %calbeep% 
powershell sleep 0.2

set /a calbeep=calbeep+1
set /a calbeepnotfound=calbeepnotfound+1
if %calbeepnotfound% gtr %runcount%0 goto finishcalbeep
if %calbeep% gtr 10  (set /a calbeep2=calbeep2+1)
if %calbeep% gtr 10  (set /a calbeep=calbeep-10)
cls

goto :loop
:finishcalbeep
echo Count finish.
pause
echo.
echo b n
SET /P selected=back or next count
if {%selected%}=={b} (goto :hazime) else goto finishcalbeep
if {%selected%}=={n} (goto :testinthecalbeep) else goto testinthecalbeep
goto finishcalbeep
exit


:Lock
rundll32.exe user32.dll, LockWorkStation
goto reboot

:exit
pause
:reboot

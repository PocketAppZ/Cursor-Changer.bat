@echo off
setlocal

rem �J�[�\���ւ� by tamago_1908
rem Cursor Changer by tamago_1908


rem https://github.com/tamago1908/cursor-changer.bat 


rem �T�C�Y�̎w��
mode con: cols=75 lines=25

rem ���� cd %~dp0 &start %~n0%~x0&exit �L�����p�ł��邩�� (bat�ċN��)
rem �R�[�h�̍ŏ��ɓ����鏈���̐��͌����Ă��܂�(���ꂷ����ƋN�����x���Ȃ�\��) (�x���Ȃ��� (��x��(���Ƃ��Ȃ���)) )
rem �r���h�i���o�[�ƃo�[�W�����̋L���͕K�����Ă��������I���ƃA�[�J�C�u�ɓ����̂�Y�ꂸ�ɁI
rem �����čŋ߁A���̃o�b�`�����ɉp��𑽂��܂߂�悤�ɂ��Ă���B�Ȃ��Ȃ�A�����I�ɂ��̃o�b�`������|�󂷂邱�ƂɂȂ������A���{�ꂪ�����Ɩʓ|������B
title �J�[�\���ς�
rem VER v1.12
set batver=1.12
set batbuild=build 44
set hazimeeaster=false
set firststartbat=no
rem ����ɂ������Ďg�p�����\�t�g windows notepad v10.2103.12.0 �g�p�t�H���g�@Nirmala UI�̑���
rem 2021�N12��09������ windows notepad v10.2110.64.0 Nirmala UI�̑���
rem ���C�� Visual Studio Code
rem �f�o�b�N�p Visual bat

:argmentcheck
rem �������Ȃ���ΏI��
if "%~1"=="" goto argmentcheckend
title Cursor Changer argment checking...
rem ������z��Ɋi�[
setlocal enabledelayedexpansion
set i=0
for %%a in (%*) do (
  set /a i+=1
  set arg[!i!]=%%a
)

rem �z��̗v�f�����擾
set n=%i%
rem �z��̗v�f�����Ԃɏ���
for /l %%i in (1,1,%n%) do (
  rem ��O�����p�̕ϐ��̏������B���ƂŎg�p���܂��B
  set argmentserror=true
  rem ���݂̗v�f���擾
  set current=!arg[%%i]!
  rem ���݂̗v�f����łȂ���Ώ���
  if not "!current!"=="" (
    rem ���݂̗v�f�ƈ�v����v�f����ɂ���i�d���r���j
    for /l %%j in (%%i,1,%n%) do (
      if "!arg[%%j]!"=="!current!" set arg[%%j]=
    )
    rem ���݂̗v�f�ɉ������������s��
    if "!current!"=="bypsdisexit" (echo disableexitbutton is bypassed.&set disableexit=false&set argmentserror=false)
    if "!current!"=="enablesimpleboot" (title simpleboot is enabled.&set simpleboot=true&set argmentserror=false)
    if "!current!"=="devmode" (call :developermenu&set argmentserror=false)
    if "!current!"=="help" (call :batstarthelp&set argmentserror=false)
    if "!current!"=="bypsvck" (echo winver check is bypassed.&set bypasswinvercheck=true&set argmentserror=false)
    if "!current!"=="bypsadm" (echo getadmin is bypassed.&set adminbypass=true&set adminbypass=false&set argmentserror=false)
    if "!current!"=="bypsloadsg" (echo setting load is bypassed.&set settingbypass=true&set argmentserror=false)
rem ��O����
   if "!argmentserror!"=="true" (title Cursor Changer argment error&echo unvalid argment or something went worng ^(!current!^) error. please set valid argment. ^(or use ^"help^" ^)
      )
    )
  )
)
:argmentcheckend
setlocal disabledelayedexpansion
set argmentserror=
timeout 3 >nul

rem windows�o�[�W�������f
rem ������ƕs����邩���B�ꕔ�̃o�[�W�����ł͐���Ƀt�B���^�[�����삵�Ȃ��\��������B
:batbootcheckwinver
if {%settingbypass%}=={true} (goto batbootcheckwinversafe)
rem windows11 check
ver | find /i "Version 10.0.2" > nul
if {%errorlevel%}=={0} (goto batbootcheckwinversafe)
rem windows10 1511 or higher check
ver | find /i "Version 10.0.10" > nul
if {%errorlevel%}=={0} (goto batbootcheckwinversafe)
rem windows10 1509 check
ver | find /i "Version 10.0.102" > nul
if {%errorlevel%}=={0} (set windowsverfilter=windows10 1509&goto batbootcheckwinverbad)
rem windows 8 or low check
ver | find /i "Version 6." > nul
if {%errorlevel%}=={0} (set windowsverfilter=windows8.1�ȑO&goto batbootcheckwinverbad) else set windowsverfilter=windows vista�ȑO�i�Â����܂��I�j goto batbootcheckwinverbad

:batbootcheckwinverbad
ver | find /i "Version 6.1" > nul
if {%errorlevel%}=={0} (set windowsverfilter=windows7)
ver | find /i "Version 6.2" > nul
if {%errorlevel%}=={0} (set windowsverfilter=windows8)
ver | find /i "Version 6.3" > nul
if {%errorlevel%}=={0} (set windowsverfilter=windows8.1)
echo ���g����windows�̃o�[�W����(%windowsverfilter%)�̓J�[�\���ւ��ɑΉ����Ă��܂���I
pause
cls
echo �J�[�\���ւ��̑Ή�OS��windows 10 �o�[�W���� 1511�ȍ~����ł��B
pause
cls
echo ������Â��o�[�W�����i�Ⴆ��windows 7��Awindows 8�A8.1���j�͑Ή����Ă��܂���B
pause
cls
echo �����Ȃ������g����windows���A�b�v�f�[�g���邩�A�J�[�\���ւ� �o�[�W����1.12�ȑO�������p���������B
pause
exit

:batbootcheckwinversafe
rem �{���� (�ϐ��̃Z�b�g�Ƃ��A�O�i�K)
set bootbatnow=yes
set exitbuttondisabled=false
rem �Ǘ��Ҍ�����ۗL���Ă��邩�̊m�F
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem �Ǘ��Ҍ�����ۗL���Ă����ԂŁAexit�{�^���𖳌��ɂ���ƁA�H�ɃE�C���X�Ƃ��Č��o����Ă��܂��ꍇ������B�Ȃ̂ŁA�Ǘ��Ҍ����ۗL���ƁAdisableexit�Ƃ����ϐ���false�̏ꍇ�́A�������o�C�p�X���Ă���B
if {%disableexit%}=={false} (goto batbootdisabledexitbutton)

:batbootdisableexitbutton
rem startid~powershell �܂ł̃R�[�h�͂��炵�Ă͂����Ȃ��@����ȑO������Ȍ�Ȃ�ok
:: StartID1908
call :getLineNumber startLine StartID1908 0
goto batbootdisableexitbuttonendcode
:batbootdisableexitbuttoncodestart
set /a startline=startline+4&set /a endline=endline-3
title �J�[�\���ւ����N����...&echo ���΂炭���҂���������...&powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*&goto batbootdisabledexitbutton
#�I���{�^���𖳌���
#Calling user32.dll methods for Windows and Menus
$code = @'
using System;
using System.Runtime.InteropServices;

namespace CloseButtonToggle {

// �֐��̐錾

 internal static class WinAPI {
   [DllImport("kernel32.dll")]
   internal static extern IntPtr GetConsoleWindow();

   [DllImport("user32.dll")]
   [return: MarshalAs(UnmanagedType.Bool)]
   internal static extern bool DeleteMenu(IntPtr hMenu,
                          uint uPosition, uint uFlags);

   [DllImport("user32.dll")]
   [return: MarshalAs(UnmanagedType.Bool)]
   internal static extern bool EnableMenuItem(IntPtr hMenu,
                          uint uIDEnableItem, uint uEnable);

   [DllImport("user32.dll")]
   [return: MarshalAs(UnmanagedType.Bool)]
   internal static extern bool DrawMenuBar(IntPtr hWnd);

   [DllImport("user32.dll")]
   internal static extern IntPtr GetSystemMenu(IntPtr hWnd,
              [MarshalAs(UnmanagedType.Bool)]bool bRevert);

   [DllImport("user32.dll")]
   internal static extern int GetWindowLong(IntPtr hWnd, int nIndex);

   [DllImport("user32.dll")]
   internal static extern int SetWindowLong(IntPtr hWnd, int nIndex, int dwNewLong);

// �錾�I��

// �K�v�Ȉ����̐ݒ�
   const int GWL_STYLE = -16;
   const int WS_MAXIMIZEBOX = 0x00010000;

   const uint SC_MAXIMIZE = 0xF030; 
   const uint MF_BYCOMMAND = 0;

// ���C���̏���
internal static void ChangeCurrentState(bool state) {
     IntPtr hWnd = GetConsoleWindow();
     int style = GetWindowLong(hWnd, GWL_STYLE);
     if (state) {
       style |= WS_MAXIMIZEBOX; // �ő剻�{�^����L���ɂ���
     } else {
       style &= ~WS_MAXIMIZEBOX; // �ő剻�{�^���𖳌��ɂ���
     }
     SetWindowLong(hWnd, GWL_STYLE, style);
     DrawMenuBar(hWnd);
   }
 }
// �ύX�̊m�F
 public static class Status {
   public static void Disable() {
     WinAPI.ChangeCurrentState(false); //�I���ɂ���Ȃ� 'true' �ɕύX
   }
 }
} 
'@

Add-Type $code
[CloseButtonToggle.Status]::Disable()
:batbootdisableexitbuttonendcode
:: EndID1908
call :getLineNumber endLine EndID1908 0
if {%exitbuttondisabled%}=={false} (set exitbuttondisabled=true&goto batbootdisableexitbuttoncodestart) else (goto :batbootdisabledexitbutton)

:GetLineNumber <resultVar> <uniqueID> [LineOffset]
:: Detects the line number of the caller, the uniqueID have to be unique in the batch file
:: The lineno is return in the variable <resultVar> add with the [LineOffset]
SETLOCAL
for /F "usebackq tokens=1 delims=:" %%L IN (`findstr /N "%~2" "%~f0"`) DO set /a lineNr=%~3 + %%L
(
ENDLOCAL
 set "%~1=%LineNr%"
 goto :eof
)

rem �{����
:batbootdisabledexitbutton
set startline=&set endline=&set exitbuttondisabled=
cd /d %HOMEDRIVE%%HOMEPATH%
find "fastboot=true" �J�[�\���ւ��ݒ�.txt
cls
if {%errorlevel%}=={0} (goto batstart) else (goto nofastboot)
:nofastboot

rem ����Ȃ����̗���

rem ###################
rem #    HELLO�@WORLD    #  
rem ###################
rem �\��100%�A�t���X�N���[�������@����ȊO�͕\���̕ۏ؂Ȃ�


rem ���Ȃ݂ɏ��
rem ���̃o�b�`�t�@�C���̊J�����n�܂����̂�2021�N��10��8��(���炭)
rem �J���̓��@�́A�J�[�\�������������ꂽ�Ƃ��ɂ��������ς���̂��߂�ǂ���������o�b�`�t�@�C���Ŏ��������悤�Ƃ�������B�������̂��Ƃ��낢��@�\�������Ă����č��̏�ԂɂȂ����̂ł���B
rem �o�[�W����2.0.0�܂ł̓J�[�\���u���b�N�Ƃ������O������
rem �J�������ɂȂ��ăJ�[�\���ւ�(��)�ɕύX���ꂽ
rem �J������ɂȂ��ăJ�[�\���ւ��݂̂ɕύX���ꂽ
rem �ŏ��̃o�[�W������1.0.1������
rem ���O�̕ύX�����ꂽ�o�[�W������2.0.0��2.5.0beta5
rem �o�[�W����2.0.0�ł̓f�t�H���g�ɖ߂���@�\���ǉ�
rem �f�t�H���g�ɖ߂��@�\�̓o�[�W����1.5.0�����肩��ق̂߂����Ă���
rem �o�[�W����2.1.x����NoFB NonFIxBug�Ƃ����o�[�W�������ǉ����ꂽ�������ɍ폜���ꂽ
rem �J�[�\���ւ��ɂ̓o�[�W���� Dev.1�Ƃ������̂�������
rem �o�[�W����Dev.1�̓o�[�W����2.4.x�ɑ���
rem �o�[�W����2.4.x�܂ł͂��̂������o�[�W�����̏�������������
rem ��ԊJ���Ɏ��Ԃ����������̂̓o�[�W����1.12�ł���B (���N�Ԃ̊J������)
rem ���e�������Ⴎ����Ȃ̂͂��Ƃ��Ɛl�Ɍ�������肪�Ȃ���������ł���B
rem �J�[�\���ւ��ɂ�2022�N2��22��22��22��22�b�Ɋ��������o�[�W����������B���ꂪ�J�[�\���ւ�1.7a���B

rem �o�[�W�����A�b�v���
rem �o�[�W����2.5.0�ȑO�̃n�[�W���������͏������Ă��܂�
rem �o�[�W����2.5.0 beta1�ł��ׂĂ̕ύX���f�t�H���g�ɖ߂��@�\���ǉ�
rem �o�[�W����2.5.0 beta5���疼�O���J�[�\���ւ� 1.0beta�ɕύX
rem �o�[�W����2.5.0 beta7 (1.0beta2)����Dogcheck�Ƃ����l�^�@�\���ǉ����ꂽ
rem �o�[�W����2.5.0 beta9 (1.0beta4)����Dogcheck�ɃA�b�v�f�[�g������A�������O�̃e�L�X�g�t�@�C������邾���ł͉�����ł��Ȃ��悤�ɂȂ���
rem �o�[�W����1.0(2.5.0 beta10)���琳���ɃJ�[�\���ς��̍����I�ȕ����������A����ɔ����J�[�\���ւ��̃o�[�W������1.0�ƂȂ���
rem �o�[�W����1.1 (2.5.0beta11)����alldef����̃R�}���h�̃~�X�ɂ�蕪�򂪂ł��Ă��Ȃ������o�O����������A����蕪�򂲂Ƃ̃N���A���Ȃ��Ȃ�A���V�[�����X�ɕ��򂷂�悤�ɂȂ����B
rem �o�[�W����1.2 (2.5.0beta13)����f�t�H���g�ɖ߂��A�������͍��F�ɕύX����ۂ̕������ύX���ꂽ�B
rem �o�[�W����1.3(2.5.0beta14)����A����̕ύX�ł����������������Ƃ��ɁA����J�[�\���ύX�Ƃ������̂��폜�����@�\��������������A����ɉ����āA�C�[�X�^�[�G�b�O�ɂ�����Ƃ����V�@�\���ǉ��B
rem �o�[�W����1.4(��2.5.0beta15)����A���ɊJ���������瓯���������@�\��I�����镔�����ύX����A����ɔ������o�[�W�����\�L���Ȃ��Ȃ�A�{���̈Ӗ��ł�ver2.5.0�ɂȂ����B
REM �o�[�W����1.5����A����^���ƌ����Ă������قǂ̃A�b�v�f�[�g�������B

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
rem �o�[�W���� 1.8 ����̃A�b�v�f�[�g�ł͐ݒ胁�j���[�ɂ�����Ƃ����ύX���������A�ݒ�̐����ƌ��݂̐ݒ肪�L�������������V�[�����X�Ɍ����悤�ɂȂ����B
rem �����č���̃A�b�v�f�[�g�ł�2048�Ƃ����Q�[�������ڗ\�肾�����̂����A�J�������ɃZ�[�u�@�\�֘A�ɋZ�p�I�Ȑ���ƃo�O�����邱�Ƃ����o���A�J������q�������߁A
rem ���̋@�\�ǉ��͖������ɉ����ɂȂ����B
rem �o�[�W����1.9 ����̃A�b�v�f�[�g�́A�J�[�\���ւ��ݒ�̍\����ύX���Afalse��true����ύX���邾���ɂ����B����ɂ�艽���I���ŉ����I�t�����킩��₷���Ȃ����B
rem �܂��A����̃A�b�v�f�[�g�ɂ���āA����J�[�\��.txt�ɂ�dogcheck���ǉ����ꂽ�̂ŁA�܂��ݒ�t�@�C����r���ō폜������Ȃ�Ă��Ƃ����ɂ����Ȃ����B

rem �o�[�W����1.10 ����̃A�b�v�f�[�g�̓J�[�\���ւ��j��ł�BIG�ȃA�b�v�f�[�g���B�܂��A�ݒ胁�j���[�ƍŏ��̃��j���[��UI���ǉ�����A���j���[�̐������s���A�z���C�g���[�h��Alldef���ړ������BAlldef�ɂ͎��ȏ����@�\���ǉ�����A�A���C���X�g�[�����j���[�������I�@�\�Ƃ��ĐV���Ɏ������ꂽ�B�����ď���N�����b�Z�[�W���ύX����A�y���A�j���[�V��������悤�ɂȂ�A���b�Z�[�W���ύX���ꂽ�B�����āA�J�[�\���ւ��̏����̃o�[�W�������炠�����J�[�\����ς��郁�j���[���Ȃ�Ɠ�������A���F�ƍ��F�������I�ɔF�����āA�I�����Ȃ��Ă������I�ɕύX�����悤�ɂȂ����B�����Ă�����Ƃ����B���v�f���ǉ����ꂽ�B�܂��A�ݒ�������I�ɋL�������悤�ɂȂ�A�o�O��뎚�E���������ꂽ�B����ȊO�ɂ���������̕������ύX����A���͂�ʕ��ɂȂ����B
rem �o�[�W����1.10a ������Ƃ����C���ƁA�N�����ɏ������ƋN�����Ƃ������b�Z�[�W���\�������悤�ɂȂ�A�킩��₷���Ȃ����B

rem �o�[�W����1.11 ����̃A�b�v�f�[�g�́A��ɐݒ�ƋN���֌W�̓����\�����啝�ɕς��A�ȒP�Ɍ����ƍ��܂ł́A"�Ƃ肠�����S�����"�\������A"�ق����Ƃ��Ɏ��"�\���ɂȂ����������ŁA�S�̓I�ȃ��X�|���X�����サ���B����ƁA������Ƃ����ύX��������ꂽ�B(���Ȃ݂ɁA���̋@�\�̎����ɂ͂ƂĂ���J�����B)
rem �o�[�W����1.11a dogcheck��AA����ƁA�ݒ�Őݒ��ύX�������reload������Ɖi���Ƀ��[�h�������Ă��܂��s����C���B

rem �o�[�W����1.12
rem ����̃A�b�v�f�[�g�́A�J�[�\���ւ��j��ł����劎��^�̃A�b�v�f�[�g�Ƃ����Ă����B�܂��A�ݒ��UI�A�N������UI���啝�ɕύX���ꂽ�B�����āA���j���[��ʂ̓d��ƏI�������]���Adogcheck���啝�ɕς��A�l�X�ȐV�@�\���ǉ�����A�قڂ��ׂẴo�O���C������A�p����ǉ�����A....�����Ƃɂ����A��������点�Ȃ��قǁA��ʂ̋@�\���ǉ����ꂽ�Bdebug�̐ݒ肪�ύX����A1.11�Ƃ͌݊�������������ꂽ�B�Ƃɂ����ƂĂ���ʂ̋@�\���ǉ����ꂽ�B�����ĊJ���ɂ͔��N�����������B

rem �x�[�^�ł̐i��

rem ver1.6
rem �o�[�W����1.6�� 1.6�̃��o�[�W�����B�ݒ��3�ԖځA�f�o�b�O���[�h�̗��̋@�\���������B
rem �o�[�W����1.6��1 1.6�̃x�[�^�ŁB���܂Ō����Ă����ݒ��2�Ԗڂ����������B
rem �o�[�W����1.6��2 1.6�̃x�[�^��2�B�ݒ�̓�Ԗڂɂ������d��ȃo�O���C�������B(setting3�ƃ^�C�v�~�X�Ŋ���,adminonoff�Ɗ֐�����̓~�X)
rem �o�[�W����1.6��2 �o�[�W�����K�����x�[�^�Ō���ύX����X�V��������ǉ����邱�ƂƂȂ����B
rem �o�[�W����1.6��3 1.6�̃x�[�^��3�B����N�����Ƀ��S�����F�Ō��鉉�o���ǉ����ꂽ�B���Ȃ݂ɂ�������1.6�������Ɋ�������B
rem �o�[�W����1.6��3 1.6�̃x�[�^�ł̍ŏI�o�[�W�����B�O�قǋ@�\���ǉ����ꂽ�B

rem ver1.10
rem �o�[�W���� 1.10��1 1.10�̍ŏ��̃x�[�^��.�B�ŏ��̉�ʂƐݒ胁�j���[��UI���ǉ����ꂽ�B
rem �o�[�W���� 1.10��2 1.10�̃x�[�^��2�B �ݒ胁�j���[�ɃA�j���[�V�������ǉ����ꂽ�B
rem �o�[�W���� 1.10��3 1.10�̃x�[�^��3�B �ύX����������A��̃��j���[�Ŕ��F�A���F�ɕύX�ł���悤�ɂȂ����B����������ɂ���ĕ��c���Ȃ��Ȃ����B
rem �o�[�W���� 1.10��4 1.10�̃x�[�^��4�B �e�[�}�̕ύX���ݒ�Ɉڍs����A����ɔ����������j���[���ω������B
rem �o�[�W���� 1.10��5 1.10�̃x�[�^��5�B alldef�Ɏ����I�����A���C���X�g�[���@�\����������A���̃o�b�`�t�@�C�����폜�����悤�ɂȂ����B�����ď���N�����̃��b�Z�[�W�������ύX����S�̓I�Ȏ������サ���B
rem �o�[�W���� 1.10��6 1.10�̃x�[�^��6�B �܂���������������N�����b�Z�[�W���i�������B�܂��A���̃o�[�W�����ł�test�Ɠ��͂���Ə���N�����b�Z�[�W�������B(�����łł͍폜�\��)�����āAwindow�̃T�C�Y���ύX���ꂽ�B
rem �o�[�W���� 1.10��7 1.10�̃x�[�^��7�B ����N�����̃��b�Z�[�W�����ׂĕύX����A�܂��A�j���[�V�������ǉ����ꂽ�B������easteregg�Ƃ��������ǉ����ꂽ.....

rem ver1.12
rem �o�[�W���� 1.12��1 �ŏ���1.12�̃x�[�^�ŁB�������Ȃ� �{�^�����A�I���{�^���ւƕς��A�z�u���d��Ɠ���ւ�����B�����Đݒ�̌��������m���ďC���ł���@�\���ǉ����ꂽ�B
rem �o�[�W���� 1.12��2 1.12�̃x�[�^��2�B�x�[�^1�Ŏ������ꂽ�ݒ�̐������e�X�g�̃o�O�������ɏC���B����ɂ�芮���ɓ��삷��悤�ɂȂ����B�܂��A�ݒ��ǂݍ��ޕ������œK�����ꂽ�B�����Ĉꕔ�̃o�O��s�v�ȋ@�\���폜���ꂽ�B
rem �o�[�W���� 1.12��3 1.12�̃x�[�^��3�B���̃o�[�W�����łׂ͍��������̏C�������C���ŁA���setting dogcheck�̋@�\�g���ƃo�O�C���Adogcheck�֘A�̋@�\�����ƃo�O�C�������C���B����N�����̋@�\�����̒ǉ������ꂽ�B
rem �o�[�W���� 1.12�� setting ui deb �ݒ�̐V����UI�̊J���̂��߂����ɍ쐬���ꂽ���ʂȃo�[�W�����B
rem �o�[�W���� 1.12��4 1.12�̃x�[�^��4�B���̃o�[�W�����͑�ʂ̋@�\�ǉ����Ȃ��ꂽ�B��ɐݒ胁�j���[��UI���啝�ɕύX����A�ݒ肪��̃J�e�S���[�ŕ������A��蒼���I�ɑ���ł���悤�ɂȂ����B�����ăA���C���X�g�[�����j���[���i�����A�@�\���ǉ����ꂽ�B�ݒ��help���ύX����Adogcheck���i�����A�ݒ��debug�������N���ifastboot�j�ɕύX����A�N���A�j���[�V�����Ɉ��ނ������A����ɔ����N���A�j���[�V�����𖳌��ɂł���悤�ɂȂ�A����ȊO�ɂ��l�X�ȕ������ύX���ꂽ�B
rem �o�[�W���� 1.12��5 1.12��5�B���̃o�[�W�����ł́A�ݒ胁�j���[�̐ݒ��K�p���郁�j���[�����ǂ���A���킩��₷���Ȃ�Aalldef�̕��򕔕��̕s�����ꕔ�C�����ꂽ�B�����āAwindows��OS�o�[�W���������m���Awindows 10 1551�ȑO�ł͓���s�\�ɂȂ����B�܂��V����msgbox�̕\�����@�̃e�X�g��easteregg�ɓ�������A����ɂ�powershell���g�p����Ă���A�����S�ȍ\���ɂȂ����B����ȊO�ɂ��Afulldebug�̋@�\�����Adebug�p�̃��_�C���N�g�R�}���h���ǉ����ꂽ�B
rem �o�[�W���� 1.12��6 1.12��6�B���̃o�[�W�����̃A�b�v�f�[�g�͔��X������̂ŁA�����܂ő傫�ȕω��͂Ȃ��B��Ƀf�o�b�O���[�h�֘A���i�������Bfulldebug�̋@�\����葝���A���R�ɕϐ���ύX�ł���悤�ɂȂ����B�����āAcmd�łȂ��ƋN���ł��Ȃ��Ȃ����B(���̍ۂɂ͊J�������@�\������B)�����āA�ׂ����C��������Ă���B
rem �o�[�W���� 1.12��7 1.12��7�B���̃o�[�W�����́A��ɋN����ʂ��ύX����A���O���t�B�J���ȕ\���ɂȂ����B�����Ĕėp���������Ďg���₷���Ȃ����B�������A���̔��ʁA�N�����Ԃ��{�����A����ł͏����s����ȃA�j���[�V�������B����������ȊO�ɂ��A�ׂ��������̃o�O�C����A�@�\�������s��ꂽ�B�ialldef�̎��ȍ폜�@�\�̃o�O�C���Ȃǁj
rem �o�[�W���� 1.12��7a 1.12��7�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́A�ׂ��������̏C�����s��ꂽ�B�Ǘ��Ҍ����̐ݒ肪�L���̍ۂɌ���ăG���[���o�Ă��܂����ƁAfulldebug�̋@�\�����A�V�����N���A�j���[�V�����̃G���[���������P���ꂽ�B����ȊO�ɂ��뎚���C�����ꂽ�Bbuild�ԍ���35�ɁB
rem �o�[�W���� 1.12��7b 1.12��7a�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́A��ɋN���A�j���[�V�����̕s����C������A���G���[���N���ɂ����Ȃ����B�ϐ��̏��������s����悤�ɂȂ�A�����肵���B�����āA�N���������Ƀo�[���Ō�܂ōs���悤�ɂȂ����Bbuild�ԍ���35.5�ɕύX�B
rem �o�[�W���� 1.12��7c 1.12��7b�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́A1.12��7b�Ɋ܂܂�Ă����ϐ��̏������ɂ������o�O���C������A�����肷��悤�ɂȂ����B�����Ă���ȊO�ɂ��܂܂�Ă����o�O���C�����ꂽ�̂ŁA��ɂ��̃o�[�W�����̓o�O�C���o�[�W�����ł���Bbuild�ԍ���35.7�ɕύX�B
rem �o�[�W���� 1.12��7d 1.12��7c�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́Afulldebug�̋@�\����������A�V�����ϐ������₷���Ȃ�A�폜��ύX�Ȃǂ����₷���Ȃ����B������easteregg�������ɂȂ���....build�ԍ���35.8�ɕύX�B
rem �o�[�W���� 1.12��8 1.12��8�B���̃o�[�W�����ł́A�����I�ɁA�E�B���h�E�E��́A����{�^������̃J�[�\���ւ��̏I�����ł��Ȃ��Ȃ����B����ɂ��A�s���ȏI�����ł��Ȃ��Ȃ����B�����Ă��̋@�\�����ɂ͓���ȕ��@���g�p���Ă���A�������I�ȈӖ�����������B�����čׂ��ȕ����̒������s��ꂽ�Bbuild�ԍ���36�ɕύX�B
rem �o�[�W���� 1.12��8a 1.12��8�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́A���݊J����Ă���console�̌��o�@�\���r�����ꂽ�B�ǂ����console�̌��o�͕s����ŁA���̎��̏󋵂ɂ���č��E����邩��Bbuild�ԍ���36.1�ɕύX�B
rem �o�[�W���� 1.12��8b 1.12��8a�̃}�C�i�[�A�b�v�f�[�g�B���̃o�[�W�����ł́Ainspect entire command list�Ƃ����R�}���h���ǉ�����A���̃R�}���h���g�p����ƃ��C�����j���[�Ŏg�p�\�Ȃقڂ��ׂẴR�}���h���{�����邱�Ƃ��ł���B�g�p�ɂ̓p�X���[�h���K�v�B����ɂ͎����I�ȋ@�\�Ƃ��āA6�F�̐F�ŕ\������Ă���B����ȊO�ɂ��ׂ����������C�����ꂽ�B build�ԍ���37�ɕύX�B
rem build 38 �}�C�i�[�A�b�v�f�[�g�Bpowershell�o�R�ł�C#�����s���s�Ŕ������Ă�������̃o�O���C���B����ȊO�ɂ��ׂ��ȃo�O�C�����s��ꂽ�B
rem build 39 �}�C�i�[�A�b�v�f�[�g�B�V����������enablesimpleboot���ǉ����ꂽ�B�����I�ɁA�ݒ�Ɋ܂߂�\��B����ɔ�����iecl�ƈ���help���ύX���ꂽ�B
rem �o�[�W���� 1.12��9 1.12�̃x�[�^��9�B���̃o�[�W�����ł́A�ׂ��ȕs����C�����ꂽ�B�����āAsetting�̓ǂݍ��ݕ������ύX����Agoto���g�p�������@����call���g�p�������@�ɕύX����A�����肷��悤�ɂȂ����B����ȊO�ɂ��ׂ��������̕s����C�����ꂽ�B���Ȃ݂ɂ�������1.12����������B
rem build 41 �}�C�i�[�A�b�v�f�[�g�B�I���{�^���𖳌������Ă����̂��A�ő剻�{�^���̖������ɕύX���ꂽ�B
rem �o�[�W���� 1.12��10 1.12�̃x�[�^��10 ���̃o�[�W�����ł́A�p��|�󂪒ǉ�����A�ׂ����o�O���C�����ꂽ�B���܂�傫�ȕω��͂Ȃ��B�����Ă��ꂪ1.12���̍ŏI�o�[�W�����ɂȂ�\�肾�B


rem ����̗\�� (roadmap)

rem �R�[�h�̏��Ԃ�ύX���A�ǂ݂₷������
rem �������Ȃ����I���܂��͉�������ɕύX
rem �ݒ��UI��啝�ɕς��āA�J�e�S���[�ɕ�����B���̃J�e�S���[�̒��ɐݒ������
rem �Z�[�u�֌W�̃t�@�C����ۑ�����f�B���N�g����ݒ�ŕύX�ł���悤�ɂ���B
rem �J�[�\���ւ��ݒ�.txt�Ɋ܂܂�Ă���ݒ肪�S���������Ă���ꍇ�́A�J�[�\���ւ��ݒ�.txt���쐬���Ȃ����@�\�B
rem �ݒ�̏������i�A���C���X�g�[�����j���[���������Ƃ��̍��ڂɂ���j
rem 1.12�����\�� 23�N6����

rem ver 1.13 23�N�H����
rem ����N�����̏����ݒ�̒ǉ� (�ݒ�����[�U�[�C�ӂŃZ�b�g�A�e�[�}�Ȃǂ�)
rem ���g�p�R�[�h�܂��͖��ʂȂ��̂��폜���āA���ǐ����グ��B
rem ���ݎ����𔻕ʂ��Ă�����������B���t�ɂ���Ă����A�����߂�B
rem �S�̓I�ȃR�[�h�̐���
rem ������Ή� 
rem �A���C���X�g�[�����j���[�����������達�J����
rem �t�@�C����������AREADME�Ƃ��������肾���ǌ`�Ƃ��Ă͍\�z�͂˂��Ă���

rem ver 1.14 
rem ���h��ȃA�j���[�V������setx��p�����N���񐔂̃J�E���g�Ƃ���̒������

rem ver 1.15 
rem �F�ł킩��₷���I�`���[�g���A���Ƃ��i������dogcheck (sam�`�F�b�N�̂悤�ȋ@�\������)

rem ver 1.16 
rem ���ǂ�����N�����̃��b�Z�[�W�Ɣh���UI�A�ύX�ł���J�[�\���̎�ނ𑝉�

rem ver 1.17 
rem ��葽���̐ݒ�Ƃ��ǂ����肵���v���O����

rem ver 1.18 
rem �P�̂ł̃A�b�v�f�[�g�m�F�@�\�Ƃ����S�������߂�A�J�X�^���J�[�\���@�\

rem ver 1.19 
rem �Q�[���̒ǉ��ƃJ�[�\���ւ��v���O�����S�̂̃��t�@�N�^�����O

rem ver 1.20 (2.0) 
rem .....???

rem ���� 
rem �`���[�g���A���@�\�@���܂����Ƃ���āA����N�����ɂ̂݋N��������(���΂悭��readme�̑�ւɂ�����)�����[��B��l�ł��ɂ͑�K�͂�����
rem UI�̕�����wasd�܂���12345�őI�����āAe�Ƃ��őI������悤��(�ݒ胁�j���[�Ƃ����B���قڂقڊm��Ŏ������邯�ǁA�������Ȃ����Ȃ肻�������猻���_�ł͖���
rem ���ׂĂ�UI������ύX(alldef��wmode�Ƃ������ׂĂɂ�����)���قڊm��A�����I�[�o�[�z�[������Ƃ������͌��݂̃��C�����j���[�ɋ߂���UI�ɂ���Ƃ����Ӗ����Ǝv���B
rem fulldebug �ϐ��������ׂĕ\�����������ǎ����ς݁B
rem �E���ւ�Ƀ��A���^�C���ŕ\������鎞�v�������B�s�\���ˁB���Ɏ������Ă����쐫����������邩��ʓr�����p��bat�t�@�C�����K�v�B
rem ��ɋN���A�j���[�V�������Đ������達�����ς݁B
rem �ݒ胁�j���[�̑s�剻�A�I�v�V������bat�t�@�C���̎g�p��2.00�ŗ\�肳��Ă邯�Ǐ�L�̒ʂ肫��
rem �p��Ή��@�����������I�ł͂Ȃ�
rem ��̂���������ɂ������āA��Ԏ������₷���͕̂ϐ���p���āA�����ϐ�lang��jp�ł���Ȃ�΁A�֐�jp1,2,3,4,5,6,7,8...�ɓK���ȕ�����}��������Ƃ����낤���B
rem ������������s�����Ƃ���ƍ����̃o�b�`�����Ɋ܂܂�Ă���S������ϐ��̖��O�ɂ��Ȃ���΂������A��������Ƃ��Ă�v1.10�ȍ~�̎����ɂȂ肻�����B��....�܂��撣��

rem ############################################################################################################################
:fastboot

rem �ŏ��̋N���Ȃ̂������m
:syokaicolorlogo
cd /d %HOMEDRIVE%%HOMEPATH%
if exist ����J�[�\��.txt set firststartbat=no&set bootbatnow=yes&goto :batstart
if exist �J�[�\���ւ��ݒ�.txt title &echo �e���F�I�I�I���O�͂��������܂����A�A�b�I�I&pause&cls&echo ��������ɏ���J�[�\���������������ȁI�H�I�H�I�H&pause&cls&echo �Ȃ�ŃJ�[�\���ւ��ݒ�.txt������̂ɏ���J�[�\��.txt�͑��݂��˂��񂾂�I�I������������I�H�H&pause&cls&echo ���O�͌������ׂ������b�I%username%�I&pause&cls&echo �Ȃ�Ă̂͏�k�ł�......���A����J�[�\��.txt�����݂��Ȃ��̂͊m���ł��B&pause&cls&echo ���̃��b�Z�[�W���ēx���������Ȃ��ꍇ�́A�ݒ�t�@�C�����������A����J�[�\��.txt�������g�ō쐬�������Ă��������B&pause&cls&goto exit
if not exist ����J�[�\��.txt set firststartbat=yes& goto :syokaiboot

rem ����N������̃A�j���[�V�������Đ�
:syokaiboot
title welcome to my bat file!
powershell sleep -m 500
cls
echo WELCOME TO
powershell sleep -m 200
cls

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
echo �@�@�@�@  ��
powershell sleep -m 100
cls
color 07
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo �J
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo �J�[
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo �J�[�\��
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo �J�[�\����
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo �J�[�\���ւ�
ping -n 1 127.0.0.1 > nul 2>&1
powershell sleep -m 500
cls
echo �J�[�\���ւ� by tamago_1908
powershell sleep -m 1000
cls
goto saisyonokidou


cls
rem �����N������

rem �Ǘ��Ҍ����̃v�����v�g�Ɋւ���ݒ�����m�A
:batstart
cls
rem �Ǘ��Ҍ����ݒ�̌��m
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
if {%adminbypass%}=={true} (goto gotadmin)
if {%errorlevel%}=={0} (goto batstartadm)
if {%errorlevel%}=={1} (
set batloadprgs=0
call :batbootprogress
goto batstarttest2
)

:batstarttest2
cls
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
set batloadprgs=0
call :batbootprogress
if {%errorlevel%}=={0} (goto hazime)
if {%errorlevel%}=={1} (goto batstartadm)



:batstartadm
cls
rem �Ǘ��Ҍ����̎擾
rem ���̃R�[�h�A�璷������C������B������������powershell���g���Ă����ƒZ�k�ł��邩���B
echo copyright.�J�[�\���ւ�%batver% by tamago_1908
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
    set sessionname=Console&exit /b
:gotAdmin
    set haveadmin=yes
    pushd "%CD%"
    CD /D "%~dp0"

rem ����N���������m
cd /d %HOMEDRIVE%%HOMEPATH%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if exist ����J�[�\��.txt goto hazime
if not exist ����J�[�\��.txt goto saisyonokidou

rem ����N�����̃��b�Z�[�W
:saisyonokidou
title ���̃o�b�`�t�@�C���̏Љ�
type nul > ����J�[�\��.txt
echo nodogcheckforfastboot >> ����J�[�\��.txt
cls
color 01
powershell sleep -m 100
color 08
echo ����ɂ��́I
powershell sleep -m 100
color 07
powershell sleep -m 100
color 07
powershell sleep -m 500
cls
mode con: cols=148 lines=14
echo �悤�����I
powershell sleep -m 100
echo �����������������������������������������������������������������������������������������������������������Q�����������Q����������������������������
echo �������Q�Q���������������������������������������������������������������������������������������������Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�����������Q�Q�Q��������
echo �������Q�Q�������������������������������������������Q�Q�������������Q�����������Q�����Q�������������������Q�����������Q���������������������Q������
echo �������Q�Q�Q�Q�Q�Q�������������������������������������Q�����������Q�Q�����������Q�Q���Q���������������Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q������������������������
echo �Q�Q�Q�Q���������Q�������������������������������������Q�Q���������Q�������������Q�����Q�������������������Q�Q�������Q�Q�������������Q�Q�Q�Q�Q�Q����
echo �������Q���������Q�������������������������������������������������Q�������������Q�����Q���������������Q�Q�����Q���Q�����Q�Q���������������Q�Q������
echo �������Q�������Q�Q�������Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�Q�������������������Q���������������Q�����Q���������Q�������Q�Q�Q�Q�Q�Q�Q�Q�Q�����������������Q��������
echo �������Q�������Q�Q���������������������������������������������Q�Q���������������Q�����Q�������Q���������Q���������������Q���������������Q�Q�Q������
echo �����Q���������Q�Q�������������������������������������������Q�Q���������������Q�Q�����Q�����Q�Q���������Q�Q�Q�Q�Q�Q�Q�Q�Q�������������Q�����Q������
echo ���Q�Q���������Q�������������������������������������������Q�Q�����������������Q�������Q�Q�Q�������������Q���������������Q�����������Q�������Q������
echo �Q�Q�������Q�Q�Q�����������������������������������������Q�Q�����������������Q�����������Q���������������Q�Q�Q�Q�Q�Q�Q�Q�Q���������Q���������Q�Q�Q�Q
powershell sleep -m 100
color 0a
powershell sleep -m 100
color 0b
powershell sleep -m 100
color 0c
powershell sleep -m 100
color 0d
powershell sleep -m 100
color 07
powershell sleep -m 100
echo �ցI
powershell sleep -m 350
cls
mode con: cols=75 lines=25
color 07
powershell sleep -m 300
echo ���߂܂��āI
pause
cls
echo %~n0�ł��I
pause
cls
echo ���̃o�b�`�����́A�J�[�\�������F�Ɣ��F�ɕς���ق��ɁA
pause
cls
echo ������Ƃ����@�\���l�ߍ��܂ꂽ���ł��I
pause
cls
echo ���ɂ��o�b�`�����łł��邱�Ƃ�͍�����ׂɂ��g���Ă��܂��B
pause 
cls
echo �܂��A����Ȃɂ��s��������o�b�`������������̂͂��ꂪ���߂ĂȂ̂ŁA�����ςȂƂ��낪�������Ƃ��Ă������Ă��������B
pause 
cls
echo ����ŁA���ӓ_�ł��B
pause
cls
echo ���̃o�b�`�����A %~n0�����s����ꍇ�͕K��powershell��vbs�����s�\�ł��邱�Ƃ��m�F���Ă��������B
pause 
cls
echo ���p�ł��Ȃ��ꍇ�A %~n0�𐳏�Ɏ��s�ł��Ȃ��Ȃ�܂��B
pause 
cls
echo �Ή�OS��Windows�݂̂ŁA���s��������x�ۏ؂���Ă���̂�windows 10 �o�[�W����1511�ȍ~�ł��B
pause 
cls
echo ����ȊO�̃o�[�W�����͓����ۏ؂��܂���B
pause
cls
echo �܂��A %~n0�����s����ۂ͂ɂ̓C���^�[�l�b�g�ɐڑ�����Ă���̂𐄏����Ă��܂��B
pause 
cls
echo �����Ă��̃o�b�`�����ŃJ�[�\����ύX����ƁA�J�[�\���̖��̂��A(��) �ɂȂ�ꍇ������܂��B
pause 
cls
echo ���̍ۂɂ͐��K�̕��@�ŃJ�[�\����ύX���Ȃ����Ă��������Ɛ���ɕ\�L�����悤�ɂȂ�܂��B
pause 
cls
echo ����ȊO�̃J�[�\���Ɋ֘A��������A�قƂ�ǂ̏ꍇ�͂���ŏC�������Ǝv���܂��B�i�����łȂ��ꍇ�̐ӔC�͍쐬�҂ł���tamago1908�͎��܂���B�j
pause 
cls
echo ���̃o�b�`�����̎g�p��%username%����т��Ȃ��̎��ȐӔC�Ŏg�p���Ă��������B
pause 
cls
echo �����ċH�ɁA%~n0���E�C���X�Ƃ��Č��m�����ꍇ������܂����A%~n0�̓E�C���X�Ƃ��č쐬���ꂽ���̂ł͂���܂���B
pause 
cls
echo ���̃o�b�`�������E�C���X�Ƃ��Č��m���ꂽ�ꍇ�A����͌댟�m�ł��̂ŁA��O�ɐݒ肷��Ȃǂ��ĉ�����Ă��������B
pause 
cls
echo ���̃o�b�`�������I������ۂ́A�Ȃ�ׂ����C�����j���[�́A3 �I�� ����s���Ă��������B����ȊO�ł̏I���͕s��̌����ɂȂ�\��������܂��B
pause 
cls
echo ���ӓ_�͈ȏ�ł��B
pause
echo ����ł̓��j���[���J���܂��B
pause
cls
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo                     �J
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo                     �J�[
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo                     �J�[�\��
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo                     �J�[�\����
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo                     �J�[�\���ւ�
ping -n 1 127.0.0.1 > nul 2>&1
goto loads

:batbootanimationfun
mode con: cols=85 lines=29
find "wmode=true" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (color f0&set funanimationclr=f0) else (set funanimationclr=07)
cls
title �������J�[�\���ւ��I�������ɂł��Ȃ����Ƃ𕽑R�Ƃ���Ă̂���b�I�����ɂ��т�铲��那���I
echo                                  A                A                                  
echo                                AAA                 AA                                
echo                             AABB                     AAA                             
echo                 AAAAAAAAAABBAA                           ABBBBBAAAAAAA               
echo                              A                         AA               A            
echo        AAA   AAAAAAAAAAAAAAAAAABAA                 AABAAAAAAAAA  AAABAA              
echo           AA         ABBBA                                 ABBBA       AAAA          
echo          AAA AAAAAAAAAAAAAAABBBB                 BBBBAAAAAAAAAAAAAAAAAAAAA           
echo                        ABBBBBBBA                 A   BBAA                  BA        
echo              AAAAAAAAAA       AAAAA               ABA      AAAAAAAA        AB        
echo                             AAA                     AAAA                 AAABBAAA    
echo       AAAAAAAAAAAAA                                                     ABBBA  AAAA  
echo        ABBB                                                           ABBBBA         
echo           AAAAAAA                                              AAAA  BBBBB           
echo               ABBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  ABBBBA           
echo                  AA  AAABAAAABAAAAABAAAAAAAAAAAAAABAAAAAAABA      AABBBBA            
echo                  AA     B    A     B       A      B       BAAAABBBBBBB               
echo                   AAAAAABAAAABAAAAABAAAAAAABAAAAAABAAAAA AAAABBBBBBBAA               
echo    ABBABB     AAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAA     ABBBBAA                 
echo    AAAA  AA  ABB AAAAAAAABBAAAAAAAAAAAAAAA       A      AAAABBAAA                    
echo       B    AAAAA   AB    BB       AA     AA      BAA    ABBAA                        
echo       BBBA       ABBBB A   A      AB     AABAABBBBBBBBA                              
echo       ABBB           AAAABBBAAAAAABBBABBBBBBBAAAA                                    
echo        ABBA                   AAAAAAAAA                                              
echo           BBB                                                                        
echo O===================================================================================O
echo.
echo                         �J�[�\���ւ�%batver% �悤���� 2021-2023 %debugmode%
powershell sleep 1
color cf
powershell sleep 0.1
color 2f
powershell sleep 0.1
color bf
powershell sleep 0.1
color 9f
powershell sleep 0.1
color %funanimationclr%
powershell sleep 1
set funanimationclr=
mode con: cols=75 lines=25
goto checksum

:batbootanimation
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (goto checksum)
cls
rem �u�[�g�A�j���[�V�������Đ��B5����1�̊m���ŕʃo�[�W�������Đ������Bramdom�̎d�l(�H)�ɂ���ē��A����random�����Ȃ��Ƃ����Ȃ��B
set /a bootegg=%random%*6/32767
set /a bootegg=%random%*6/32767
if {%firststartbat%}=={yes} (goto batbootanimationbypassfun)
if {%bootegg%}=={1} (goto batbootanimationfun)
:batbootanimationbypassfun
title �悤����
echo.
echo                              �J�[�\���ւ�%batver% %debugmode%
echo.
echo O=========================================================================O
echo.
echo.
echo.
echo.
echo :::::'########:::::'###::::'########:
echo ::::: ##.... ##:::'## ##:::... ##..::
echo ::::: ##:::: ##::'##:. ##::::: ##::::
echo ::::: ########::'##:::. ##:::: ##::::
echo ::::: ##.... ##: #########:::: ##::::            �悤����
echo '###: ##:::: ##: ##.... ##:::: ##::::
echo  ###: ########:: ##:::: ##:::: ##::::
echo ...::........:::..:::::..:::::..:::::
echo  For Windows 10-11
echo.
echo.
echo.
echo.
echo O=========================================================================O
echo.
echo                      2021-2023 tamago1908 %batbuild%
powershell sleep 1
cls
rem �ݒ�̌������m�F

:checksum
if {%firststartbat%}=={yes} (goto loads)
if not exist �J�[�\���ւ��ݒ�.txt (
title �J�[�\���G���[
echo �ݒ�t�@�C�������݂��܂���B
pause
echo ���炭�A����N���������ۂɂ��̂܂܃J�[�\���ւ�����Ă���ċN�����Ă��܂����̂������ł��傤�B���ꂩ�A�̈ӂɐݒ�t�@�C��������������...���Ȃ��Ƃ��A�ݒ�t�@�C�������݂��Ȃ��͎̂����ł��B
pause
cls
echo �ݒ�t�@�C�����Đ������܂��B���܂܂ł̐ݒ�͂��ׂč폜����܂��B
pause
cls
type nul > �J�[�\���ւ��ݒ�.txt
echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt
echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
title ...
echo �Đ������������܂����B
pause
echo �ύX��K�p���邽�߁A�J�[�\���ւ����ċN�����Ă��������B
pause
exit
)
if not {%allsettingerror%} equ {0} (
    title �J�[�\������
    echo �ݒ肪%allsettingerror%�������Ă��܂��B%allstgerroreastereggmassage%
    echo.
    echo �J�[�\���ւ��o�[�W����1.5����o�[�W����1.9�܂ł̃o�[�W�������ȑO�Ɏg�p���Ă��Ȃ����Ƃ��m�F���Ă��������B
    echo �������̓J�[�\���ݒ�.txt�̒��g���m�F���Ă��������B
    echo �t�@�C���p�X��%HOMEDRIVE%%HOMEPATH%�ł��B
    echo �C������ꍇ�͐ݒ�ɍs���A�j�����̕����̐ݒ�̗L��/������؂�ւ��Ă��������B�����I�ɕ⊮����C������܂��B^(�C���̍ۂɂ́A�f�t�H���g�̊���l�ɐݒ�̓Z�b�g����܂��B^)
    pause
    )
    if {%allsettingerror%} gtr {3} (goto fixallsetting) else (goto hazimemenu)
echo.
:fixallsetting
rem �����C��
powershell sleep 2
SET /P selected=�����C���𗘗p�ł��܂��B�����C�������s����Ƃ���܂ł̐ݒ肪���ׂď���������A�f�t�H���g�̐ݒ�Ƀ��Z�b�g����܂��B���s���܂����H(yes�܂���no):
if {%selected%}=={yes} (
echo nodogcheckfor1234567890qwertyuiop > �J�[�\���ւ��ݒ�.txt
echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
echo.
echo �C�����������܂����B
pause
exit
)
if {%selected%}=={y} (
:overwritesetting
echo nodogcheckfor1234567890qwertyuiop > �J�[�\���ւ��ݒ�.txt
echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
echo.
echo �C�����������܂����B
pause
exit
)
if {%selected%}=={no} (hazimemenuskipboot)
if {%selected%}=={n} (hazimemenuskipboot)

goto :hazimemenu
:hazime

rem �ݒ�Ƃ��̑��̃��[�h
rem ����ǂݍ��݁A�ǂݍ��񂾌�ǂ���goto����������ϐ��ɑ���K�v set wantload=setting1 set whatloadgoto=hazime �� hazime�֌W�̏ꍇ�͂���I�����[
rem �J�[�\���̐F�Ɋւ��Ă̓��C���̕ύX�����ɂ͎������Ă��܂���B�ύX���Ă���hazime�ɖ߂��ė����悤�ɐ݌v���ĂȂ��̂ŁB
rem �ݒ��ǉ�����ꍇ�͊�{�R�s�y�ő��v�B�����A���j���[�̌����ڂƂ��ɂ��������̂ł̓R�[�h��ǉ����Ȃ��Ƃ����Ȃ�����
:settingloads
if {%bootbatnow%}=={no} (goto whatload) else (goto setting1load)
cls
echo ���������I�I����Ȃ̂��肦�Ȃ��������I
pause
goto exit
:setting1load
rem �z���C�g���[�h�̌��m�ƐF�̕ύX�B�ύX�̍������̂��ߏ��Ղɔz�u�B
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (color f0)
set allsettingerror=0
cls
find "rebootokey=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting1onoff=�L��
if %ErrorLevel%==1 goto setting1load2
if {%bootbatnow%}=={yes} (
set batloadprgs=1
call :batbootprogress
goto setting2load
)
goto whatloadgoto


:setting2load
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting2onoff=�L��
if %ErrorLevel%==1 goto setting2load2
if {%bootbatnow%}=={yes} (
set batloadprgs=2
call :batbootprogress
goto setting3load
) 
goto whatloadgoto

:setting3load
find "fastboot=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting3onoff=�L��
if %ErrorLevel%==1 goto setting3load2
if {%bootbatnow%}=={yes} (
set batloadprgs=3
call :batbootprogress
goto setting4load
) 
goto whatloadgoto

:setting4load
find "hatenakeikoku=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting4onoff=�L��
if %ErrorLevel%==1 goto setting4load2
if {%bootbatnow%}=={yes} (
set batloadprgs=4
call :batbootprogress
goto setting5load
) 
goto whatloadgoto

:setting5load
find "bootanimation=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting5onoff=�L��
if %ErrorLevel%==1 goto setting5load2
if {%bootbatnow%}=={yes} (
set batloadprgs=5
call :batbootprogress
goto wmodeload
) 
goto whatloadgoto

:wmodeload
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if {%ErrorLevel%}=={0} (set wmodeonoff=�_�[�N�e�[�}�ɕύX  &set wmodetoggle=true)
if {%ErrorLevel%}=={1} (goto wmodeload2)
if {%bootbatnow%}=={yes} (
set batloadprgs=6
call :batbootprogress
goto loads
) 
goto whatloadgoto

:allsettingtest
rem �ݒ�̌���������
:setting1load2
find "rebootokey=false" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting1onoff=����) else if %ErrorLevel%==1 set setting1onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=1&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto setting2load) else (goto whatloadgoto)

:setting2load2
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting2onoff=����) else if %ErrorLevel%==1 set setting2onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=2&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto setting3load) else (goto whatloadgoto)

:setting3load2
find "fastboot=false" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting3onoff=����) else if %ErrorLevel%==1 set setting3onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=3&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto setting4load) else (goto whatloadgoto)

:setting4load2
find "hatenakeikoku=false" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting4onoff=����) else if %ErrorLevel%==1 set setting4onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=4&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto setting5load2) else (goto whatloadgoto)

:setting5load2
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt
cls
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting5onoff=����) else if %ErrorLevel%==1 set setting5onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=5&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto wmodeload) else (goto whatloadgoto)

:wmodeload2
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%bootbatnow%}=={no} (echo ������...)
if {%ErrorLevel%}=={0} (set wmodeonoff=�z���C�g�e�[�}�ɕύX&set wmodetoggle=false) else if {%ErrorLevel%}=={1} (set wmodeonoff=  null  �e�[�}�ɕύX&set wmodetoggle=false&set /a allsettingerror=allsettingerror+1)
if {%bootbatnow%}=={yes} (set batloadprgs=6&call :batbootprogress)
if {%bootbatnow%}=={yes} (goto loads) else (goto whatloadgoto)

:loads
:wmodehazimeload
rem �z���C�g���[�h�����m���ĐF��ύX
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (color f0)
cls
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=6
call :batbootprogress
goto debughazimeload
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto debughazimeload

:debughazimeload
rem �f�o�b�N���[�h�̌��m
find "debug=true" �J�[�\���ւ��ݒ�.txt > nul
cls
if {%errorlevel%}=={0} (echo on&set debugmode=debugmode)
if {%errorlevel%}=={1} (echo off&set debugmode=)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=7
call :batbootprogress
goto firststarttest
)
if {%1}=={devmode} (set devmode=true&goto firststarttest)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto firststarttest

:firststarttest
rem ����J�[�\���̌��m
find "nodogcheckforfastboot" ����J�[�\��.txt > nul
cls
if {%ErrorLevel%}=={1} (goto itazurasyokai)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=8
call :batbootprogress
goto cursorcolorload
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto cursorcolorload

:cursorcolorload
rem �J�[�\���̐F�����m
rem 0x0�͔�
rem 0x2�͍�
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x0"
cls
if {%ErrorLevel%}=={0} (set cursorcolor=��)
if {%ErrorLevel%}=={1} (set cursorcolor=��)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=9
call :batbootprogress
goto hazimecursorcolor2
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)

:hazimecursorcolor2
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x2"
cls
if {%ErrorLevel%}=={0} (set cursorcolor=��)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=10
call :batbootprogress
goto :batbootinitializetionvariable
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto hazimemenu


:batbootprogress
cls
rem �u�[�g�A�j���[�V�����B
rem ���͓ǂݍ��ݎ��̃e�L�X�g����B
if {%bootbatnow%}=={no} (title �J�[�\���ݒ� ������... & echo ������... & goto whatload) else (title �N����...)
if {%simpleboot%}=={true} (echo �N����...& exit /b)
cls
rem goofy ahh code
set loadscrnprgs0=
set loadscrnprgs1=
set loadscrnprgs2=
set loadscrnprgs3=
set loadscrnprgs4=
set loadscrnprgs5=
set loadscrnprgs6=
set loadscrnprgs7=
set loadscrnprgs8=
set loadscrnprgs9=
set loadscrnprgs10=
if {%wmodetoggle%}=={false} (set loadscrnprgsclr=[7m&set loadscrnprgsclr2=[0m)
if {%wmodetoggle%}=={true} (set loadscrnprgsclr=[100m[97m&set loadscrnprgsclr2=[0m[107m[30m) else (set loadscrnprgsclr=[7m&set loadscrnprgsclr2=[0m)
if {%batloadprgs%}=={0} (set loadscrnprgs0=                                                     )
if {%batloadprgs%}=={1} (set loadscrnprgs1=%loadscrnprgsclr%   %loadscrnprgsclr2%                                                  )
if {%batloadprgs%}=={2} (set loadscrnprgs2=%loadscrnprgsclr%       %loadscrnprgsclr2%                                              )
if {%batloadprgs%}=={3} (set loadscrnprgs3=%loadscrnprgsclr%           %loadscrnprgsclr2%                                          )
if {%batloadprgs%}=={4} (set loadscrnprgs4=%loadscrnprgsclr%                %loadscrnprgsclr2%                                     )
if {%batloadprgs%}=={5} (set loadscrnprgs5=%loadscrnprgsclr%                     %loadscrnprgsclr2%                                )
if {%batloadprgs%}=={6} (set loadscrnprgs6=%loadscrnprgsclr%                           %loadscrnprgsclr2%                          )
if {%batloadprgs%}=={7} (set loadscrnprgs7=%loadscrnprgsclr%                                  %loadscrnprgsclr2%                   )
if {%batloadprgs%}=={8} (set loadscrnprgs8=%loadscrnprgsclr%                                         %loadscrnprgsclr2%            )
if {%batloadprgs%}=={9} (set loadscrnprgs9=%loadscrnprgsclr%                                                %loadscrnprgsclr2%     )
if {%batloadprgs%}=={10} (set loadscrnprgs10=%loadscrnprgsclr%                                                     %loadscrnprgsclr2%)                                                  
echo.
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo O=========================================================================O
echo.
echo                       �J�[�\���ւ���ǂݍ���ł��܂�...
echo           O=====================================================O
echo           I%loadscrnprgs0%%loadscrnprgs1%%loadscrnprgs2%%loadscrnprgs3%%loadscrnprgs4%%loadscrnprgs5%%loadscrnprgs6%%loadscrnprgs7%%loadscrnprgs8%%loadscrnprgs9%%loadscrnprgs10%I
echo           O=====================================================O
rem 37 �S�p
rem 74 ���p
exit /b
:batbootinitializetionvariable
set loadscrnprgs9=
set loadscrnprgs10=
set loadscrnprgsclr=
set loadscrnprgsclr2=
goto hazimemenu

:whatload
cls
rem �����̏����A���邩�Ȃ��H���ʂ�setting�̒l���~���������Ȃ�setting1load�Ƃ���goto���������ōs�����whatloadgoto�ɑ������Γ����Ǝv���񂾂���....
if {%wantload%}=={setting1} (goto setting1load) 
if {%wantload%}=={setting2} (goto setting2load)
if {%wantload%}=={setting3} (goto setting3load)
if {%wantload%}=={setting4} (goto setting4load)
if {%wantload%}=={setting5} (goto setting5load)
if {%wantload%}=={wmode} (goto wmodeload)
if {%wantload%}=={wmodehazime} (goto wmodehazimeload) 
if {%wantload%}=={debughazime} (goto debughazimeload)
if {%wantload%}=={syokaihazime} (goto syokaihazimeload)
if {%wantload%}=={cursorcolor} (goto cursorcolorload)
if {%wantload%}=={0null0} (goto hazimemenu)
echo Error! %wantload% is not exist! pls set it.
pause
exit

:whatloadgoto
cls
set wantload=0null0
exit /b

rem ���j���[�̐����̏���
:hazimemenu
cls
if {%bootbatnow%}=={no} (goto hazimemenuskipboot)
if {%bootbatnow%}=={yes} (set bootbatnow=no&goto batbootanimation)
:hazimemenuskipboot
set wantload=0null0
set clrhelp=& set clrhelp2=
set settinghelptoggle=false
mode con: cols=75 lines=25
if {%hazimeeaster%}=={true} (set hazimebuild=%batbuild%)

rem ���j���[�̕`��
rem �K����5,10,20
echo                              �J�[�\���ւ�%batver% %debugmode% %hazimebuild%
title �J�[�\���ւ� %debugmode% 
set selected=0nul0
echo.
echo   O=====================================================================O
echo   I     1�J�[�\����%cursorcolor%�F�ɂ���           2�d��              3�I��        I
echo   I                                                                     I
echo   I                   4�o�[�W�������          5�ݒ�                    I
echo   O=====================================================================O
echo.
SET /P selected=�C�ӂ̎��s�����������A�������̓A���t�@�x�b�g����͂��Ă�������... :
echo.
if {%selected%}=={0nul0} (goto hatenahazime)
if not {%selected%}=={3} (echo %selected% ���I������܂����B)

rem �I���̕���
if {%selected%}=={1} (set hatenaita=0&goto :cursorchange)
if {%selected%}=={a} (set hatenaita=0&goto :cursorchange)
if {%selected%}=={2} (set hatenaita=0&goto :startcal)
if {%selected%}=={b} (set hatenaita=0&goto :startcal)
if {%selected%}=={3} (set hatenaita=0&goto :exitmenu)
if {%selected%}=={c} (set hatenaita=0&goto :exitmenu)
if {%selected%}=={4} (set hatenaita=0&goto :batver)
if {%selected%}=={d} (set hatenaita=0&goto :batver)
if {%selected%}=={5} (set hatenaita=0&goto :setting)
if {%selected%}=={e} (set hatenaita=0&goto :setting)

rem �C�[�X�^�[�G�b�O
if {%selected%}=={easteregg} (goto :easteregg)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={egg1} (color 1f&goto :erroralldef1)
if {%selected%}=={egg2} (goto :Dogcheck)
if {%selected%}=={wwssdadaba} (set hatenaita=0&goto littleeasteregg)
if {%selected%}=={tamago1908} (echo :P&pause&goto hazime)
if {%selected%}=={himazinnoob1908} (echo :D&pause&goto hazime)
if {%selected%}=={mskg1908} (echo xD&pause&goto hazime)
if {%selected%}=={1908} (goto :1908hell)
if {%selected%}=={toxic} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=N6ael_DEPcs&goto hazime)
if {%selected%}=={abcdefu} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=qgRx58oItTk&goto hazime)
if {%selected%}=={dogsong} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=H4wptBuM6zs&goto hazime)
if {%selected%}=={���͖����ł�} (echo me too&pause& goto hazime)

rem �f�o�b�O�p�R�}���h�̎Q��
if {%selected%}=={inspectentirecommandlist} (goto :allcommands)

rem �f�o�b�O�p
if {%selected%}=={alldefnow1} (goto :AllDefult1)
if {%selected%}=={playdefboot} (set hatenaita=0&cls&goto :syokaiboot)
if {%selected%}=={debugyesnow} (goto :kurogo)
if {%selected%}=={reload} (set bootbatnow=yes&goto batstart)
if {%selected%}=={fulldebug} (goto fulldebug)
if {%selected%}=={getadmin} (goto :batstartadm)
if {%selected%}=={bypassfirstboot} (set hatenaita=0&set firststartbat=no&goto overwritesetting)
if {%selected%}=={alldefdeletebat} (set hatenaita=0&echo delete bat, confirm to type something...&pause&goto alldefdeletefinish5)
if {%selected%}=={windowsfiltertest} (goto :batbootcheckwinverbad)
if {%selected%}=={funanimationdeb} (goto :batbootanimationfun)
if {%selected%}=={openie} (goto :openiedev)
if {%selected%}=={setenter} (echo.&set /p hatenaita=pls type:&goto :hazime)

rem FUCK YOU!!!!!!
if {%selected%}=={fucku} (echo fuck you too&pause&goto hazime)
if {%selected%}=={fuckyou} (echo fuck you too&pause&goto hazime)
if {%selected%}=={fucu} (echo fuck you too&pause&goto hazime)
if {%selected%}=={fucyou} (echo fuck you too&pause&goto hazime)

if {%selected%}=={exit} (goto :exitmenu)
if {%selected%}=={counttestdeb} (set hatenaita=0&goto :testinthecalbeep) else echo. &echo �����ȁi�������͎g�p�s�ȁj�I���ł��I�L���ȓ��͂����Ă��������B&pause&goto hazime

rem �������͂��Ȃ������ꍇ�̋A�ҏ���
:hatenahazime
echo ?
echo.
pause
echo ���݂܂���B�������͂��Ă���܂��񂩁H
echo.
pause
find "hatenakeikoku=false" �J�[�\���ւ��ݒ�.txt > nul
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
shutdown /s /t 5 /c "������邪�悢�B"
taskkill /im cmd.exe
goto :reboot

:itazurasyokai
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("�C�^�Y���ɏ���J�[�\��.txt�̒��g����������!!!�S�������ʂ����I",vbOKCancel,"�������Ɩ߂��A����Ȃ��Ɖi���ɗ���邼"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
rem ���b�Z�[�W�\��
echo Dim answer:answer = MsgBox("��������������΁Anodogcheckforfastboot������J�[�\��.txt�ɓ����񂾂ȁB",vbOKCancel,"�������Ɩ߂�"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
exit


rem �I�������Ƃ���̊m�F
rem todolist, �����̕�����GUI���������āA�ċN���Ƃ��̋@�\��t����B
:exitmenu
title �I���m�F %debugmode% 
set selected=0nul0
echo.
SET /P selected=�{���ɏI�����܂����H�iyes�܂���no�j:
if {%selected%}=={yes} (exit)
if {%selected%}=={y} (exit)
if {%selected%}=={no} (goto :hazimemenu)
if {%selected%}=={n} (goto :hazimemenu)
if {%selected%}=={back} (goto :hazimemenu)
if {%selected%}=={b} (goto :hazimemenu)
goto :hazimemenu


rem �ݒ胁�j���[�̕`��
:setting
set wantload=0null0
set settinghelptoggle=false
if {%wmodetoggle%}=={false} (set clr=[7m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clr2=[0m[107m[30m)
if defined %wmodetoggle% (set clr=[7m&set clr2=[0m)
rem �ݒ�t�@�C�������݂��邩�����m
cd /d %HOMEDRIVE%%HOMEPATH%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if not exist �J�[�\���ւ��ݒ�.txt (goto dogcheck)
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �J�e�S���[���I������Ă��܂���B              I
echo I                        I                                                I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I                        I  [W S] �� [1 2] �ǂ��炩�������ăJ�e�S���[��   I
echo I �J�[�\���ւ�  �����ڌn I  �I�����Ă��������B                            I
echo I                        I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory1
if %ErrorLevel%==4 goto settingcategory1
if %ErrorLevel%==5 goto settingcategory1
if %ErrorLevel%==6 goto hazime
if %ErrorLevel%==7 goto settingcategory1
if %ErrorLevel%==8 goto settingcategory1
if %ErrorLevel%==9 goto settingcategoryhelpmode

:settingcategory1
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I%clr%                        %clr2%I                                                I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I  �J�[�\���ւ��̋@�\�Ɋւ���ݒ�ł��B          I
echo I%clr%                        %clr2%I                                                I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I                        I                                                I
echo I �J�[�\���ւ�  �����ڌn I                                                I
echo I                        I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory1
if %ErrorLevel%==4 goto settingcategory2
if %ErrorLevel%==5 goto settingcategory1int
if %ErrorLevel%==6 goto hazime
if %ErrorLevel%==7 goto settingcategory1int
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategoryhelpmode

:settingcategory2
rem �ݒ�t�@�C�������݂��邩�����m
cd /d %HOMEDRIVE%%HOMEPATH%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if not exist �J�[�\���ւ��ݒ�.txt (goto dogcheck)
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �J�[�\���ւ��̌����ڂɊւ���ݒ�ł��B        I
echo I                        I �i�e�[�}�Ȃǁj                                 I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory1
if %ErrorLevel%==4 goto settingcategoryhelpmode
if %ErrorLevel%==5 goto settingcategory2int
if %ErrorLevel%==6 goto hazime
if %ErrorLevel%==7 goto settingcategory2int
if %ErrorLevel%==8 goto settingcategory2int
if %ErrorLevel%==9 goto settingcategoryhelpmode

rem �J�e�S���[����

:settingcategory1int
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �ύX��̍ċN���̊m�F              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I 3 �����N���@�\                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory1
if %ErrorLevel%==4 goto settingcategory2
if %ErrorLevel%==5 goto settingcategory1intsetting1
if %ErrorLevel%==6 goto settingcategory1
if %ErrorLevel%==7 goto settingcategory1intsetting1
if %ErrorLevel%==8 goto settingcategory1intsetting1
if %ErrorLevel%==9 goto settingcategoryhelpmode

:settingcategory1intsetting1
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I %clr%1 �ύX��̍ċN���̊m�F%clr2%              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I 3 �����N���@�\                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1intsetting1
if %ErrorLevel%==2 goto settingcategory1intsetting2
if %ErrorLevel%==3 goto settingcategory1intsetting3
if %ErrorLevel%==4 goto settingcategory1intsetting4
if %ErrorLevel%==5 goto settingcategory1intsetting5
if %ErrorLevel%==6 goto settingcategory1intsetting1
if %ErrorLevel%==7 goto settingcategory1intsetting2
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategory1int
if %ErrorLevel%==10 goto setting1
if %ErrorLevel%==11 goto setting1

:settingcategory1intsetting2
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �ύX��̍ċN���̊m�F              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I %clr%2 �N�����̃A�h�~��%clr2%                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I 3 �����N���@�\                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1intsetting1
if %ErrorLevel%==2 goto settingcategory1intsetting2
if %ErrorLevel%==3 goto settingcategory1intsetting3
if %ErrorLevel%==4 goto settingcategory1intsetting4
if %ErrorLevel%==5 goto settingcategory1intsetting5
if %ErrorLevel%==6 goto settingcategory1intsetting1
if %ErrorLevel%==7 goto settingcategory1intsetting3
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategory1int
if %ErrorLevel%==10 goto setting2
if %ErrorLevel%==11 goto setting2


:settingcategory1intsetting3
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �ύX��̍ċN���̊m�F              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I %clr%3 �����N���@�\%clr2%                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1intsetting1
if %ErrorLevel%==2 goto settingcategory1intsetting2
if %ErrorLevel%==3 goto settingcategory1intsetting3
if %ErrorLevel%==4 goto settingcategory1intsetting4
if %ErrorLevel%==5 goto settingcategory1intsetting5
if %ErrorLevel%==6 goto settingcategory1intsetting2
if %ErrorLevel%==7 goto settingcategory1intsetting4
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategory1int
if %ErrorLevel%==10 goto setting3
if %ErrorLevel%==11 goto setting3


:settingcategory1intsetting4
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �ύX��̍ċN���̊m�F              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I 3 �����N���@�\                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I %clr%4 Enter�̒����������m����@�\%clr2%       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1intsetting1
if %ErrorLevel%==2 goto settingcategory1intsetting2
if %ErrorLevel%==3 goto settingcategory1intsetting3
if %ErrorLevel%==4 goto settingcategory1intsetting4
if %ErrorLevel%==5 goto settingcategory1intsetting5
if %ErrorLevel%==6 goto settingcategory1intsetting3
if %ErrorLevel%==7 goto settingcategory1intsetting5
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategory1int
if %ErrorLevel%==10 goto setting4
if %ErrorLevel%==11 goto setting4


:settingcategory1intsetting5
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �ύX��̍ċN���̊m�F              I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo O========================I                                     O==========O
Echo O  �J�e�S���[  �ォ����  I 3 �����N���@�\                      I   %setting3onoff%   I
Echo O========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I %clr%5 �������܂��̓A���C���X�g�[��%clr2%                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1intsetting1
if %ErrorLevel%==2 goto settingcategory1intsetting2
if %ErrorLevel%==3 goto settingcategory1intsetting3
if %ErrorLevel%==4 goto settingcategory1intsetting4
if %ErrorLevel%==5 goto settingcategory1intsetting5
if %ErrorLevel%==6 goto settingcategory1intsetting4
if %ErrorLevel%==7 goto settingcategory1intsetting5
if %ErrorLevel%==8 goto settingcategory1int
if %ErrorLevel%==9 goto settingcategory1int
if %ErrorLevel%==10 goto AllDefult
if %ErrorLevel%==11 goto AllDefult

:settingcategory2int
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I 1 �N�����̃A�j���[�V����            I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I 2 %wmodeonoff%                         I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory2intsetting1
if %ErrorLevel%==2 goto settingcategory2intsetting2
if %ErrorLevel%==3 goto settingcategory1
if %ErrorLevel%==4 goto settingcategoryhelpmode
if %ErrorLevel%==5 goto settingcategory2intsetting1
if %ErrorLevel%==6 goto settingcategory2
if %ErrorLevel%==7 goto settingcategory2intsetting1
if %ErrorLevel%==8 goto settingcategory2intsetting1
if %ErrorLevel%==9 goto settingcategoryhelpmode

:settingcategory2intsetting1
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!  
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I %clr%1 �N�����̃A�j���[�V����%clr2%            I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I 2 %wmodeonoff%                         I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory2intsetting1
if %ErrorLevel%==2 goto settingcategory2intsetting2
if %ErrorLevel%==3 goto settingcategory2intsetting1
if %ErrorLevel%==4 goto settingcategory2intsetting2
if %ErrorLevel%==5 goto settingcategory2int
if %ErrorLevel%==6 goto settingcategory2int
if %ErrorLevel%==7 goto setting5
if %ErrorLevel%==8 goto setting5

:settingcategory2intsetting2
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I 1 �N�����̃A�j���[�V����            I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %clr%2 %wmodeonoff%%clr2%                         I
echo O========================I                                                I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsabye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory2intsetting1
if %ErrorLevel%==2 goto settingcategory2intsetting2
if %ErrorLevel%==3 goto settingcategory2intsetting1
if %ErrorLevel%==4 goto settingcategory2intsetting2
if %ErrorLevel%==5 goto settingcategory2int
if %ErrorLevel%==6 goto settingcategory2int
if %ErrorLevel%==7 goto wmode
if %ErrorLevel%==8 goto wmode


:settingcategoryhelpmode
rem ���� �����̕����true�̂Ƃ���ɁAclr�̐F��ς��鏈����ǉ��������Bchoice�̒���ɕ���ł��Ƃɖ߂��������ǉ�����
if {%settinghelptoggle%}=={true} (set settinghelp=�L��)
if {%settinghelptoggle%}=={false} (set settinghelp=����)
title �J�[�\���ݒ� %debugmode%
set selected=0nul0
Cls
echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �w���v���[�h�ł��B���̋@�\��I��������A      I
echo I                        I  �T�v���������ݒ��I������ƁA                I
echo O========================I  ���̐ݒ�̊T�v�����邱�Ƃ��ł��܂��B          I
Echo O  �J�e�S���[  �ォ����  I                                                I
Echo O========================I  �w���v���[�h�𖳌��ɂ������ꍇ�́A            I
Echo I                        I  �ēx���̋@�\��I�����Ă��������B              I
echo I �J�[�\���ւ�  �����ڌn I                                                I
echo I                        I  �w���v���[�h��%settinghelp%�ł�                        I
echo O========================O==O=====================O==========O============O
echo I%clr%      �w���v���[�h      %clr2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory2
if %ErrorLevel%==4 goto settingcategoryhelpmode
if %ErrorLevel%==5 goto hazime
if %ErrorLevel%==6 goto settingcategoryhelpmodetoggle
if %ErrorLevel%==7 goto settingcategoryhelpmodetoggle
if %ErrorLevel%==8 goto settingcategoryhelpmode

:settingcategoryhelpmodetoggle
if %settinghelptoggle%==true set settinghelptoggle=false&set clrhelp=&set clrhelp2=&goto settingcategoryhelpmode
if %settinghelptoggle%==false set settinghelptoggle=true&goto settingcategoryhelpmodetoggleiftrue

:settingcategoryhelpmodetoggleiftrue
if {%wmodetoggle%}=={false} (set clrhelp=[7m&set clrhelp2=[0m)
if {%wmodetoggle%}=={true} (set clrhelp=[100m[97m&set clrhelp2=[0m[107m[30m)
goto settingcategoryhelpmode





rem �ݒ�̓K�p�Ɗm�F
rem �ݒ肪���݂��邩�̌���
:setting1
if {%settinghelptoggle%}=={true} (goto setting1help)
find "rebootokey=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting1setonoff=�L��&goto setting1okey
if %ErrorLevel%==1 set setting1setonoff=�C�����A����ȏ��& goto setting1onoff

:setting1onoff
find "rebootokey=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting1setonoff=����

:setting1okey
cls
set selected=0nul0
echo �J�[�\���ύX��̍ċN���̊m�F��%setting1setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting1y)
if {%selected%}=={n} (goto :setting1n)
if {%selected%}=={back} (goto :settingcategory1intsetting1)
if {%selected%}=={b} (goto :settingcategory1intsetting1)
goto setting1okey

:setting1y
find "rebootokey=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting1ygo3test
if %ErrorLevel%==0 goto setting1ygo1

:setting1ygo3test
find "rebootokey=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting1ygo2

:setting1ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'rebootokey=true','rebootokey=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting1yokey

:setting1ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'rebootokey=false','rebootokey=true' | sc �J�[�\���ւ��ݒ�.txt"
goto setting1yokey

:setting1yokey
cls
Echo ����ɕύX����܂����B
Pause
set wantload=setting1
call :batbootprogress
Goto settingcategory1intsetting1

:setting1n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto settingcategory1intsetting1

:setting2
if {%settinghelptoggle%}=={true} (goto setting2help)
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting2setonoff=�L��&goto setting2okey
if %ErrorLevel%==1 set setting2setonoff=�C�����A����ȏ��&goto setting2onoff

:setting2onoff
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting2setonoff=����

:setting2okey
cls
echo �N�����̊Ǘ��Ҍ����̗v����%setting2setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting2y)
if {%selected%}=={n} (goto :setting2n)
if {%selected%}=={back} (goto :settingcategory1intsetting2)
if {%selected%}=={b} (goto :settingcategory1intsetting2)
goto setting2okey

:setting2y
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting2ygo3test
if %ErrorLevel%==0 goto setting2ygo1

:setting2ygo3test
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo admin=true >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting2ygo2

:setting2ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'admin=true','admin=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting2yokey

:setting2ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'admin=false','admin=true' | sc �J�[�\���ւ��ݒ�.txt"
goto setting2yokey

:setting2yokey
cls
Echo ����ɕύX����܂����B
Pause
set wantload=setting2
call :batbootprogress
Goto settingcategory1intsetting2

:setting2n
cls
Echo �N�����̊Ǘ��Ҍ����̗v����%setting2onoff%�ɂȂ�܂���ł���
Pause
goto settingcategory1intsetting2

:setting3
if {%settinghelptoggle%}=={true} (goto setting3help)
find "fastboot=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting3setonoff=�L��&goto setting3onoff
if %ErrorLevel%==1 set setting3setonoff=�C�����A����ȏ��&goto setting3onoff

:setting3onoff
find "fastboot=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting3setonoff=����&set setting3warning=
:setting3okey
cls
echo �����N����%setting3setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting3y)
if {%selected%}=={n} (goto :setting3n)
if {%selected%}=={back} (goto :settingcategory1intsetting3)
if {%selected%}=={b} (goto :settingcategory1intsetting3)
goto setting3okey

:setting3y
find "fastboot=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting3ygo3test
if %ErrorLevel%==0 goto setting3ygo1

:setting3ygo3test
find "fastboot=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting3ygo2

:setting3ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'fastboot=true','fastboot=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting3yokey

:setting3ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'fastboot=false','fastboot=true' | sc �J�[�\���ւ��ݒ�.txt"
goto setting3yokey

:setting3n
cls
Echo �����N���͗L���ɂȂ�܂���ł���
Pause
goto settingcategory1intsetting3

:setting3yokey
cls
Echo �����N����%setting3setonoff%�ɂ��܂����B
Pause
set wantload=setting3
call :batbootprogress
Goto settingcategory1intsetting3

:setting4
if {%settinghelptoggle%}=={true} (goto setting4help)
find "hatenakeikoku=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting4setonoff=�L��&goto setting4okey
if %ErrorLevel%==1 set setting4setonoff=�C�����A����ȏ��&goto setting4onoff

:setting4onoff
find "hatenakeikoku=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting4setonoff=����

:setting4okey
cls
echo �G���^�[�L�[�̒��������m�@�\��%setting4setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting4y)
if {%selected%}=={n} (goto :setting4n)
if {%selected%}=={back} (goto :settingcategory1intsetting4)
if {%selected%}=={b} (goto :settingcategory1intsetting4)
goto setting4okey

:setting4y
find "hatenakeikoku=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting4ygo3test
if %ErrorLevel%==0 goto setting4ygo1

:setting4ygo3test
find "hatenakeikoku=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting4ygo2

:setting4ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'hatenakeikoku=true','hatenakeikoku=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting4yokey

:setting4ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'hatenakeikoku=false','hatenakeikoku=true' | sc �J�[�\���ւ��ݒ�.txt"
goto setting4yokey

:setting4yokey
cls
Echo ����ɓK�p����܂����B
Pause
set wantload=setting4
call :batbootprogress
Goto settingcategory1intsetting4

:setting4n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto settingcategory1intsetting4

:setting5
if {%settinghelptoggle%}=={true} (goto setting5help)
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting5setonoff=�L��&goto setting5okey
if %ErrorLevel%==1 set setting5setonoff=�C�����A����ȏ��&goto setting5onoff

:setting5onoff
find "bootanimation=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting5setonoff=����

:setting5okey
cls
echo �N�����̃u�[�g�A�j���[�V������%setting5setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting5y)
if {%selected%}=={n} (goto :setting5n)
if {%selected%}=={back} (goto :settingcategory2intsetting1)
if {%selected%}=={b} (goto :settingcategory2intsetting1)
goto setting5okey

:setting5y
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting5ygo3test
if %ErrorLevel%==0 goto setting5ygo1

:setting5ygo3test
find "bootanimation=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting5ygo2

:setting5ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'bootanimation=true','bootanimation=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting5yokey

:setting5ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'bootanimation=false','bootanimation=true' | sc �J�[�\���ւ��ݒ�.txt"
goto setting5yokey

:setting5yokey
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting5
call :batbootprogress
Goto settingcategory2intsetting1

:setting5n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto settingcategory2intsetting1


:wmode
if {%settinghelptoggle%}=={true} (goto wmodehelp)
cd /d %HOMEDRIVE%%HOMEPATH%
:wmodetest
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set wmodesetonoff=�z���C�g
if %ErrorLevel%==1 set wmodesetonoff=�e�[�}�̐ݒ���C�����A�����& goto wmodeonoff

:wmodeonoff
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set wmodesetonoff=�_�[�N

cls
echo �J�[�\���ւ��̃e�[�}��%wmodesetonoff%�e�[�}�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
rem �e�[�}�̕���
if {%selected%}=={y} (goto :wmodey)
if {%selected%}=={yes} (goto :wmodey)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={n} (goto :no01)
if {%selected%}=={no} (goto :no01)
if {%selected%}=={back} (goto :settingcategory2intsetting2)
if {%selected%}=={b} (goto :settingcategory2intsetting2)
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
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
echo �e�[�}��K�p��...
if %ErrorLevel%==1 goto wmodeygo3test
if %ErrorLevel%==0 goto wmodeygo1

:wmodeygo3test
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo wmode=false >> �J�[�\���ւ��ݒ�.txt&goto wmodeygo1
if %ErrorLevel%==0 goto wmodeygo2

:wmodeygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'wmode=true','wmode=false' | sc �J�[�\���ւ��ݒ�.txt"
goto wmodeyokey

:wmodeygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'wmode=false','wmode=true' | sc �J�[�\���ւ��ݒ�.txt"
goto wmodeyokey

:wmodeyokey
Title �J�[�\���ւ�
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto wmodeonoffkenti
:wmodeonoffkenti
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color f0
cls
echo %wmodesetonoff%�e�[�}�ɕύX���܂����B
Pause
set wantload=wmode
call :batbootprogress
if {%wmodetoggle%}=={false} (set clr=[7m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clr2=[0m[107m[30m)
Goto settingcategory2intsetting2

:no01
cls
echo %wmodesetonoff%�e�[�}�ɂ͕ύX���܂���ł����B
pause
Goto :settingcategory2intsetting2

rem �ݒ�̃w���v
:setting1help
cls
echo ���̐ݒ�́A�䂤�܂ł��Ȃ����̃o�b�`�����̃��C���ł�����J�[�\����ύX����@�\���g�p������Ɉ�x�ċN�����m�F����Ƃ��낪����̂ł����A���̕����𖳌��ɂ��A�V�[�����X��
echo �J�[�\����ς����悤�ɂ���ݒ�ł��B�܂��ł������܂�J�[�\����p�ɂɕς������Ƃ����l�͏��Ȃ��Ǝv���܂��̂ŁA�����炭���܂�g���Ȃ��ł��낤�@�\�ł��傤�B
echo ���̐ݒ�̓f�t�H���g�ł͗L���ł��B
pause
goto settingcategory1intsetting1

:setting2help
cls
echo ���̐ݒ�́A�Ǘ��Ҍ����ŃJ�[�\���ւ������s���邱�Ƃɂ���āA�J�[�\����ύX����ۂɃG���[���N���Ȃ��悤�ɂ��邽�߂ɂ���܂��B
echo �������ɁA�J�[�\����ύX����ۂɃG���[�������͕ύX�ł��Ȃ������ꍇ�݂̂ɂ��̐ݒ��L���ɂ��邱�Ƃ𐄏����܂��B
echo ���̐ݒ��L���ɂ��邱�Ƃɂ���ċN�����Ԃ��Z�k�����ꍇ������܂��B
echo ���̐ݒ�̓f�t�H���g�ł͖����ł��B
pause
goto settingcategory1intsetting2

:setting3help
cls
echo ���̐ݒ�͖��O�̒ʂ�A�N�����Ԃ�Z�k����ݒ�ł��B
echo ���̐ݒ��L���ɂ���ƁA�ꕔ�̏������X�L�b�v���A�i���C���̏����ɂ͉e���Ȃ��j
echo �N�����Ԃ�PC�̃X�y�b�N�ɂ����܂���0.5�b�قǒZ�k����܂��B
echo ���̐ݒ�̓f�t�H���g�ł͖����ł��B
pause
goto settingcategory1intsetting3

:setting4help
cls
echo ���̐ݒ�͏��X�킩��ɂ����ł����A�ȒP�Ɍ����ƃo�b�`���N�������Ƃ��ɕ\��������ʂ̂܂܂ŉ������͂����ɃG���^�[�𒷉��������Ƃ��ɏo�Ă���
echo �x�����b�Z�[�W��off/on�ɂł���@�\�ł��B
echo ����͎��ۂɑ̌����Ă�������ق����킩��₷���̂ł����A�܂����50��~250�񂭂炢�̊ԃG���^�[�𒷉����������Ă���ƁA
echo �x�������\������銴���ɂȂ�܂��ˁB���������ɂ͂��ꂪ�����Ƃ������Ǝv���l�����邩�Ǝv���܂��̂ŁA���̋@�\���I�t�ɂł���ݒ��ǉ����܂����B
echo ���̐ݒ�̓f�t�H���g�ł͗L���ł��B
pause
goto settingcategory1intsetting4

:setting5help
cls
echo ���̐ݒ�́A�N�����ɕK�����񗬂��u�[�g�A�j���[�V�����A����΋N����ʂ𖳌��ɂ���\���ɂ���ݒ�ł��B
echo ���̐ݒ�𖳌��ɂ��邱�Ƃɂ���āA�N�����Ԃ̒Z�k�₤���Ƃ������̌y���ɂȂ���܂��B
echo ���̐ݒ�̓f�t�H���g�ł͗L���ł��B
pause
goto settingcategory2intsetting1

:wmodehelp
cls
echo �����CMD�̉�ʂ𔒐F�܂��͍��F�ɕς��镨�ł��B
echo ������g�p����ƁA�Ⴆ�Ή�ʂ̓z���C�g�e�[�}�œ��ꂳ������A�܂����̂ق����D���Ƃ����l�ɂ��Ή��ł���悤�ɂȂ�܂��B
echo �W���ł͍��F�ł����A���F�ɂ�����A����N�������Ƃ��Ɏ����I�ɉ�ʂ����F�ɂȂ�悤�ɂȂ�܂��B
echo �܂��A������Ƃ������b�ł������̐ݒ�́A1.10�ȑO�܂ł̓z�[�����ɐݒu����Ă��܂����B�܂��A���̋@�\�͐ݒ�̓����\���̂��ƂɂȂ��Ă��܂��B
echo �W���ł̓_�[�N�e�[�}�ł��B
pause
goto settingcategory2intsetting2
 
:alldefhelp
cls
echo ����̓A���C���X�g�[�����j���[�ł��B���̃��j���[�̓J�[�\���ւ��̃A���C���X�g�[�����s���܂��B
echo ���̃��j���[�ɂ͐ݒ�t�@�C���i�ݒ肪�L�^����Ă���e�L�X�g�t�@�C���j�̃p�X��\������@�\�A�ݒ��������(�f�t�H���g��)����@�\���܂܂�Ă��܂��B
echo �A���C���X�g�[�������s����ꍇ�A�J�[�\���ւ��{�̂��폜����A�i�C�Ӂj�J�[�\�����f�t�H���g�ɍ폜����܂��B�i�C�Ӂj�ݒ�A����N�������m���邽�߂̃t�@�C�������S�ɍ폜����܂��B
echo ���s����ۂ͂��ꂮ������ȐӔC�Ŏ��s���Ă��������B
pause
goto settingcategory1intsetting5

rem �o�b�`�̃o�[�W����
:batver
echo.
echo �J�[�\���ւ� ver %batver%   2021-2023
if %hazimeeaster%==true echo %batbuild%
title �J�[�\���ւ� thenks so much %username%
powershell sleep -m 200
echo and...
powershell sleep -m 200
echo create by tamago_1908

pause
cls
goto hazime

rem �d��
:startcal
set q=0
set number1=0
set number2=0
set number3=0
cls
echo 2147483647�̌v�Z�܂�(int�^�̏�� �d�l�ケ�����̌v�Z�͕s��)
echo.
title �J�[�\���d��

rem �V���v�����[�h
:simplemodecal
set q=0
set number1=0
set number2=0
set number3=0

echo ������͂��Čv�Z����ꍇ��3�Ɠ��͂��Ă��������B
echo.
echo �߂�ꍇ��back�Ɠ��͂��Ă��������B
echo.
echo + or -
echo �����Z�Ȃ�1�A�����Z�Ȃ�2��I�����Ă��������B
set /p q=
rem �d��̕���
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
cls
goto simplemodecal

:mcal
set /p number3=����������� :
set /a number1=number1-number3
echo ���� : %number1%
pause
cls
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

:cursorchange
rem �����@�ϐ��ŕ��򂵂āA�ύX����B�f�t�H���g���x�[�X�ɍ쐬
rem �J�[�\���ւ��̃��C���@�\�B���ꂪ�Ȃ���n�܂�Ȃ�
cls
echo                              �J�[�\���ւ�%batver% %debugmode%
title �J�[�\��*�ւ�* %debugmode%
echo.
SET /P selected=%cursorcolor%�F�ɖ߂��܂����H(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes0)
if {%selected%}=={yes} (goto :yes0)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={n} (goto :no0)
if {%selected%}=={no} (goto :no0)
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

:no0
echo �ύX�͂���܂���ł����B
pause
goto hazime

:yes0
if exist �J�[�\���ւ��ݒ�.txt goto henkoudefo
if not exist �J�[�\���ւ��ݒ�.txt goto saisyonokeikoku
rem �ݒ�̏�������(default)
:saisyonokeikoku
type nul > �J�[�\���ւ��ݒ�.txt
echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt
echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt

rem �x�����b�Z�[�W�A����N��������
cls
echo (����N�����̂�)
powershell sleep -m 500
cls
echo.
powershell sleep -m 100
color 04
echo �@�@�@                         �@�I���ӁI
powershell sleep -m 200
color 0c
powershell sleep -m 100
color 07
powershell sleep -m 500
echo.
echo ����bat�t�@�C���i�ȉ��A�X�N���v�g�j�́A�J�[�\�����f�t�H���g�A�܂��͍��F�ɂ��邾���̃X�N���v�g�ł��B
powershell sleep -m 2000
echo �Ȃ��Ƃ͎v���܂����A���̃X�N���v�g���g�p����ɂ������Ĕ����������Q�A�܂��̓R���s���[�^�[�̑������̔�Q�̐ӔC�͐���҂ł��邻����ӂɂ��闑�͈�؂̐ӔC�����܂���I
pause
echo.
echo.
rem �x���̕���Bno����͂���ƃJ�[�\���ւ��ݒ�.txt���폜�����B
:warningfirstchenge
SET /P selected=��낵���ł����H(Y=Yes / N=No)
if {%selected%}=={n} (del �J�[�\���ւ��ݒ�.txt & goto exit)
if {%selected%}=={no} (del �J�[�\���ւ��ݒ�.txt & goto exit) 
if {%selected%}=={yes} (goto henkoudefo)
if {%selected%}=={y} (goto henkoudefo)
echo %selected% ���I������܂����B
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto warningfirstchenge
:henkoudefo
if {%cursorcolor%}=={��} (goto kurogotest)
if {%selected%}=={��} (goto defgotest)
cls

:defgotest
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x0"
cls
if {%ErrorLevel%}=={0} (goto sudenidef)
if {%ErrorLevel%}=={1} (goto defgo)

:sudenidef
rem ���̌x�����b�Z�[�W�B���݂ł͂��ꂪ�\������邱�Ƃ͂قڂ��蓾�Ȃ��B
title ���łɖ��邢
rundll32 user32.dll,MessageBeep
echo �ȂɁI�H�Ȃ����I����Ȃ��Ƃ͂��蓾�Ȃ����I�I�I���̂��΂ɋߊ��Ȃ��[���I
goto exit

:kurogotest
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x2"
cls
if {%ErrorLevel%}=={0} (goto sudenikuro)
if {%ErrorLevel%}=={1} (goto kurogo)

:sudenikuro
rem ���̌x�����b�Z�[�W�B�����݂ł͂��ꂪ�\������鎖�͂قڂ��蓾�Ȃ��B
title ���łɍ���
rundll32 user32.dll,MessageBeep
echo �ȂɁI�H�Ȃ����I����Ȃ��Ƃ͂��蓾�Ȃ����I�I�I���̂��΂ɋߊ��Ȃ��[���I
goto exit

rem �J�[�\���̐F�𔒂ɕύX����
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

rem �J�[�\���̐F�����ɕύX����B
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
pause
goto reboot

rem dogcheck�B�J�[�\���ւ��ݒ�.txt�����݂��邩������
:AllDefult
cd /d %HOMEDRIVE%%HOMEPATH%
if {%settinghelptoggle%}=={true} (goto alldefhelp)
if exist �J�[�\���ւ��ݒ�.txt goto AllDefulttest
if not exist �J�[�\���ւ��ݒ�.txt goto Dogcheck

:Dogcheck
rem dogcheck, respect tobyfox and dog

if {%firststartbat%}=={yes} (cls&echo �܂��ŏ��ɃJ�[�\���̐F��ύX���Ă��������I&echo.&pause&goto hazime)
title Dogcheck %debugmode%
mode con: cols=87 lines=9
echo '########:::'#######:::'######:::::::'######::'##::::'##:'########::'######::'##:::'##:
echo ##.... ##:'##.... ##:'##... ##:::::'##... ##: ##:::: ##: ##.....::'##... ##: ##::'##:::
echo ##:::: ##: ##:::: ##: ##:::..:::::: ##:::..:: ##:::: ##: ##::::::: ##:::..:: ##:'##::::
echo ##:::: ##: ##:::: ##: ##::'####:::: ##::::::: #########: ######::: ##::::::: #####:::::
echo ##:::: ##: ##:::: ##: ##::: ##::::: ##::::::: ##.... ##: ##...:::: ##::::::: ##. ##::::
echo ##:::: ##: ##:::: ##: ##::: ##::::: ##::: ##: ##:::: ##: ##::::::: ##::: ##: ##:. ##:::
echo ########::. #######::. ######::::::. ######:: ##:::: ##: ########:. ######:: ##::. ##::
echo ........::::.......::::......::::::::......:::..:::::..::........:::......:::..::::..::
start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=kO77pZFJp1o
powershell sleep 1.5
cls
mode con: cols=85 lines=24
set dogcheckcount=0
:dogcheckanimation0f
set /a dogcheckcount=dogcheckcount+1
if %dogcheckcount% gtr 5 (title Dogcheck respect tobyfox)
if %dogcheckcount% gtr 7 (title Dogcheck)
if %dogcheckcount% gtr 30 (title dogrune chapter 1)
if %dogcheckcount% gtr 32 (title Dogcheck)
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB                   ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBA                                                BBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBAAAA                                                AAAAAAABBBBBBBBBBBBBBBBBB
echo BBBBBBBBA                                                         ABBBBBBBBBBBBBBBBBB
echo BBBBBA            AAAA      AAA                                       BBBBBBBBBBBBBBB
echo BBBBBA            ABBA      BBB                                       BBBBBBBBBBBBBBB
echo BBBBBA            ABBA         ABB                                    BBBBBBBBBBBBBBB
echo BBBBBA            AAAA   AAAAAAABB          AAA                       BBBBBBBBBBBBBBB
echo BBBBB                    BBBBBBBBB          ABBA                      BBBBBBBBBBBBBBB
echo BB                ABBA   BBB   ABB          ABBBBBA                   BBBBBBBBBBBBBBB
echo BBAAA             ABBA   AAA   ABB          AAABBBA                   BBBBBBBBBBBBBBB
echo BBBBBA            ABBA         ABB             ABBA                   BBBBBBBBBBBBBBB
echo BBBBBAAA                    AAA          AAAAAABBBA                      BBBBBBBBBBBB
echo BBBBBBBBA                   BBB          BBBBBBBBBA                      ABBBBBBBBBBB
echo BBBBBA                                         ABBA               ABBB             BB
echo BBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBAAAAAAAAAAAAAAAAABBBAAAAAAAAAAAAABB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
powershell sleep 0.8
cls
goto dogcheckanimation1f

:dogcheckanimation1f
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBB                                            BBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBB                                                         BBBBBBBBBBBBBBBBBB
echo BBBBBBBAAA         AAAA      AAA                                   AAABBBBBBBBBBBBBBB
echo BBBBBBB            ABBA      BBB                                      BBBBBBBBBBBBBBB
echo BBBBBBB            ABBA         BBB                                   BBBBBBBBBBBBBBB
echo BBBBBBB            AAAA   AAAAAABBB             AAA                   BBBBBBBBBBBBBBB
echo BBBBBBB                   BBBBBBBBB             BBB                   BBBBBBBBBBBBBBB
echo BBBB               ABBA   BBB   BBB             BBBBBB                BBBBBB   BBBBBB
echo BBBBAAA            ABBA   AAA   BBB             AAABBB                BBBBBB   BBBBBB
echo BBBBBBB            ABBA         BBB                BBB                BBBBBB   BBBBBB
echo BBBBBBBAAA                   AAA             AAAAAABBB                      AAABBBBBB
echo BBBBBBBBBB                   BBB             ABBBBBBBB                      BBBBBBBBB
echo BBBBBBB                                            BBB             BBBBBBBBBBBBBBBBBB
echo BBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBAAAAAAAAAAAAABBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
echo BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
powershell sleep 0.7
cls
goto :dogcheckanimation0f
taskkill /im chrome.exe
del /Q %TEMP%\msgbox.vbs
exit

rem alldef
:AllDefulttest
cd /d %HOMEDRIVE%%HOMEPATH% 
find "nodogcheckfor1234567890qwertyuiop" �J�[�\���ւ��ݒ�.txt
cls
if %ErrorLevel%==0 goto AllDefult1
if %ErrorLevel%==1 goto Dogcheck
rem �A���C���X�g�[�����j���[
:AllDefult1
title �J�[�\���ւ��̃A���C���X�g�[�� (�����I)
Cls
echo �A���C���X�g�[���̎d����I�� b�Ŗ߂�܂��B
echo �I���������������������A�܂���w�ŏ�As�ŉ��̍��ڂɈړ����A�C�ӂ̕�����I����Ay�܂���e�L�[����͂��Č��肵�܂��B
echo.
echo 1 ����bat�t�@�C���Ɋւ��邷�ׂẴf�[�^���폜���A�J�[�\�������F�ɖ߂�
echo.
echo 2 �J�[�\���͂��̂܂܂ɂ��āA���ׂč폜����
echo.
echo 3 �ݒ������������
echo.
echo 4 �ݒ�̃t�@�C���p�X��\������
echo.
echo ���݂͉����I������Ă��܂���B
choice /c 1234wsb /n /m ""
if %ErrorLevel%==1 goto alldefselect1
if %ErrorLevel%==2 goto alldefselect2
if %ErrorLevel%==3 goto alldefselect3
if %ErrorLevel%==4 goto alldefselect4
if %ErrorLevel%==5 goto alldefselect1
if %ErrorLevel%==6 goto alldefselect1
if %ErrorLevel%==7 goto settingcategory1intsetting5

rem �A���C���X�g�[�����j���[�̕���
:alldefselect1
Cls
echo �A���C���X�g�[���̎d����I�� b�Ŗ߂�܂��B
echo �I���������������������A�܂���w�ŏ�As�ŉ��̍��ڂɈړ����A�C�ӂ̕�����I����Ay�܂���e�L�[����͂��Č��肵�܂��B
echo.
echo %clr%1 ����bat�t�@�C���Ɋւ��邷�ׂẴf�[�^���폜���A�J�[�\�������F�ɖ߂�%clr2%
echo.
echo 2 �J�[�\���͂��̂܂܂ɂ��āA���ׂč폜����
echo.
echo 3 �ݒ������������
echo.
echo 4 �ݒ�̃t�@�C���p�X��\������
echo.
echo ���݂�1���I������Ă��܂��B���肷��ꍇ��y�܂���e�L�[�������Ă�������
choice /c 1234wseyb /n /m ""
if %ErrorLevel%==1 goto alldefselect1
if %ErrorLevel%==2 goto alldefselect2
if %ErrorLevel%==3 goto alldefselect3
if %ErrorLevel%==4 goto alldefselect4
if %ErrorLevel%==5 goto alldefselect1
if %ErrorLevel%==6 goto alldefselect2
if %ErrorLevel%==7 set alldefselect=1&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=1&goto :alldefselectokey
if %ErrorLevel%==9 goto settingcategory1intsetting5


rem �A���C���X�g�[�����j���[�̕���
:alldefselect2
Cls
echo �A���C���X�g�[���̎d����I�� b�Ŗ߂�܂��B
echo �I���������������������A�܂���w�ŏ�As�ŉ��̍��ڂɈړ����A�C�ӂ̕�����I����Ay�܂���e�L�[����͂��Č��肵�܂��B
echo.
echo 1 ����bat�t�@�C���Ɋւ��邷�ׂẴf�[�^���폜���A�J�[�\�������F�ɖ߂�
echo.
echo %clr%2 �J�[�\���͂��̂܂܂ɂ��āA���ׂč폜���� %clr2%
echo.
echo 3 �ݒ������������
echo.
echo 4 �ݒ�̃t�@�C���p�X��\������
echo.
echo ���݂�2���I������Ă��܂��B���肷��ꍇ��y�܂���e�L�[�������Ă�������
choice /c 1234wseyb /n /m ""
if %ErrorLevel%==1 goto alldefselect1
if %ErrorLevel%==2 goto alldefselect2
if %ErrorLevel%==3 goto alldefselect3
if %ErrorLevel%==4 goto alldefselect4
if %ErrorLevel%==5 goto alldefselect1
if %ErrorLevel%==6 goto alldefselect3
if %ErrorLevel%==7 set alldefselect=2&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=2&goto :alldefselectokey
if %ErrorLevel%==9 goto settingcategory1intsetting5

rem �A���C���X�g�[�����j���[�̕���
:alldefselect3
Cls
echo �A���C���X�g�[���̎d����I�� b�Ŗ߂�܂��B
echo �I���������������������A�܂���w�ŏ�As�ŉ��̍��ڂɈړ����A�C�ӂ̕�����I����Ay�܂���e�L�[����͂��Č��肵�܂��B
echo.
echo 1 ����bat�t�@�C���Ɋւ��邷�ׂẴf�[�^���폜���A�J�[�\�������F�ɖ߂�
echo.
echo 2 �J�[�\���͂��̂܂܂ɂ��āA���ׂč폜����
echo.
echo %clr%3 �ݒ������������%clr2%
echo.
echo 4 �ݒ�̃t�@�C���p�X��\������
echo.
echo ���݂�3���I������Ă��܂��B���肷��ꍇ��y�܂���e�L�[�������Ă�������
choice /c 1234wseyb /n /m ""
if %ErrorLevel%==1 goto alldefselect1
if %ErrorLevel%==2 goto alldefselect2
if %ErrorLevel%==3 goto alldefselect3
if %ErrorLevel%==4 goto alldefselect4
if %ErrorLevel%==5 goto alldefselect2
if %ErrorLevel%==6 goto alldefselect4
if %ErrorLevel%==7 set alldefselect=3&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=3&goto :alldefselectokey
if %ErrorLevel%==9 goto settingcategory1intsetting5

rem �A���C���X�g�[�����j���[�̕���
:alldefselect4
Cls
echo �A���C���X�g�[���̎d����I�� b�Ŗ߂�܂��B
echo �I���������������������A�܂���w�ŏ�As�ŉ��̍��ڂɈړ����A�C�ӂ̕�����I����Ay�܂���e�L�[����͂��Č��肵�܂��B
echo.
echo 1 ����bat�t�@�C���Ɋւ��邷�ׂẴf�[�^���폜���A�J�[�\�������F�ɖ߂�
echo.
echo 2 �J�[�\���͂��̂܂܂ɂ��āA���ׂč폜����
echo.
echo 3 �ݒ������������
echo.
echo %clr%4 �ݒ�̃t�@�C���p�X��\������%clr2%
echo.
echo ���݂�4���I������Ă��܂��B���肷��ꍇ��y�܂���e�L�[�������Ă�������
choice /c 1234wseyb /n /m ""
if %ErrorLevel%==1 goto alldefselect1
if %ErrorLevel%==2 goto alldefselect2
if %ErrorLevel%==3 goto alldefselect3
if %ErrorLevel%==4 goto alldefselect4
if %ErrorLevel%==5 goto alldefselect3
if %ErrorLevel%==6 goto alldefselect4
if %ErrorLevel%==7 set alldefselect=4&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=4&goto :alldefselectokey
if %ErrorLevel%==9 goto settingcategory1intsetting5


rem �ݒ�̏�����������ۂ̌x�����b�Z�[�W
:alldefsettingonly
cls
:alldefsettingonlyokey
echo ���̃��j���[�ł͐ݒ�����������܂��B���������āA���Ȃ������܂łɐݒ肵�����̂͂��ׂď����ݒ�ɖ߂�܂��B�i�J�[�\���ւ������߂ċN�������Ƃ��̐ݒ�ɖ߂�j��낵���ł����H(Y=Yes / N=No)
choice /c yn /n /m ""
if %ErrorLevel%==1 goto alldefsettingonlyokey2
if %ErrorLevel%==2 goto alldefsettingno
:alldefsettingonlyokey2
echo �{���ɍ폜����̂ł��ˁH(Y=Yes / N=No)
choice /c yn /n /m ""
if %ErrorLevel%==1 goto alldefsettingyes
if %ErrorLevel%==2 goto alldefsettingno
goto alldefsettingonly

:alldefsettingyes
echo �ݒ�t�@�C�������������܂��B���܂܂ł̐ݒ�͂��ׂč폜����܂��B
echo �L�����Z������ꍇ�́A���̎��_�Ńo�b�`�������I�����Ă��������B
pause
cls
type nul > �J�[�\���ւ��ݒ�.txt
echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt
echo fastboot=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
title ...
echo ���������������܂����B�ύX��K�p���邽�߁A�J�[�\���ւ����I�����܂��B�Ȃ̂ōċN�������肢�����܂��B
goto exit

:alldefsettingno
cls
echo �ݒ�͏���������܂���ł����B
pause
:alldefsettingno2
cls
echo ���̂܂܃A���C���X�g�[�����j���[�ɍs�����A�������̓z�[���ɖ߂邩�B
echo �ǂ����ɂ��܂����H(�ݒ�ɖ߂�=1 / �A���C���X�g�[�����j���[=2)
choice /c 12 /n /m ""
if %ErrorLevel%==1 goto settingcategory1intsetting5
if %ErrorLevel%==2 goto :alldefselect3
goto alldefsettingno2

:alldefshowsettingpass
cls
echo �ݒ�t�@�C�����u����Ă���p�X��\�����܂��B
start explorer %HOMEDRIVE%%HOMEPATH%
powershell sleep 5
echo ���ɂ����܂����A�����Ă��̏ꍇ�A���̂ق��܂��͏�̂ق��ɃJ�[�\���ւ��ݒ�.txt������Ǝv���܂��B
pause
cls
:alldefshowsettingpass2
echo ���̂܂܃A���C���X�g�[�����j���[�ɍs�����A�������̓z�[���ɖ߂邩�B
echo �ǂ����ɂ��܂����H(�ݒ�ɖ߂�=1 / �A���C���X�g�[�����j���[=2)
choice /c 12 /n /m ""
if %ErrorLevel%==1 goto settingcategory1intsetting5
if %ErrorLevel%==2 goto alldefselect4
goto alldefshowsettingpass2

:alldefselectokey
if %alldefselect%==3 goto alldefsettingonly
if %alldefselect%==4 goto alldefshowsettingpass
cls
color 9f
title �J�[�\���ւ��̃A���C���X�g�[�� %debugmode%
echo ���̃A���C���X�g�[�����j���[�́A���̃o�b�`�t�@�C�����ύX�������W�X�g���A����L�^�p�̃t�@�C�������ׂČ��̏�Ԃɖ߂��A�J�[�\���ւ����̂��폜���镨�ł��B
pause
cls
echo �܂�A���̋@�\���g�p����ƃ}�E�X�J�[�\���������̔��F�A�����Ă��̃o�b�`�t�@�C�������S�ɍ폜���邱�ƂɂȂ�A�ēx�g�p���邽�߂ɂ̓J�[�\���ւ����ēx�C���X�g�[�����Ȃ���΂����Ȃ��Ȃ�܂��I
echo (OS�������������킯�ł͂Ȃ�)
pause
cls
echo �܂��A�A���C���X�g�[�������s�������ƂɋN�����鉽�炩�̏�Q�A�܂��͕s���v�������ꍇ�̐ӔC�͍쐬�҂�tamago1908�͈�ؕ����܂���I
echo.
pause
:AllDefultOkey
SET /P selected=��낵���ł����H(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes2)
if {%selected%}=={yes} (goto :yes2)
if {%selected%}=={n} (goto :no2)
if {%selected%}=={no} (goto :no2)
if {%selected%}=={back} (color 07&goto :hazime)
if {%selected%}=={b} (color 07&goto :hazime)
if {%selected%}=={debugyesnow} (goto :yes2go)
echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
cls
goto AllDefultOkey

:no2
set alldefno2clr=[96m
set alldefno2clr2=[40m[3m
cls
color 0B
echo %alldefno2clr2%%alldefno2clr%����߂���
powershell sleep 2
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto wmodeonoffkenti
:wmodeonoffkentialldefno2
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color f0
goto hazime

:yes2
rem �A���C���X�g�[���̍ŏI�m�F
set selected=null
SET /P selected=�{���ɂ����ł��ˁH(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (set alldefclr=[31m&set alldefclr2=[97m&goto :yes2final)
if {%selected%}=={yes} (setalldefclr=[31m&set alldefclr2=[97m&goto :yes2final)
if {%selected%}=={n} (goto :no2)
if {%selected%}=={no} (goto :no2)
if {%selected%}=={back} (color 07&goto :hazime)
if {%selected%}=={b} (color 07&goto :hazime)
if {%selected%}=={debugyesnow} (goto :yes2go)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
cls
goto yes2


:yes2final
rem �A���C���X�g�[���̍ŏI�m�F �V�[�Y���Q
set selected=null
echo.
rundll32 user32.dll,MessageBeep
SET /P selected=%alldefclr%���������@���܂���ˁH(���ǂ��܂����I)%alldefclr2%(Y=Yes / N=No / B=Back)
if {%selected%}=={y} (goto :yes2go)
if {%selected%}=={yes} (goto :yes2go)
if {%selected%}=={n} (goto :no2)
if {%selected%}=={no} (goto :no2)
if {%selected%}=={back} (color 07&goto :hazime)
if {%selected%}=={b} (color 07&goto :hazime)
if {%selected%}=={debugyesnow} (goto :yes2go)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
cls
goto yes2final

:yes2go
rem ����������Ȃ��B����...�b�I
cls
color 9f
echo ���s���܂��B�߂�ꍇ�̓o�b�`�t�@�C�����~���Ă��������B
pause

rem �A���C���X�g�[�����j���[�̗�O���� ����J�[�\�����Ȃ��ꍇ�́B�����Ǐ璷��������P�������B
rem ��O����������������Ƒ��₵�����B�Ⴆ�΁A���g���������Ȃ������΂ɂ��肦�Ȃ���ԂɂȂ����ꍇ�ɁAgoto���ĕϐ��ŕ��򂵂ă��b�Z�[�W��ύX����݂����ɂ��āB
cd /d %HOMEDRIVE%%HOMEPATH%
if not exist ����J�[�\��.txt set erroralldefwhatdelete=����J�[�\�� & goto erroralldef1
:testerroralldef
if not exist �J�[�\���ւ��ݒ�.txt set erroralldefwhatdelete=�J�[�\���ւ��ݒ� & goto erroralldef1
set erroralldefwhatdelete=����J�[�\��.txt�ƁA�J�[�\���ւ��ݒ�.txt�A���̗�����
goto alldefnow

:erroralldef1
mode con: cols=100 lines=30
color 1f
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
echo *** STOP: 0x0000008E (0xC0000005,0x8054DF87,0xB8F97810,0x00000000,)
echo *** MEMORY LOG: E3 81 93 E3 81 AE E5 A4 89 E6 85 8B EF BC 81 2E 2E 2E E3 82 88 E3 81 8F E3 81 93 E3 82 93 E3 81 AA E3 81 AE E8 A7 A3 E6 9E 90 E3 81 97 E3 82 88 E3 81 86 E3 81 A8 E6 80 9D E3 81 A3 E3 81 9F E3 82 8F E3 81 AD EF BC 81 E3 81 9D E3 81 AE E7 82 B9 E3 81 A0 E3 81 91 E3 81 AF E7 A7 B0 E8 B3 9B E3 81 AB E5 80 A4 E3 81 99 E3 82 8B E3 82 8F 2E 2E 2E 2E E3 81 BE E3 81 A3 E3 81 9F E3 81 8F E3 80 82
echo.
echo Beginning dump of physical memory
echo physical memory dump complete.
echo Contact your system administrator or technical support group for further echo assistance.
goto :erroralldef1massage

:erroralldef1massage
echo Dim answer:answer = MsgBox("�ǂ��Ȃ�̂��A�킩���Ă�̂��ȁH",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
if {%errorlevel%}=={1} (goto :erroralldef2massage)
if {%errorlevel%}=={2} (goto :erroralldef2massage)

:erroralldef2massage
echo Dim answer:answer = MsgBox("���̃G���[�͂��ׂĂ��f�t�H���g�ɖ߂��ۂɑ��݂��Ă���͂��̃t�@�C�������݂��Ă��Ȃ��Ƃ��ɔ������܂��B",vbOKCancel,"�G���[�̌���"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
goto erroralldef3massage

:erroralldef3massage
echo Dim answer:answer = MsgBox("�܂��A�����炭���Ȃ��� AllDefult �����s����ۂ�%erroralldefwhatdelete%.txt���폜�����̂��������Ǝv���܂����ǂˁB",vbYesno,"�G���[�̖{���̌���"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
if {%errorlevel%}=={6} (goto :erroralldef3massageok)
if {%errorlevel%}=={7} (goto :erroralldef3massageno)
goto erroralldef3massage

:erroralldef3massageok
echo Dim answer:answer = MsgBox("����ς�ˁB",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
rem �t�@�C���폜
del /Q %TEMP%\msgbox.vbs
exit

:erroralldef3massageno
echo Dim answer:answer = MsgBox("�������[��B�ł��A�{���Ƀo�O�ł��ꂪ�N�������Ă��ƂȂ琻��҂ɓ`���Ē����Ă�����Ă��������ˁB",vbOKCancel,"�G���[�H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL% > nul
del /Q %TEMP%\msgbox.vbs
exit

rem �A���C���X�g�[�����j���[�̑I���̔���
:alldefnow
cls
color 07
if %alldefselect%==1 goto alldefnowhenkou
if %alldefselect%==2 goto alldefnowsettingdel

rem �A���C���X�g�[�����j���[�̑I���ɉ����Ă̕���
:alldefnowsettingdel
del ����J�[�\��.txt
del �J�[�\���ւ��ݒ�.txt
goto alldefnowfinish

:alldefnowhenkou
del ����J�[�\��.txt
del �J�[�\���ւ��ݒ�.txt
rem �A���C���X�g�[���̂��߂̃J�[�\���̏������B���ɖ߂�
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

:alldefnowfinish
rem �A���C���X�g�[��������̃��b�Z�[�W
cls
title ���悤�Ȃ�I %debugmode%
echo ���ׂĂ��f�t�H���g�ɖ߂��܂����B
pause
echo ����ł��ʂ�ł��ˁB���悤�Ȃ�B
pause
rem ���g�̃p�X���擾���āA�������g���폜
del %~0
goto exit

:reboot
rem �ݒ�ɉ�����reboot���b�Z�[�W���Đ����邩�ǂ����̔���
find "rebootokey=false" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto rebootexit)
if {%errorlevel%}=={1} (goto rebootoktest)
cls

:rebootexit
exit

:rebootoktest
find "rebootokey=true" �J�[�\���ւ��ݒ�.txt
if {%errorlevel%}=={0} (goto reboot1)
if {%errorlevel%}=={1} (goto reboot1)
cls

:reboot1
rem �ċN���̊m�F
title �ċN���̊m�F %debugmode%
cls
SET /P selected=�ċN�����܂����H�ċN�����Ȃ��ꍇ�͕ύX���K�p����܂���(Y=Yes / N=No / S=Skip)
if {%selected%}=={egg} (goto :secret)
if {%selected%}=={y} (goto :yesre)
if {%selected%}=={yes} (goto :yesre)
if {%selected%}=={n} (goto :nore)
if {%selected%}=={no} (goto :nore)
if {%selected%}=={skip} (goto :exit)
if {%selected%}=={s} (goto :exit)

echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:nore
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
if {%selected%}=={n} (goto :nohi)
if {%selected%}=={no} (goto :nohi)
if {%selected%}=={back} (goto :rebootok)
if {%selected%}=={b} (goto :rebootok)

echo ?
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto higan

:nohi
echo.
echo �킩��܂���....
goto exit

:yes
echo ���肪�Ƃ��������܂��B
goto Lock

:testwipmenu
echo wip menu with test function
echo
echo

:secret
rem �C�[�X�^�[�G�b�O
rem btw this easteregg is little good quality so maybe i will delete this.
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
rem �e�X�g�@�\
title counttest mode
cls
SET /P runcount=type run count :

:checkruncount
for /f "delims=0123456789" %%i in ("%runcount%") do (
  echo %runcount% is not a number
pause
  goto testinthecalbeep
)

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
if {%selected%}=={b} (goto :hazime) 
if {%selected%}=={n} (goto :testinthecalbeep) else goto testinthecalbeep
goto finishcalbeep
exit


:easteregg
rem �^�̃C�[�X�^�[�G�b�O�H
PowerShell -WindowStyle Hidden -Command Exit
title 
cls
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"\", '', 'OK', 'none');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"...\", '', 'OK', 'none');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�Ȃ���\", '', 'OK', 'Warning');exit $result;"
PowerShell -WindowStyle Normal -Command Exit
cls
title �݂��́H
:eastereggh
cls
set ealoop=0
:eastereggloop
echo �݂��́H
set /a ealoop=%ealoop+1
if %ealoop% gtr 10 (goto eastereggloopout)
goto eastereggloop
:eastereggloopout
powershell sleep 0.5
PowerShell -WindowStyle Hidden -Command Exit
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"��  ��  ��  �H\", '�݂��́H', 'yesno', 'Warning');exit $result;"
if {%errorlevel%}=={6} (goto eastereggif1yes) else if {%errorlevel%}=={7} (goto eastereggif1no)

:eastereggif1yes
cls
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���͂͂͂����͂��Ђ�\", '', 'OK', 'Exclamation');exit $result;"
set eaif1loop=0
:eastereggif1yesloop
start cmd.exe
set /a eaif1loop=eaif1loop+1
if %eaif1loop% gtr 5 (goto eastereggif1yesloopout)
goto eastereggif1yesloop
:eastereggif1yesloopout
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�Ȃ�ŁH\", '', 'OK', 'Question');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�Ȃ�ŁH\", '', 'OK', 'Question');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�Ȃ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�łȂ�ŁH�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H\", '', 'OK', 'Question');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�����Ȃ�\", '', 'OK', 'Warning');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�E�F�u�J�����ւ̃A�N�Z�X�����ۂ���܂����B\", '�A�N�Z�T�������p�ł��܂���', 'OK', 'Error');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�����Ȃ������Ȃ������Ȃ������Ȃ������Ȃ�\", '', 'OK', 'warning');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"C:/ �ɃA�N�Z�X�ł��܂���B�A�N�Z�X�����ۂ���܂���\", '�ꏊ�����p�ł��܂���B', 'OK', 'Error');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"\", '�ꏊ�����p�ł��܂���ł����B', 'OK', 'Error');exit $result;"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�� �� �� ��\", '', 'OK', 'warning');exit $result;"
taskkill /f /im explorer.exe
PowerShell -WindowStyle normal -Command Exit
start explorer.exe
title �H�H�H�H�H�H�H�H�H�H�H�H�H�H�H�H
color 47
cls
pause
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ��
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O��
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌�
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌��
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌����
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌������
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌�������
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌������ׂ�
ping -n 1 127.0.0.1 > nul 2>&1
cls
echo ���O�͌������ׂ���
ping -n 1 127.0.0.1 > nul 2>&1
powershell sleep 2.5
cls
echo ���b�N�_�E���t�F�[�Y�����s���Ă��܂�...
powershell sleep 0.5
cls
title �������b�N�_�E�����甲���o���ꍇ�́A���b�N��ʂ���ċN�����s���Ă�������...
echo ���b��A�����������b�N�_�E�������s����܂�...
powershell sleep 0.25
set looplockdownhorroreaster=true
PowerShell -WindowStyle Hidden -Command Exit
goto lock

:eastereggif1no
cls
echo Dim answer:answer = MsgBox(".....",vbExclamation,""):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
PowerShell -WindowStyle normal -Command Exit
goto hazime



:1908hell
rem �e�X�g�@�\�ƃC�[�X�^�[�G�b�O
cls
set eggloop=0
:loop1908
set /a eggrandom=%random%*5/32767
title %eggloop%

if {%eggrandom%}=={0} (echo 1908 :D)
if {%eggrandom%}=={1} (echo 1908 :P)
if {%eggrandom%}=={2} (echo 1908 xD)
if {%eggrandom%}=={3} (echo 1908 :C)
if {%eggrandom%}=={4} (echo 1908 :O)
set /a eggloop=eggloop+1
if %eggloop% gtr 1908 (pause&echo 1 9 0 8 :D :D :D :D :D :D&pause&goto hazime)
goto loop1908

:developermenu
echo devloper menuuuuusdsdafwefuwbibhwiewbiofhwiofw
pause
exit /b

:batstarthelp
set batargmentonly=true
set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m
goto acbatargmentsonly

:openiedev
cls
echo InternetExplorer is will open.
echo CreateObject("InternetExplorer.Application").Visible=true > %TEMP%\openie.vbs & %TEMP%\openie.vbs
del %temp%\openie.vbs
powershell sleep 0.2
goto hazime

:allcommands
rem Sword art online War of Underworld refarence
set selected=0null0
if {%allcommandlock%}=={true} (goto hazime) else if {%allcommandlock%}=={false} (goto allcommandsmain)
title enter the password!
set /p selected=enter the password:
if {%selected%}=={1908} (echo correct.&set allcommandlock=false&pause) else if {%selected%}=={0null0} (echo please type something.&pause&goto allcommands) else (echo incorrect! now you need restart bat to try again.&set allcommandlock=true&pause&goto hazime)
:allcommandsmain
cls
rem dumbass code, wtf hell no who make it fr (damn its me but)!!!!! ITS ABSOLUTE TRASH!!!! THATS IS SO HARD TO READ
rem so many set uhhh
rem STOP SPAMMING SET AUHAUAHAUAHAUHAUAHAHAHAUAHUAHUUAUHHUHUHUHUHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh&SET IHHHHGISJGIE
if {%wmodetoggle%}=={false} (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m[107m[30m)
if defined %wmodetoggle% (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrcyan=[96m&set clrgra=[90m&set clr2=[0m)
echo [Loading Command list...]
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=65;$w.BufferSize=$s;}"
cls
title INSPECT:COMMANDLIST
echo %clr%::%clr2%                      [Entire list of menu commands]    %clrgra%6color test%clr2%
echo                     (you can use all them it in main menu)
echo.
echo            ^<%clred%debbuging purposes commands%clr2%^>
echo.
rem OMG Ctrl+V spam!!!! poop coding sdafoaf2oirvn210rvn2983rvn3828723rv!!!!!!!
echo          %clryel%�E%clr2%inspectentirecommandlist %clrgra%(Displays all available commands.)%clr2%
echo.
echo           %clrcyan%-%clr2% fulldebug         %clrgra%(enter variable management mode.)%clr2%
echo           %clrcyan%-%clr2% getadmin          %clrgra%(trying get admin permission.)%clr2%
echo           %clrcyan%-%clr2% bypassfirstboot   %clrgra%(bypassing first boot constraints.)%clr2%
echo           %clrcyan%-%clr2% setenter          %clrgra%(sets the enter count in main menu.)%clr2%
echo           %clrcyan%-%clr2% playdefboot       %clrgra%(playing first start animation.)%clr2%
echo           %clrcyan%-%clr2% reload            %clrgra%(reboot bat file, and reloading setting.) %clr2%
echo           %clrcyan%-%clr2% openie            %clrgra%(trying open internet explorer.)%clr2%
echo           %clrcyan%-%clr2% counttestdeb      %clrgra%(enter the count test mode.)%clr2%
echo           %clrcyan%-%clr2% alldefnow1        %clrgra%(forced to enter alldefault.)%clr2%
echo           %clrcyan%-%clr2% funanimationdeb   %clrgra%(play rare boot animation.)%clr2%
echo           %clrcyan%-%clr2% windowsfiltertest %clrgra%(play bad win ver waning.)%clr2%
echo.
echo            ^<%clrgrn%easter egg purposes commands%clr2%^>
echo.
echo           %clrcyan%-%clr2% easteregg %clryel%[%clr2%%clred%!%clr2%%clryel%]%clr2%    %clrgra%(playing easteregg, its little dangerous.)%clr2%
echo           %clrcyan%-%clr2% egg              %clrgra%(play seacret message.)%clr2%
echo           %clrcyan%-%clr2% egg1             %clrgra%(play error massage in alldef.)%clr2%
echo           %clrcyan%-%clr2% egg2             %clrgra%(play dogcheck error, inspire toby fox.)%clr2%
echo           %clrcyan%-%clr2% wwssdadaba       %clrgra%(seacret massage and show build number.)%clr2%
echo           %clrcyan%-%clr2% tamago1908       %clrgra%(show goofy massage.)%clr2%
echo           %clrcyan%-%clr2% himazionnoob1908 %clrgra%(show goofy massage.)%clr2%
echo           %clrcyan%-%clr2% mskg1908         %clrgra%(show goofy massage.)%clr2%
echo           %clrcyan%-%clr2% 1908             %clrgra%(show looped goofy massage.)%clr2%
echo           %clrcyan%-%clr2% toxic            %clrgra%(play music with your own browser.)%clr2%
echo           %clrcyan%-%clr2% abcdefu          %clrgra%(play music with your own browser.)%clr2%
echo           %clrcyan%-%clr2% dogsong          %clrgra%(play music with your own browser.)%clr2%
echo.
echo            ^<%clryel%Bad commands%clr2%^>
echo.
echo           %clrcyan%-%clr2% fuckyou %clrgra%(it will say fuck you too.)%clr2%
echo           %clrcyan%-%clr2% fucku   %clrgra%(it will say fuck you too.)%clr2%
echo           %clrcyan%-%clr2% fucu    %clrgra%(it will say fuck you too.)%clr2%
echo           %clrcyan%-%clr2% fucyou  %clrgra%(it will say fuck you too.)%clr2%
echo.
echo            ^<%clrmag%Miscellaneous Commands%clr2%^>
echo.
:acbatargmentsonly
echo                     %clred%[%clr2%Bat argument commands%clred%]%clr2%
echo.
echo            %clrcyan%-%clr2% help              %clrgra%(show available arguments.)%clr2%
echo            %clrcyan%-%clr2% enablesimpleboot  %clrgra%(Boot up with Simple txt.)%clr2%
echo            %clrcyan%-%clr2% bypsdisexit       %clrgra%(Bypass disabling the exit button.)%clr2%
echo            %clrcyan%-%clr2% bypsloadsg        %clrgra%(Bypass the loading of settings.)%clr2%
echo            %clrcyan%-%clr2% bypsvck           %clrgra%(Bypass the windows version check.)%clr2%
if {%batargmentonly%}=={true} (echo.&echo.&goto allcommandswait)
echo.
echo                     %clrgrn%[%clr2%fulldebug commands%clrgrn%]%clr2%
echo.
echo            %clrcyan%-%clr2% goto %clrgra%(goto for labels that exist.)%clr2%
echo            %clrcyan%-%clr2% set  %clrgra%(create new variable.)%clr2%
echo            %clrcyan%-%clr2% help %clrgra%(Show commands available in fulldebug.)%clr2%
echo.
:allcommandswait
echo %clred%^/^/%clr2%[Type something to back to menu...]                           %clrgra%%batver%%clr2%
pause >nul
set clrcyan=
set clrgra=
set clred=
set clrgrn=
set clryel=
set clrmag=
if {%batargmentonly%}=={true} (set batargmentonly= &cls&exit /b)
goto hazime


:fulldebug
set fulldebugsetvariable=0null0
set fulldebugvariableapply=0null0
title ^(�f�o�b�O�p^) �J�[�\���ϐ�
echo.
echo fulldebug ���N�����Ă��܂�...
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=150;$w.BufferSize=$s;}"
cls
:fulldebugtypevariable
set fulldebugsetvariable=0null0
set fulldebugvariableapply=0null0
set
set /p fulldebugsetvariable=Enter the variable to change :
if {%fulldebugsetvariable%}=={back} (goto hazime)
if {%fulldebugsetvariable%}=={exit} (goto hazime)
if {%fulldebugsetvariable%}=={help} (echo goto&echo set&echo help&echo back&pause&cls&set fulldebugsetvariable=0null0&goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={goto} (goto fulldebuggoto)
if {%fulldebugsetvariable%}=={set} (goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={0null0} (cls&goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={allcommandlock} (echo you cant chenge this variable, becouse this variable is locked.&pause&cls&goto fulldebugtypevariable)
if not defined %fulldebugsetvariable% (echo %fulldebugsetvariable% is not exist. please type exist variable or create it. &pause&cls&goto fulldebugtypevariable)
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if {%fulldebugvariableapply%}=={back} (goto fulldebugerrorsetnew1)
if {%fulldebugvariableapply%}=={0null0} (goto fulldebugerrorsetvariable1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo %fulldebugsetvariable%^=%fulldebugvariableapply% chenged.
pause
cls
goto fulldebugtypevariable

:fulldebuggoto
set fulldebugsetvariable=0null0
set /p fulldebugsetvariable=goto where ?:
if {%fulldebugsetvariable%}=={back} (goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={allcommandsmain} (echo you cant goto this lavel, becouse this variable is locked.&pause&cls&goto fulldebuggoto)
if {%fulldebugsetvariable%}=={exit} (goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={0null0} (cls&goto fulldebuggoto)
goto %fulldebugsetvariable%

:fulldebugsetnew
cls
set fulldebugsetvariable=0null0
set fulldebugvariableapply=0null0
set /p fulldebugsetvariable=Enter the currently undefined variable you wish to create.  :
if defined %fulldebugsetvariable% (echo %fulldebugsetvariable% is already exist. please type not exist variable. &pause&cls&goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={back} (goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={allcommandlock} (echo you cant chenge this variable, becouse this variable is locked.&pause&cls&goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={0null0} (echo please enter something.&pause&cls&goto fulldebugsetnew)
:fulldebugsetnewenter
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if {%fulldebugvariableapply%}=={0null0} (echo You cannot create a variable with no content. &pause&cls&goto fulldebugsetnewenter)
if {%fulldebugvariableapply%}=={back} (goto fulldebugerrorsetnew1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo variable %fulldebugsetvariable% has created with %fulldebugvariableapply% (%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto fulldebugtypevariable

:fulldebugerrorsetnew1
set /p fulldebugsetvariableerrornew=Exit menu or set as variable? (1 or 2) : 
if {%fulldebugsetvariableerrornew%}=={1} (goto fulldebugtypevariable)
if {%fulldebugsetvariableerrornew%}=={2} (goto fulldebugerrorsetnew1if)
:fulldebugerrorsetnew1if
set %fulldebugsetvariable%=back
echo variable %fulldebugsetvariable% has created with %fulldebugvariableapply% (%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto fulldebugtypevariable


:fulldebugerrorsetvariable1
set /p fulldebugsetvariableerrorif=do you really want delete %fulldebugsetvariable%? (y or n)
if {%fulldebugsetvariableerrorif%}=={y} (
set %fulldebugsetvariable%=
echo %fulldebugsetvariable% has deleted.
pause
cls
goto fulldebugtypevariable
)
if {%fulldebugsetvariableerrorif%}=={n} (goto fulldebug)

:littleeasteregg
if {%hazimeeaster%}=={true} (goto hazimemenu)
cls&pause&echo hello! this is easteregg!&pause&cls&title �B���@�\�Ń��C�����j���[�ƃo�[�W�������̕����Ńr���h�i���o�[���\�������悤�ɂȂ���&echo and bye!&pause&cls&set hazimeeaster=true&goto hazime


:Lock
rundll32.exe user32.dll, LockWorkStation
if {%looplockdownhorroreaster%}=={true} (goto lock)
goto reboot

:exit
pause
:reboot

rem 3500 line code, wtf?
rem I still dont have any idea why i did make it
rem uh anyway finally end of line
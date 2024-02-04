@echo off
setlocal
rem �T�C�Y�̎w��
mode con: cols=75 lines=25
title �J�[�\���ւ�
rem �J�[�\���ւ� by tamago_1908
rem ���{��o�[�W����

rem https://github.com/tamago1908/cursor-changer.bat 

rem OS���݂̋@�\���������o�b�`�t�@�C���A"�J�[�\���ւ�"
rem �ڍׂ�github���Q�ƁB

rem O==============================================================O
rem I                                                              I
rem I                       ! DISCLAIMER !                         I
rem I                                                              I
rem I         If you don't understand what you are doing,          I
rem I       I suggest you close immediately and do nothing.        I
rem I      If you have attempted to view the contents of this      I
rem I      BATCH for any reason, I do not recommend that you       I
rem I       change the contents of this BATCH at the least.        I
rem I      This batch is very long and complex. If you change      I
rem I        anything at all, that alone can cause an error.       I
rem I     Please note that tamago_1908 does not provide support    I
rem I          for errors or problems caused by your changes       I
rem I                         to this batch.                       I
rem I                                                              I
rem O==============================================================O
rem                 This batch is created by tamago_1908
rem                         �J�[�\���ւ�.bat

rem ��L�̃��b�Z�[�W�̕\��������Ă���H�Ȃ�Virtual Studio Code�ŊJ���̂𐄏����܂�...

rem   Copyright 2021 tamago_1908

rem   Licensed under the Apache License, Version 2.0 (the "License");
rem   you may not use this file except in compliance with the License.
rem   You may obtain a copy of the License at
rem
rem       http://www.apache.org/licenses/LICENSE-2.0
rem
rem   Unless required by applicable law or agreed to in writing, software
rem   distributed under the License is distributed on an "AS IS" BASIS,
rem   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem   See the License for the specific language governing permissions and
rem   limitations under the License.


rem �N�����̓��t�𗘗p���ă��b�Z�[�W��\������B���̋G�߂ɍ��������b�Z�[�W�B
rem exit���j���[���I�[�o�[���C������B��̓I�ɂ͍ŏ��ɊD�F�Ń��j���[��\�������̂��Aiecl��pswd���b�N�Ɠ��������ŕ`�ʂ���B
rem �ݒ�̏������Ȃǂ̍ۂɗ��p���Ă��镔�����֐�������
rem ���������������@�Őݒ�t�@�C���Ȃǂ̉��ς����m����
rem ���{�ꉻ�ł��Ă��Ȃ���������{�ꉻ����
rem linux���̋N���A�j���[�V��������������B�Ⴆ�΁A
rem [Info] (time) Linux-ish Boot Progress is just started.
rem [Info] (time) Error Tracking is Started.
rem [Info] (time) Argment_Loader is Starting...
rem [Info] (time) Argment_Loader is Ended.
rem [Info] (time) BatbootPowershell is Started with "Boot"
rem [Info] (time) BatbootPowershell is Ended.
rem [Error] (time) Error! BSOD_Loader is called with ID 0.


rem �X�^�[�g�A�b�v�A�j���[�V�����̃C�[�X�^�[�G�b�O�������Ǝ�������B
rem ��̓I�ɂ́A32768����1�̊m���ŋ��낵�����̂��Đ����A256����1�̊m���Ń��b�N���[��������B
rem ���ݎ�������Ă���youtube�֘A�̏��������ׂč폜���āAdogcheck��startup rickroll��powershell�̉��y�Đ��ɒu��������B
rem �����Ɛݒ���J�e�S�i���C�Y������Bbootanimation�̃J�e�S���[�Ƃ��Bsetting5_1�Ƃ��H

rem �J�[�\���ւ�����̓Ɨ�����cmd����Ăяo�����ċN��������B���ǂ��G���[����
rem ����������邤���ň�ԊȒP�Ȃ̂͂��炩���߈�����\�񂳂��Ă������ƁB�Ⴆ�΁ACSCG_BOOT_STARTERRORTRACKER�Ƃ���������n������Ƃ��B

rem �ݒ�̓ǂݍ��ݎ��̃G���[�����o���邽�߂ɁA���ݒ胍�[�h���ɕϐ���ݒ肷��Bsetting_loader_errortracker�̕ϐ���0��1��
rem �ݒ肵�āA�ǂݍ��ݎ��ɃG���[�����������ꍇ�ɂ�1�ɐݒ肳��Ă��Ȃ��Ƃ������ƂŃG���[���m���A�ǂݍ��ݐ؂ꂽ�̂Ȃ�1�ŃG���[���Ȃ��Ƃ���B
rem powershell���������ŁAbatch�����ς���Ă��邩�ǂ��������m����@�\��ǉ�����B�ݒ�ł���𖳌��ɂł���悤�ɂ�����B
rem �����ƋN���𑁂�����B��̓I�ɂ́A���݂̃o�[�̏�Ԃ�ݒ肵���u�Ԃ�exit /b�ł���悤�ɂ���Bcall�Őݒ肷��΂悢�B


rem �������GUI���C�����āA�����I�Ȃ��̂ɕύX����B�������A���d�J���B��������Ȃ��Ə����I�Ɍ�����邱�ƂɂȂ�̂ŁA���߂Đݒ��exit�����͌����I�ɂ������B


rem Make sure to fill in the build number and version! Also, don't forget to put it in the archive!
title �J�[�\���ւ�
rem VER v1.13��6
set batver=1.13��6
set batbuild=build 60
set batverdev=beta
set hazimeeaster=false
set firststartbat=no
set messagealreadyshowed=false
set batpath=%~0
cd /d %HOMEDRIVE%%HOMEPATH%

setlocal enabledelayedexpansion
>nul 2>&1 find "bootanimation=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
    >nul 2>&1 find "s5_rawboot=true" �J�[�\���ւ��ݒ�.txt
if not "!errorlevel!"=="0" (
>nul 2>&1 find "s5_linuxboot=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
    set linuxboot=true
>nul 2>&1 find "wmode=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (set linuxishclr=[92m&set linuxishclr2=[107m[30m) 
>nul 2>&1 find "wmode=false" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (set linuxishclr=[92m&set linuxishclr2=[0m)
) else (set linuxboot=false)
)
)

if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Linux-ish Boot Loader is just now started.)
>nul 2>&1 find "bootanimation=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
>nul 2>&1 find "s5_simpleboot=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
    set simpleboot=true
)
)
>nul 2>&1 find "bootanimation=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
>nul 2>&1 find "s5_rawboot=true" �J�[�\���ւ��ݒ�.txt
if "!errorlevel!"=="0" (
@echo on
)
)
setlocal disabledelayedexpansion
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Bootanimation Checked...)

:batstartErrortracker
rem I don't know why, but it seems that Argment_loader does not work within subroutines.
rem So, it is run once outside the subroutine and then returned to the subroutine for processing.
goto Argments_Loader
:batstarterrortrackermain
call :batstartErrortrackerstart

call :BSOD_Errors 0

goto :batstarterrortrackermain
:batstartErrortrackerstart
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Error_Tracker is started.)
set argmentloaded=
goto :Argments_Loaderend

:Argments_Loader
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Argment_Loader is started...)
rem �������Ȃ���ΏI��
if "%~1"=="" set argmentloaded=true& goto Argments_Loaderend
title �J�[�\������
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
  set argmentserror=
  rem ���݂̗v�f���擾
  set current=!arg[%%i]!
  rem ���݂̗v�f����łȂ���Ώ���
  if not "!current!"=="" (
    rem ���݂̗v�f�ƈ�v����v�f����ɂ���i�d���r���j
    for /l %%j in (%%i,1,%n%) do (
      if "!arg[%%j]!"=="!current!" set arg[%%j]=
    )
    rem ���݂̗v�f�ɉ������������s��
    if "!current!"=="bypsdisexit" (echo bypsdisexit��L���ɂ��܂����B&set disableexit=false&set argmentserror=false)
    if "!current!"=="enablesimpleboot" (echo simpleboot��L���ɂ��܂����B&set simpleboot=true&set argmentserror=false)
    if "!current!"=="devmode" (call :developermenu&set argmentserror=false)
    if "!current!"=="recovery" (echo recovery mode��L���ɂ��܂����B&set argmentserror=false&goto Cursor_Changer_REmenu)
    if "!current!"=="help" (title �����̃w���v&call :batstarthelp&set argmentserror=false)
    if "!current!"=="bypsvck" (echo bypsvck��L���ɂ��܂����B&set bypasswinvercheck=true&set argmentserror=false)
    if "!current!"=="bypsadm" (echo bypsadm��L���ɂ��܂����B&set adminbypass=true&set adminbypass=false&set argmentserror=false)
    if "!current!"=="bypsloadsg" (echo bypsloadsg��L���ɂ��܂����B&set settingbypass=true&set argmentserror=false)
rem ��O����
   if "!argmentserror!"=="" (title �J�[�\������ �G���[&echo �s���Ȉ������w�肳��܂����I^(!current!^) �L���Ȉ������w�肵�Ă��������B ^(���ꂩ�A^"help^"�𗘗p���Ă��������B^)
      )
    )
  )
    set argmentloaded=true
    timeout /t 3 /nobreak >nul
:Argments_Loaderend
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Argment_Loader is done.)
set n=
setlocal disabledelayedexpansion
if {%argmentloaded%}=={true} (set argmentloaded=&goto :batstarterrortrackermain)
set argmentserror=
if exist �J�[�\���ւ��ݒ�.txt (
setlocal enabledelayedexpansion
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul 
if {!errorlevel!}=={0} (color f0&set wmodetoggle=true) else (set wmodetoggle=false)
setlocal disabledelayedexpansion
) else (set wmodetoggle=false)

:batbootcheckwinver
ver | find /i "Version 10.0.23" > nul
if "%errorlevel%"=="0" (goto batbootcheckwinversafe)
ver | find /i "Version 10.0.22" > nul
if "%errorlevel%"=="0" (goto batbootcheckwinversafe)
ver | find /i "Version 10.0.105" > nul
if "%errorlevel%"=="0" (goto batbootcheckwinversafe)
ver | find /i "Version 10.0.102" > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows10 1509&goto batbootcheckwinverbad)
ver | find /i "Version 10.0.10" > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows10&goto batbootcheckwinverbad)
ver | find /i "Version 10.0.1" > nul
if "%errorlevel%"=="0" (goto batbootcheckwinversafe)
ver | find /i "Version 6.3." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows 8.1&goto batbootcheckwinverbad)
ver | find /i "Version 6.2." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows 8&goto batbootcheckwinverbad)
ver | find /i "Version 6.1." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows7&goto batbootcheckwinverbad) else (
set "windowsverfilter=�Â����܂��I"&goto batbootcheckwinverbad
)

:batbootcheckwinverbad
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
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] WinverCheck is done.)

:batbootcheckpowershell
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Powershell Checking...)
rem check powershell is available
>nul 2>&1 powershell exit &&goto batbootcheckpowershellsafe
cls
echo powershell�̊m�F�Ɏ��s���܂����I
pause
cls
echo ���ꂪ�\�����ꂽ�Ƃ������Ƃ́A���g����PC��powershell���C���X�g�[������Ă��Ȃ��\���������Ƃ������Ƃł��B
pause
cls
echo �J�[�\���ւ��𓮍삳����ɂ�powershell���K�{�ł��B
echo Windows 10 1511�ȍ~�ł�powershell 5.1���W���ŃC���X�g�[������Ă��邽�߁A���炭�Ӑ}�I�ɃA���C���X�g�[������Ă��邩�A���p�ł��Ȃ��Ȃ��Ă���\���������ł��傤�B
pause
cls
echo Powershell 5.1���A����ȍ~��ʓr�C���X�g�[�������̂��A�ēx�����Ă��������B
pause
cls
echo ������s���Ă�(��������powershell���C���X�g�[������Ă���̂�)��肪�����ꍇ�ɂ́Agithub��issue�ɂĕ񍐂��Ă��������B
pause
cls
exit
:batbootcheckpowershellsafe
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Powershell Check is done.)
rem �J�[�\���ւ����������s

rem �{���� (�ϐ��̃Z�b�g�Ƃ��A�O�i�K)
set version=
set bootbatnow=yes
set exitbuttondisabled=false
rem �Ǘ��Ҍ�����ۗL���Ă��邩�̊m�F
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
rem �Ǘ��Ҍ�����ۗL���Ă����ԂŁAexit�{�^���𖳌��ɂ���ƁA�H�ɃE�C���X�Ƃ��Č��o����Ă��܂��ꍇ������B�Ȃ̂ŁA�Ǘ��Ҍ����ۗL���ƁAdisableexit�Ƃ����ϐ���false�̏ꍇ�́A�������o�C�p�X���Ă���B
rem By the way, the reason why it is named disableexit is because this feature was a feature to disable the exit button in the beta version. After leaving beta, it was changed to disable maximization.
if exist �J�[�\���ւ��ݒ�.txt find "CheckUpdate=true" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (set checkupdatetoggle=true&set batverforpowershell=%batver:��=.b%) else (set checkupdatetoggle=false)
if {%disableexit%}=={false} (goto batbootdisabledexitbutton)

:batbootpowershell
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Batbootpowershell is started...)
set exitbuttondisabled=false
rem chenge the boot message if it is the first time, or if a value is defined in batbotpowershell, or at boot up
if not exist �J�[�\���ւ��ݒ�.txt set firststartbat=yes
if not "%linuxboot%"=="true" (
if not "%firststartbat%"=="yes" (
if {%bootbatnow%}=={yes} (title �J�[�\���ւ� ������...&echo ���΂炭���҂����������B)
) else (
    if not defined batbootpowershell (
        if not exist ����J�[�\��.txt (
        echo �Z�b�g�A�b�v�̏��������Ă��܂�...
        ) else (title �J�[�\���ւ� ������...&echo ���΂炭���҂����������B)
    )
)
)
rem startid~powershell �܂ł̃R�[�h�͂��炵�Ă͂����Ȃ��@����ȑO������Ȍ�Ȃ�ok
:: StartID1908
call :getLineNumber startLine StartID1908 0
goto batbootpowershellendcode
:batbootpowershellcodestart
set /a startline=startline+5&set /a endline=endline-3
if "%batbootpowershell%"=="OOBEMusic" (start /min powershell.exe  -noexit -NoProfile -ExecutionPolicy Unrestricted "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*&goto batbootdisabledexitbutton)
if "%checkupdatetoggle%"=="true" (for /f "delims=" %%a in ('powershell -NoProfile "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*') do set Updateinfo=%%a&goto batbootdisabledexitbutton) else (powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*&goto batbootdisabledexitbutton)


# Define the function to disable the maximize button
function Disablemax {
#Calling user32.dll methods for Windows and Menus
$code = @'
using System;
using System.Runtime.InteropServices;

namespace CloseButtonToggle {

// Function Declaration

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

// End of Declaration

// Set required arguments
   const int GWL_STYLE = -16;
   const int WS_MAXIMIZEBOX = 0x00010000;

   const uint SC_MAXIMIZE = 0xF030; 
   const uint MF_BYCOMMAND = 0;

// Main Processing
internal static void ChangeCurrentState(bool state) {
     IntPtr hWnd = GetConsoleWindow();
     int style = GetWindowLong(hWnd, GWL_STYLE);
     if (state) {
       style |= WS_MAXIMIZEBOX; // enable maximize button
     } else {
       style &= ~WS_MAXIMIZEBOX; // disable mixmize button
     }
     SetWindowLong(hWnd, GWL_STYLE, style);
     DrawMenuBar(hWnd);
   }
 }
//  Confirmation of change
 public static class Status {
   public static void Disable() {
     WinAPI.ChangeCurrentState(false); // Change to 'true' if you want to turn it enable
   }
 }
} 
'@

Add-Type $code
[CloseButtonToggle.Status]::Disable()
}

# Define the function to check the update of �J�[�\���ւ� with github api
function Updater {
$repo = "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest"
try{$file = (Invoke-RestMethod -Uri $repo -Method Get -Headers @{'Accept'='application/vnd.github.v3+json'}).assets | Where-Object { $_.name -like "Cursor.Changer.*" }
}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
$fileVersion = $file.name -replace "Cursor\.Changer\.|\.bat", ""
$batVersion = "$env:batverforpowershell", ""
$batName = Get-Item "�J�[�\���ւ� *.bat"

if ("$fileVersion" -eq "$env:batverforpowershell") {return "null";break}

if ($file.name -match "^Cursor\.Changer\..*\.bat$") {
    $fileverArray = $fileVersion -split "\."
    $batverArray = $batVersion -split "\."


    # Check if the file version is beta
    if ($fileverArray[-1] -match "^[a-z][0-9]+$") {
        $isFileBeta = $true
    }
    else {
        $isFileBeta = $false
    }

    # Check if the bat version is beta
    if ($batverArray[-1] -match "^[a-z][0-9]+$") {
        $isBatBeta = $true
    }
    else {
        $isBatBeta = $false
    }

    for ($i = 0; $i -lt [Math]::Max($fileverArray.Length, $batverArray.Length); $i++) {
        # Cast the elements to int if possible
        if ($fileverArray[$i] -as [int]) {
            $fileElement = [int]$fileverArray[$i]
        }
        else {
            $fileElement = $fileverArray[$i]
        }

        if ($batverArray[$i] -as [int]) {
            $batElement = [int]$batverArray[$i]
        }
        else {
            $batElement = $batverArray[$i]
        }

        if ($isFileBeta -eq $isBatBeta) {
            cls
            # Compare the elements as usual
            if ($fileElement -gt $batElement) {
            if ($batElement -ge $FileElement -or (-not $batElement -lt $FileElement)) {return "null";break}
            return "batbeta=$isfileBeta,updateavailable=true,updatemyversion=$batVersion,updateversion=$fileVersion"

            break # Exit the loop
            }
            
        }
        elseif ($isFileBeta -and -not $isBatBeta) {
            cls
            $fileElementsplit = $fileVersion -split "\."
            $batElementsplit = $batVersion -split "\."
            $fileElementsplit = [int]$fileElementsplit[2].Substring(1)
            $batElementsplit = [int]$batElementsplit[2].Substring(1)
            if ($batElementsplit -gt $fileElementsplit) {
                return "null";break
            }
            return "batbeta=$isfileBeta,updateavailable=true,updatemyversion=$batVersion,updateversion=$fileVersion"

       break # Exit the loop
        }
        
    }
}

            function Doupdate {
                $downloadFolder = Join-Path $env:USERPROFILE "Downloads"
                $downloadFile = Join-Path $downloadFolder $file.name
                Invoke-WebRequest -Uri $file.url -OutFile $downloadFile -Headers @{'Accept'='application/octet-stream'}
                $newBatName = "Cursor.Changer.$fileVersion.bat"
                Move-Item $downloadFile (Join-Path (Split-Path $batName) ("$newBatName")) -Force
                Remove-Item "Cursor.Changer.$batVersion.bat" -Force
            }
    }


function Fullupdater {
Write-Host "�A�b�v�f�[�g���m�F���Ă��܂�..."
#check the update of �J�[�\���ւ� with github api, and Update it.
$repo = "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest"
try{$file = (Invoke-RestMethod -Uri $repo -Method Get -Headers @{'Accept'='application/vnd.github.v3+json'}).assets | Where-Object { $_.name -like "Cursor.Changer.*" }
}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
$fileVersion = $file.name -replace "Cursor.Changer\.|\.bat", ""
$batVersion = (Get-Item "�J�[�\���ւ� *.bat").name -replace "�J�[�\���ւ� |\.bat", ""
$batName = Get-Item "�J�[�\���ւ� *.bat"

if ( -not ($fileVerarray -eq $batVerarray)) {
if ($file.name -match "^Cursor\.Changer\..*\.bat$") {
    $fileverArray = $fileVersion -split "\."
    $batverArray = $batVersion -split "\."


    # Check if the file version is beta
    if ($fileverArray[-1] -match "^[a-z][0-9]+$") {
        $isFileBeta = $true
    }
    else {
        $isFileBeta = $false
    }

    # Check if the bat version is beta
    if ($batverArray[-1] -match "^[a-z][0-9]+$") {
        $isBatBeta = $true
    }
    else {
        $isBatBeta = $false
    }

    for ($i = 0; $i -lt [Math]::Max($fileverArray.Length, $batverArray.Length); $i++) {
        # Cast the elements to int if possible
        if ($fileverArray[$i] -as [int]) {
            $fileElement = [int]$fileverArray[$i]
        }
        else {
            $fileElement = $fileverArray[$i]
        }

        if ($batverArray[$i] -as [int]) {
            $batElement = [int]$batverArray[$i]
        }
        else {
            $batElement = $batverArray[$i]
        }

        if ($isFileBeta -eq $isBatBeta) {
         cls
            # Compare the elements as usual
            if ($fileElement -gt $batElement) {
            # The file version is beta and the bat version is not, so the file version is newer
            Write-Host "�A�b�v�f�[�g�����p�\�ł��B���݂̃o�[�W�����́A `"$($batVersion)`"�ŁA�A�b�v�f�[�g���ꂽ�o�[�W������ `"$($fileVersion)`"�ł��B" `n
            Start-Sleep 1
            powershell {$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=62;$w.BufferSize=$s;}
try{if($env:wmodetoggle -eq "false"){Write-Host "�`�F���W���O :" -foregroundcolor white}elseif($env:wmodetoggle -eq "true"){Write-Host "�`�F���W���O :" -foregroundcolor black }else{Write-Host "�`�F���W���O :" -foregroundcolor white};$e=[char]27;$clr="$e[7m";$clred="$e[91m";$clrgrn="$e[92m";$clryel="$e[93m";$clrmag="$e[95m";$clrgra="$e[90m";$clrcyan="$e[96m";$c="$e[0m";if($env:wmodetoggle -eq "true"){$clr="$e[100m$e[97m";$c="$e[0m$e[107m$e[30m"};foreach($s in (irm -Uri "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest").body -split '\r\n'){if($s -match "####"){write-host "$clrcyan$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match ">"){write-host "$clred$($s -replace '\>', '')$c" `n -NoNewline}elseif($s -match "###"){write-host "$clryel$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match "___"){write-host "$clrgra--------------------------------------------------$c" `n -NoNewline}else{$s=$s -replace "\*{3}(.+?)\*{3}", "$e[3m;1m`$1$c";$s=$s -replace "\*{2}(.+?)\*{2}", "$e[1m`$1$c";$s=$s -replace "^\s*-(\s+)(.*)", "$clred-$c`$1`$2";$s=$s -replace "\*+", "";write-host "$s" `n -NoNewline}};write-host "";rv e,clr,clred,clrgrn,clryel,clrmag,clrgra,clrcyan,c,s}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
            Start-Sleep 2

             if ($isFileBeta -eq "true") {
            $e=[char]27
            $clrgra="$e[90m"
            $c="$e[0m"
            Write-Host "$clrgra[TIP] ���̃A�b�v�f�[�g�̓x�[�^�łł��B�Ȃ̂ŁA�ꕔ�s����ȕ���������\��������܂��B$c"
            rv clrgra,c,e
            }
                $answer = Read-Host "�A�b�v�f�[�g���܂����H ���A�A�b�v�f�[�g���C���X�g�[������Ƌ����I�ɉp��łւƕύX����܂��B(y or n)"
                if ($answer -eq "y") {
                $downloadFolder = Join-Path $env:USERPROFILE "Downloads"
                $downloadFile = Join-Path $downloadFolder $file.name
                Invoke-WebRequest -Uri $file.url -OutFile $downloadFile -Headers @{'Accept'='application/octet-stream'}
                $newBatName = "Cursor.Changer.$fileVersion.bat"
                Move-Item $downloadFile (Join-Path (Split-Path $batName) ("$newBatName")) -Force
                Remove-Item "Cursor.Changer.$batVersion.bat" -Force

                    Write-Host "�A�b�v�f�[�g�͊������܂����B"
                    Start-Sleep 2

                    break
                }
                else {
                    Write-Host "�A�b�v�f�[�g�̓L�����Z������܂����B"
                    Start-Sleep 2
                    break
                }
            }
            elseif ($fileElement -lt $batElement) {
                Write-Host "[ERROR] ���Ȃ��̃o�[�W����(`"$($batVersion)`")�́A�A�b�v�f�[�g�t�@�C��������s (`"$($fileVersion)`")���Ă��܂��I(���炭�A���Ȃ��̓J�[�\���ւ��̃o�[�W�������̈ӂɕς����̂ł��傤...)" -ForegroundColor Red 
                Start-Sleep 2
                break
            }
        }
        elseif ($isFileBeta -and -not $isBatBeta) {
        cls
            # The file version is beta and the bat version is not, so the file version is newer
            Write-Host "�A�b�v�f�[�g�����p�\�ł��B���݂̃o�[�W�����́A `"$($batVersion)`"�ŁA�A�b�v�f�[�g���ꂽ�o�[�W������ `"$($fileVersion)`"�ł��B" `n
            Start-Sleep 1
            powershell {$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=62;$w.BufferSize=$s;}
try{if($env:wmodetoggle -eq "false"){Write-Host "�`�F���W���O :" -foregroundcolor white}elseif($env:wmodetoggle -eq "true"){Write-Host "�`�F���W���O :" -foregroundcolor black }else{Write-Host "�`�F���W���O :" -foregroundcolor white};$e=[char]27;$clr="$e[7m";$clred="$e[91m";$clrgrn="$e[92m";$clryel="$e[93m";$clrmag="$e[95m";$clrgra="$e[90m";$clrcyan="$e[96m";$c="$e[0m";if($env:wmodetoggle -eq "true"){$clr="$e[100m$e[97m";$c="$e[0m$e[107m$e[30m"};foreach($s in (irm -Uri "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest").body -split '\r\n'){if($s -match "####"){write-host "$clrcyan$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match ">"){write-host "$clred$($s -replace '\>', '')$c" `n -NoNewline}elseif($s -match "###"){write-host "$clryel$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match "___"){write-host "$clrgra--------------------------------------------------$c" `n -NoNewline}else{$s=$s -replace "\*{3}(.+?)\*{3}", "$e[3m;1m`$1$c";$s=$s -replace "\*{2}(.+?)\*{2}", "$e[1m`$1$c";$s=$s -replace "^\s*-(\s+)(.*)", "$clred-$c`$1`$2";$s=$s -replace "\*+", "";write-host "$s" `n -NoNewline}};write-host "";rv e,clr,clred,clrgrn,clryel,clrmag,clrgra,clrcyan,c,s}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
            Start-Sleep 2

             if ($isFileBeta -eq "true") {
            $e=[char]27
            $clrgra="$e[90m"
            $c="$e[0m"
            Write-Host "$clrgra[TIP] ���̃A�b�v�f�[�g�̓x�[�^�łł��B�Ȃ̂ŁA�ꕔ�s����ȕ���������\��������܂��B$c"
            rv clrgra,c,e
            }

            $answer = Read-Host "�A�b�v�f�[�g���܂����H���A�A�b�v�f�[�g���C���X�g�[������Ƌ����I�ɉp��łւƕύX����܂��B (y or n)"
            if ($answer -eq "y") {
                $downloadFolder = Join-Path $env:USERPROFILE "Downloads"
                $downloadFile = Join-Path $downloadFolder $file.name
                Invoke-WebRequest -Uri $file.url -OutFile $downloadFile -Headers @{'Accept'='application/octet-stream'}
                $newBatName = "Cursor.Changer.$fileVersion.bat"
                Move-Item $downloadFile (Join-Path (Split-Path $batName) ("$newBatName")) -Force
                Remove-Item "Cursor.Changer.$batVersion.bat" -Force

                Write-Host "�A�b�v�f�[�g�͊������܂����B"
                Start-Sleep 2

                break
            }
            else {
                Write-Host "�A�b�v�f�[�g���L�����Z�����܂����B"
                Start-Sleep 2
                break
            }
        }
        elseif (-not $isFileBeta -and $isBatBeta) {
            # The file version is not beta and the bat version is beta, so the bat version is newer
            Write-Host "[ERROR] ���Ȃ��̃o�[�W����(`"$($batVersion)`")�́A�A�b�v�f�[�g�t�@�C��������s (`"$($fileVersion)`")���Ă��܂��I(���炭�A���Ȃ��̓J�[�\���ւ��̃o�[�W�������̈ӂɕς����̂ł��傤...)" -ForegroundColor Red 
            Start-Sleep 2
            break
        }
    }
}
    if ($i -eq [Math]::Max($fileverArray.Length, $batverArray.Length)) {
        Write-Host "���łɍŐV�o�[�W�����ł��I (`"$($batVersion)`") �A�b�v�f�[�g�͕K�v����܂���B"
        Start-Sleep 2
    }
}
}

function OOBEMusic {
$webClient = New-Object System.Net.WebClient
Write-Host "���y���_�E�����[�h��..."
try{$data = $webClient.DownloadData("https://raw.githubusercontent.com/tamago1908/Cursor-Changer.bat/main/resource/Windows_XP_OOBE_for_Cursor_Changer.wav")
}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g���~�b�g�ɓ��B���܂����I���ꂪ�Ӗ�����̂͗v����ɂ��Ȃ��͉��y���Đ����߂����Ƃ������Ƃł��B���y�Ȃ��ő��s���邩�A�ꎞ�Ԃقǌ�ɂ�����x��蒼���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};write-host "enter something to exit...";$host.UI.RawUI.ReadKey();exit}
Write-Host "�_�E�����[�h�����I    ���Ԃ�....."
# maybe useable    Start-Process -FilePath "powershell" -ArgumentList "-Command","Add-Type -AssemblyName System.Windows.Forms;`$result = [System.Windows.Forms.MessageBox]::Show('Download Complete. have fun.', '', 'OK', 'Exclamation');exit `$result;"

Add-Type -TypeDefinition @"
using System;
using System.IO;
using System.Net;

namespace ConsoleApp
{
    public class Program
    {
        public static void PlayAudioFromBytes(byte[] data)
        {
            MemoryStream stream = new MemoryStream();
            stream.Write(data, 0, data.Length);
            stream.Position = 0; 
            System.Media.SoundPlayer player = new System.Media.SoundPlayer(stream);
            player.PlayLooping(); 
        }
    }
}
"@
[ConsoleApp.Program]::PlayAudioFromBytes($data)
cls
Write-Host "���y���Đ����Ă��܂�...(���ݗ���Ă���Windows XP OOBE BGM)`n���y���~�߂����ꍇ�A����powershell�E�B���h�E���I�����Ă��������B"
while ($true) {
$cmd = Get-Process -Name cmd -ErrorAction SilentlyContinue
if (-not $cmd) {
    $player.Stop()
    exit
     }
}
}

    if ($env:batbootpowershell -eq "Fullupdater") {Fullupdater}
if ($env:batbootpowershell -eq "Disablemax") {Disablemax}
if ($env:batbootpowershell -eq "OOBEMusic") {OOBEMusic}
if ($env:batbootpowershell -eq "Updater") {Updater}
if ($env:batbootpowershell -eq "Doupdate") {Doupdate} elseif ($env:checkupdatetoggle -eq "true") {Disablemax; Updater} elseif ($env:checkupdatetoggle -eq "false") {Disablemax}

:batbootpowershellendcode
:: EndID1908
call :getLineNumber endLine EndID1908 0
if {%exitbuttondisabled%}=={false} (set exitbuttondisabled=true&goto batbootpowershellcodestart) else (goto :batbootdisabledexitbutton)

:GetLineNumber <resultVar> <uniqueID> [LineOffset]
SETLOCAL
for /F "usebackq tokens=1 delims=:" %%L IN (`findstr /N "%~2" "%~f0"`) DO set /a lineNr=%~3 + %%L
(
ENDLOCAL
 set "%~1=%LineNr%"
 exit /b
)

rem �{����
:batbootdisabledexitbutton
set startline=&set endline=&set exitbuttondisabled=
if {%bootbatnow%}=={no} (exit /b)
if "%batbootpowershell%"=="OOBEMusic" (exit /b)
rem get updater variable
if "%checkupdatetoggle%"=="true" (goto batbootpowershell_get_updater_variable) else (goto batbootpowershell_get_updater_variable_end)

:batbootpowershell_get_updater_variable
rem powershell�̖߂�l��batch�̕ϐ��ɕϊ�
setlocal enabledelayedexpansion
if "%updateinfo%"=="null" (goto batbootpowershell_get_updater_variable_end)
for /f "tokens=1-4 delims=," %%a in ("%updateinfo%") do (
  for /f "tokens=1-2 delims==" %%x in ("%%a") do set "%%x=%%y"&for /f "tokens=1-2 delims==" %%x in ("%%b") do set "%%x=%%y"&for /f "tokens=1-2 delims==" %%x in ("%%c") do set "%%x=%%y"&for /f "tokens=1-2 delims==" %%x in ("%%d") do set "%%x=%%y"
)
setlocal disabledelayedexpansion
set updatemyversion=%batver:��=.b% & rem this is so idiot. guess powershell should have used this method to handle the bat version, but it is what it is. However, it is something that needs to be fixed, so I may fix it soon, maybe.
set batverforpowershell=
:batbootpowershell_get_updater_variable_end

set updateinfo=
set checkupdatetoggle=

:batbootpowershell_get_updater_variable_end
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Batbootpowershell is Ended...)
cd /d %HOMEDRIVE%%HOMEPATH%

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

rem ver1.13
rem �o�[�W���� 1.13��1 �ŏ���1.13�̃x�[�^�ŁB���̃o�[�W�����ł́A�p��łł̉p��̏C���ƁA�E�B���h�E�Y�̃o�[�W�������m�F����@�\�������ύX����A�܂��p��łł�easteregg��������ꂽ�B�܂��A�o�O���C�����ꂽ�B�Ƃ肠�����A��ɉp��łł̃A�b�v�f�[�g�ɂȂ�B
rem �o�[�W���� 1.13��2
rem 1.13�̃x�[�^��1�B���̃o�[�W�����ł͎�ɓ�̐V�@�\������B����́A�I�����j���[�ƐV�����o�[�W�����\��UI���B����ɔ����A���܂ł�reload�����Ȃ��ƍċN���ł��Ȃ������̂��A���̂܂܃��j���[����ċN���ł���悤�ɂȂ����B�܂��A���ȃA�b�v�f�[�g�@�\���V�����Ȃ����o�[�W�����\����������A�N�Z�X�ł���悤�ɂȂ�\��B�܂��A���ɂ��o�O�C���Ȃǂ��s��ꂽ�B


rem ����̗\�� (roadmap)

rem �R�[�h�̏��Ԃ�ύX���A�ǂ݂₷������
rem �������Ȃ����I���܂��͉�������ɕύX
rem �ݒ��UI��啝�ɕς��āA�J�e�S���[�ɕ�����B���̃J�e�S���[�̒��ɐݒ������
rem �Z�[�u�֌W�̃t�@�C����ۑ�����f�B���N�g����ݒ�ŕύX�ł���悤�ɂ���B
rem �J�[�\���ւ��ݒ�.txt�Ɋ܂܂�Ă���ݒ肪�S���������Ă���ꍇ�́A�J�[�\���ւ��ݒ�.txt���쐬���Ȃ����@�\�B
rem �ݒ�̏������i�A���C���X�g�[�����j���[���������Ƃ��̍��ڂɂ���j
rem 1.12����

rem ver 1.13 23�N�H����
rem ����N�����̏����ݒ�̒ǉ� (�ݒ�����[�U�[�C�ӂŃZ�b�g�A�e�[�}�Ȃǂ�)
rem ���g�p�R�[�h�܂��͖��ʂȂ��̂��폜���āA���ǐ����グ��B
rem 2048�̎���
rem �P�̃A�b�v�f�[�g�@�\
rem �I�����j���[ (Windows XP��)
rem �A���C���X�g�[�����j���[������������

rem ver 1.14 
rem ���h��ȃA�j���[�V������setx��p�����N���񐔂̃J�E���g�ƁA���ǂ��d��

rem ver 1.15 
rem �F�ł킩��₷���I�`���[�g���A���Ƃ��i������dogcheck (sam�`�F�b�N�̂悤�ȋ@�\������)

rem ver 1.16 
rem ���ǂ�����N�����̃��b�Z�[�W�Ɣh���UI

rem ver 1.17 
rem ��葽���̐ݒ�Ƃ��ǂ����肵���v���O����

rem ver 1.18 
rem �J�X�^���J�[�\���@�\

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

:CursorChangerOOBE
if not "%bootbatnow%"=="true" (
if "%linuxboot%"=="true" (
    echo [%linuxishclr%info%linuxishclr2%] Bootloader ended
echo.
timeout /t 1 /nobreak >nul
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Mobas_Loader Calling...)
timeout /t 2 /nobreak >nul
)
)
rem Detects whether this is the first start
if exist �J�[�\���ւ��ݒ�.txt set firststartbat=no&set bootbatnow=yes&goto :batstart
if not exist �J�[�\���ւ��ݒ�.txt (
if exist ����J�[�\��.txt goto settingloads
)

:CursorChangerOOBEdev
rem Now, it's the beginning of a fucking trashy long goofy ahh idiot code.
title �J�[�\���ւ� %batver% Setup
if {%wmodetoggle%}=={false} (set clr=[3m[97m&set clrhigh=[7m&set clrhighend=[0m&set clrwhi=[48;5;250m[30m&set clr2=[0m)
if not defined {%clrgra%} (set clrgra=[90m)
if {%wmodetoggle%}=={false} (set moveline=[22;0H) else (set moveline=[22;0H)
if not defined invisiblecursor (echo [?25l&set invisiblecursor=true)
mode con: cols=80 lines=22
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo.
echo     %clr% �Z�b�g�A�b�v�ւ悤�����B%clr2%
echo.
echo     �J�[�\���ւ��̏���N���ƃZ�b�g�A�b�v�ւ悤�����B
echo     ���̃Z�b�g�A�b�v�̓J�[�\���ւ������g����
echo     �R���s���[�^�[�Ŏ��s�ł����Ԃɂ��邽�߂̃Z�b�g�A�b�v�ł��B
echo.
echo.
echo          ^�E     �������Z�b�g�A�b�v����ꍇ�́AE�L�[�������Ă��������B
echo.
echo          ^�E     �Z�b�g�A�b�v���X�L�b�v���č��������p����ꍇ�́A
echo                 S�L�[�������Ă��������B(�ݒ�͂��ׂĊ���l�ɐݒ肳��܂��B)
echo.
echo          ^�E     �Z�b�g�A�b�v�������ɏI������ꍇ�́AB�L�[�������Ă��������B
echo.
echo.
echo.
echo.
set /p nothing=%clrwhi%     E=���s     S=�X�L�b�v     B=�ޏo                                           %moveline%%clrwhi% <nul& choice /c ESB /n >nul
if %ErrorLevel%==1 goto OOBEmain
if %ErrorLevel%==2 goto OOBESkip
if %ErrorLevel%==3 call :OOBEmainblank&timeout /t 1 /nobreak >nul&exit

:OOBESkip
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo.
echo.
echo          �Z�b�g�A�b�v���X�L�b�v
echo.
echo          �����Z�b�g�A�b�v���X�L�b�v����ƁA���ׂĂ̐ݒ�̒l��
echo          �e�[�}�͊���l�ɐݒ肳��܂��B
echo          �܂��A�d�v�ȋK�莖���⒍�ӁA�Ɛӎ�����ǂݓ������ƂɂȂ�܂��B
echo          �Ɛӎ����Ɋւ��ẮA�X�L�b�v���Ă����ӂ������ƂɂȂ�܂��B
echo.
echo          ����ł���낵���ł����H
echo.
echo          (Y=�͂��B�Z�b�g�A�b�v�Ƃ��ʓ|�������B)
echo          (N=�������B�Z�b�g�A�b�v�������ł��I)
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�X�L�b�v     N,B=�X�L�b�v���Ȃ�                                          %moveline%%clrwhi% <nul& choice /c YNB /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEsetting1toggle=true&set OOBEsetting2toggle=false&set OOBEsetting3toggle=false&set OOBEsetting4toggle=true&set OOBEsetting5toggle=true&goto OOBEmain8
if %ErrorLevel%==2 color 07&cls&goto CursorChangerOOBE
if %ErrorLevel%==3 color 07&cls&goto CursorChangerOOBE

:OOBEmain
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo.
echo.
echo          Windows XP��OOBE BGM�𕷂��Ȃ���Z�b�g�A�b�v���܂����H
echo.
echo          ���������Ȃ�AY�L�[�������Ă��������B
echo          ���������Ȃ��Ȃ�AN�L�[�������Ă��������B
echo.
echo          ���̋@�\�ɂ̓C���^�[�l�b�g�ڑ����K�v�ł��B
echo          �C���^�[�l�b�g�ڑ����Ȃ��ꍇ�ɂ�N�L�[�������Ă��������B
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s     N=������                                                        %moveline%%clrwhi% <nul& choice /c YN /n >nul
if %ErrorLevel%==1 goto OOBEmainmusic
if %ErrorLevel%==2 call :OOBEmainblank&timeout /t 1 /nobreak >nul&goto OOBEmain2


:OOBEmainmusic
call :OOBEmainmusicmessage
set batbootpowershell=OOBEMusic&call :batbootpowershell
goto :OOBEmainmusicmessage2

:OOBEmainmusicmessage
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo.
echo.
echo          ���y�̃_�����[�h���������Ă��܂�...���΂炭���҂����������B
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
set /p nothing=%clr2%%clrwhi%                                                                                %moveline%%clrwhi% <nul
exit /b

:OOBEmainblank
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
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
set /p nothing=%clr2%%clrwhi%                                                                                %moveline%%clrwhi% <nul
exit /b


:OOBEmainmusicmessage2
set batchpath=
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo.
echo.
echo          �����B
echo.
echo          ���y���Đ������܂łɑ������Ԃ�������ꍇ������܂��B
echo          ���y���~�������Ƃ��́A�ŏ�������Ă���powershell���~���Ă��������B
echo.
echo          ���y�����܂ł����Ă��Đ�����Ȃ��ꍇ�A�ȉ��̎������m�F���Ă��������B
echo.
echo          �C���^�[�l�b�g�ڑ������邩�ǂ���
echo          �A���`�E�B���X�\�t�g���m�F����
echo          Github���L�����ǂ����m�F����
echo          Github��API���[�g�����ɓ��B���Ă��Ȃ����ǂ���
echo          Powershell�����p�\���ǂ���
echo.
echo          (5�b��ɃZ�b�g�A�b�v�𑱍s���܂�)
echo.
echo.
set /p nothing=%clr2%%clrwhi%                                                                                %moveline%%clrwhi% <nul
timeout /t 5 /nobreak >nul
call :OOBEmainblank
timeout /t 1 /nobreak >nul
goto :OOBEmain2


:OOBEmain2
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 1/5 (���ӎ����̊m�F)
echo.
echo.
echo          �J�[�\���ւ��͓�̃t�@�C���𐶐����܂��B
echo          �J�[�\���ւ��ݒ�.txt�Ə���J�[�\��.txt�̓�ł��B
echo.
echo          �J�[�\���ւ��ݒ�.txt�̓J�[�\���ւ��̐ݒ��ۑ����Ă��܂��B
echo          ���̃t�@�C���͔��ɏd�v�ȃt�@�C���ł��B
echo.
echo          ����J�[�\��.txt�̓J�[�\����ύX�������ǂ����̔���ɗ��p���Ă��܂��B
echo          ������܂��d�v�ȃt�@�C���ł��B
echo.
echo          �������[�U�[(%USERNAME%�A���Ȃ��ł�)�������̃t�@�C�����폜����ƁA
echo          ���̃J�[�\���ւ��͐���ɓ��삵�Ȃ��Ȃ�ꍇ������܂��B
echo          �ł�����A�����̃t�@�C�����΂ɍ폜���Ȃ��ł��������B��΂ɁB
echo.
echo          (Y �L�[�ő��s)
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s                                                                  1/3%moveline%%clrwhi% <nul&choice /c Y /n >nul
if %ErrorLevel%==1 goto OOBEmain3


:OOBEmain3
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 1/5 (���ӎ����̊m�F)
echo.
echo.
echo          ���̃J�[�\���ւ��̊J���҂ł���tamago_1908�́A
echo          ���̃J�[�\���ւ��ɂ���Ĕ������������Ȃ鑹���E���Q�ɑ΂��āA
echo          �����Ȃ�ӔC�𕉂�Ȃ����̂Ƃ��܂��B
echo.
echo          ����������΁A���̃J�[�\���ւ������s�������Ƃɂ��ӔC�ɂ��ẮA
echo          ���ׂăJ�[�\���ւ������s�����{�l�ɋA�����܂��B
echo.
echo          �������Atamago_1908�͂��̃J�[�\���ւ��ɑ��݂���o�O����
echo          �ɑ΂���Ή���C���A�T�|�[�g�Ȃǂ͍s�����ƂƂ��܂��B
echo          �T�|�[�g���Ԃɂ��Ă�github���{�����Ă������� (�p��)
echo          �܂��A�ȏ�̖Ɛӎ����͂��ׂăJ�[�\���ւ���Github�ɂ���AReadme
echo          �Ɠ����Ӗ��������܂��B�K�v�ɉ����Ċm�F���Ă��������B
echo.
echo          (Y �L�[�ő��s)
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s                                                                  2/3%moveline%%clrwhi% <nul&choice /c Y /n >nul
if %ErrorLevel%==1 goto OOBEmain4


:OOBEmain4
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 1/5 (���ӎ����̊m�F)
echo.
echo.
echo          ���̃J�[�\���ւ���Windows 10 1511�ȍ~�ł̓���𐄏����Ă��܂��B
echo          ����ȉ��̃o�[�W������Windows�ł̓���̓T�|�[�g���Ă��܂���B
echo          �܂��APowershell 5.1�ȍ~�̃o�[�W��������������Ă��܂��B
echo.
echo          �C���^�[�l�b�g�ڑ��͕K�{�ł͂���܂��񂪁A�������ق����ǂ��ł��B
echo          (�A�b�v�f�[�g�̃`�F�b�N���ɗ��p���܂�)
echo.
echo          �܂��A���g����PC�̐��\�͂ł��邾�����������ǂ��ł��B
echo          ���낵������CPU��̂������CPU�ł́A�A�j���[�V����
echo          �⏈���ɉe�����y�ڂ��\��������܂��B
echo.
echo          (Y �L�[�ő��s)
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s                                                                  3/3%moveline%%clrwhi% <nul&choice /c Y /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul


:OOBEmain5
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (�J�[�\���ւ��̊m�F)
echo.
echo.
echo          ���݁A�J�[�\���ւ��͓��{��ł��C���X�g�[������Ă��܂��B
echo          ����ł����ł����H
echo.
echo.
echo          (Y=�͂��B�������B�����܂ł��Ȃ��B)
echo          (N=�������B�ɂق񂲂��킩��܂���)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain6
if %ErrorLevel%==2 goto OOBEmain5ifno


:OOBEmain5ifno
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (�J�[�\���ւ��̊m�F)
echo.
echo.
echo          �\���󂠂�܂��񂪁A���݃J�[�\���ւ��͉p��Ɠ��{��
echo          �ȊO�̌�����T�|�[�g���Ă��܂���B
echo.
echo          �����J�[�\���ւ�����L�̓�ȊO�̌���ŗ��p�������ꍇ�ɂ́A
echo          �A�b�v�f�[�g��҂��A������߂�K�v������܂��B
echo          ����ł��Ȃ��Z�b�g�A�b�v�𑱂��܂����H
echo.
echo.
echo          (Y=�͂��B�Z�b�g�A�b�v�𑱂��܂��B)
echo          (N=�������B����ς�Z�b�g�A�b�v����߂܂��B)
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain6
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&exit



:OOBEmain6
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          �J�[�\���ւ��͎��R�Ƀ_�[�N�e�[�}���A���C�g�e�[�}
echo          ��I�����A�ݒ肷�邱�Ƃ��ł��܂��B
echo          �I�����܂����H
echo.
echo          (�I�����Ȃ������ꍇ�A�f�t�H���g�̃_�[�N�e�[�}���K�p����܂��B)
echo.
echo.
echo          (Y=�͂��B�e�[�}��I���������ł�)
echo          (N=�������B�e�[�}�Ȃ񂼒m�邩�I)
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme1
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto OOBEmain7


:OOBEmain6theme1
if {%OOBEundiscard%}=={true} (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto OOBEmain7)
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          O============O    O============O
echo          I�_�[�N�e�[�}I    I���C�g�e�[�}I
echo          O============O    O============O
echo.
echo.
echo    ^�E   �����I������Ă��܂���BA,D�܂���1,2�őI�����Ă��������B
echo.
echo          (A,D�܂���1,2�őI�����AY�܂���E�Ō��肵�܂��B)
echo          (B �L�[�Ńe�[�}�̑I����j�����܂��B)
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     A,1=���ɓ�����     D,2=�E�ɓ�����     B=�ޏo                               %moveline%%clrwhi% <nul&choice /c AD12B /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme2
if %ErrorLevel%==2 goto OOBEmain6theme2
if %ErrorLevel%==3 goto OOBEmain6theme2
if %ErrorLevel%==4 goto OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto OOBEmain6theme1


:OOBEmain6theme2
if {%OOBEundiscard%}=={true} (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto OOBEmain7)
if defined clrhigh (set clrhigh=[7m&set clrhighend=[0m)
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          O============O    O============O
echo          I%clrhigh%�_�[�N�e�[�}%clrhighend%I    I���C�g�e�[�}I
echo          O============O    O============O
echo.
echo.
echo     ^�E   �ł������I�ŁA���M�������̃e�[�}�B
echo     ^�E   �����ăJ�[�\���ւ��ɍł��œK������Ă���B
echo     ^�E   ��{�I�ɂ͂��ꂪ��������Ă���B
echo.
echo          (A,D�܂���1,2�őI�����AY�܂���E�Ō��肵�܂��B)
echo          (B �L�[�Ńe�[�}�̑I����j�����܂��B)
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     A,1=���ɓ�����     D,2=�E�ɓ�����     Y,E=����     B=�ޏo                  %moveline%%clrwhi% <nul&choice /c AD12BYE /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme2
if %ErrorLevel%==2 goto OOBEmain6theme3
if %ErrorLevel%==3 goto OOBEmain6theme2
if %ErrorLevel%==4 goto OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto OOBEmain6theme2
if %ErrorLevel%==6 goto OOBEmain6theme2confirm
if %ErrorLevel%==7 goto OOBEmain6theme2confirm


:OOBEmain6theme3
if {%OOBEundiscard%}=={true} (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto OOBEmain7)
if defined clrhigh (set clrhigh=[100m[97m&set clrhighend=[0m[107m[30m)
color f0
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          O============O    O============O
echo          I�_�[�N�e�[�}I    I%clrhigh%���C�g�e�[�}%clrhighend%I
echo          O============O    O============O
echo.
echo.
echo     ^�E   ���̃e�[�}���Y�킩�_�X�������͋C������B
echo     ^�E   �_�[�N�e�[�}��舳�|�I�ɖ��邭�\������A�n�C�R���g���X�g�B
echo     ^�E   �����ꕔ�̋@�\�����C�g�e�[�}�ɑΉ����Ă��Ȃ��ꍇ������B
echo     ^�E   ��薾�邭�������l�ɂ�������
echo.
echo          (A,D�܂���1,2�őI�����AY�܂���E�Ō��肵�܂��B)
echo          (B �L�[�Ńe�[�}�̑I����j�����܂��B)
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     A,1=���ɓ�����     D,2=�E�ɓ�����     Y,E=���s     B=�ޏo                  %moveline%%clrwhi% <nul&choice /c AD12BYE /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme2
if %ErrorLevel%==2 goto OOBEmain6theme3
if %ErrorLevel%==3 goto OOBEmain6theme2
if %ErrorLevel%==4 goto OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto OOBEmain6theme3
if %ErrorLevel%==6 goto OOBEmain6theme3confirm
if %ErrorLevel%==7 goto OOBEmain6theme3confirm


:OOBEmain6theme2confirm
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          O============O    O============O
echo          I%clrhigh%�_�[�N�e�[�}%clrhighend%I    I���C�g�e�[�}I
echo          O============O    O============O
echo.
echo     ^�E   ���̃e�[�}�Ŗ{���ɂ�낵���ł����H
echo           (�q���g : �e�[�}�͌ォ��ݒ�ŕύX�ł��܂�)
echo.
echo.
echo          (Y=�͂��I���̃e�[�}���C�ɓ���܂���)
echo          (N=��Ȃ킯���邩���{�P)
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y,E=���s     B,N=�I��                                                      %moveline%%clrwhi% <nul&choice /c BNYE /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme2
if %ErrorLevel%==2 goto OOBEmain6theme2
if %ErrorLevel%==3 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto OOBEmain7
if %ErrorLevel%==4 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto OOBEmain7



:OOBEmain6theme3confirm
color f0
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          O============O    O============O
echo          I�_�[�N�e�[�}I    I%clrhigh%���C�g�e�[�}%clrhighend%I
echo          O============O    O============O
echo.
echo     ^�E   �{���ɂ��̃e�[�}�ł�낵���ł����H
echo           (�q���g : �e�[�}�͌ォ��ݒ�ŕύX�ł��܂�)
echo.
echo.
echo          (Y=�͂��I���̃e�[�}���C�ɓ���܂���)
echo          (N=��Ȃ킯���邩���{�P)
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y,E=���s     B,N=�I��                                                      %moveline%%clrwhi% <nul&choice /c BNYE /n >nul
if %ErrorLevel%==1 goto OOBEmain6theme3
if %ErrorLevel%==2 goto OOBEmain6theme3
if %ErrorLevel%==3 set oobetheme=white&call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain7
if %ErrorLevel%==4 set oobetheme=white&call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain7


:OOBEmain6themeifback
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 3/5 (�J�[�\���ւ��̃e�[�}�̐ݒ�)
echo.
echo.
echo          �{���Ƀe�[�}�̑I����j�����܂����H
echo          (�j�������ꍇ�A����l�̃e�[�}�ɐݒ肳��܂��B)
echo.
echo.
echo          (Y=�͂��B�j�����܂��B)
echo          (N=�������B�e�[�}��I�����܂�)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�͂�     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 set OOBEundiscard=true&exit /b
if %ErrorLevel%==2 exit /b

:OOBEmain7
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          �J�[�\���ւ��͐ݒ���J�X�^�}�C�Y�ł��܂��B
echo          �J�X�^�}�C�Y���܂����H
echo.
echo          (���Ȃ������ꍇ�A�ݒ�͊���l�ɐݒ肳��܂��B)
echo.
echo.
echo          (Y=�͂��I)
echo          (N=�������B�߂�ǂ����������ł��B)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain7CustomizeSettings
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain8

:OOBEmain7CustomizeSettingsdiscard
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          �{���ɐݒ�̃J�X�^�}�C�Y��j�����܂����H
echo.
echo          (�j�������ꍇ�A���ׂĂ̐ݒ�͊���l�ɐݒ肳��܂�)
echo.
echo          (Y=�͂��I�j�����܂��I�I)
echo          (N=�������I�J�X�^�}�C�Y�������ł��I)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�͂�     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set OOBEsetting1toggle=true&set OOBEsetting2toggle=false&set OOBEsetting3toggle=false&set OOBEsetting4toggle=true&set OOBEsetting5toggle=true&goto OOBEmain8
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings1

:OOBEmain7CustomizeSettings
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
set OOBEsetting1toggle=false&set OOBEsetting2toggle=false&set OOBEsetting3toggle=false&set OOBEsetting4toggle=false&set OOBEsetting5toggle=false
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I 1 �ύX��̍ċN���̊m�F         I
echo          O================================O   �����I������Ă��܂���B
echo          I 2 �N�����̃A�h�~��             I
echo          O================================O   W �܂��� S�A1����5�őI�����A
echo          I 3 �N�����ɍX�V�m�F             I   Y �Ő؂�ւ��A N �܂��� B��
echo          O================================O   �j�����܂��B
echo          I 4 Enter�̒����������m����@�\  I   OK �Ɉړ������̂��AY
echo          O================================O   �Ŋm�肵�܂��B
echo          I 5 �N�����̃A�j���[�V����       I   
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettings1
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting1toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting1toggle%"=="false" (
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsettingclr% 1 �ύX��̍ċN���̊m�F         %OOBEsettingclr2%I
echo          O================================O   �J�[�\���ւ��ł̃J�[�\����
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I   �ύX���ɁA�ċN����
echo          O================================O   �m�F����@�\�̐؂�ւ��ł��B
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   �����I���Ȃ�A�ύX��
echo          O================================O   �ɍċN�����m�F����܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I
echo          O================================O   %clrgra%�L���ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 1&goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettings2
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting2toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting2toggle%"=="false" (
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �ύX��̍ċN���̊m�F         %OOBEsetting1clr2%I
echo          O================================O   �J�[�\���ւ��̋N�����ɊǗ���
echo          I%OOBEsettingclr% 2 �N�����̃A�h�~��             %OOBEsettingclr2%I   �����̎擾�����݂܂��B��{�I��
echo          O================================O   �J�[�\���̕ύX���ɖ�肪��������
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   �ۂɗL���ɂ���ׂ��ł��B�L���ɂ���
echo          O================================O   �ƁA�N���������Ȃ�ꍇ������܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I   
echo          O================================O   %clrgra%�����ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 2&goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettings3
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting3toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting3toggle%"=="false" (
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �ύX��̍ċN���̊m�F         %OOBEsetting1clr2%I
echo          O================================O   �J�[�\���ւ��̋N�����ɃA�b�v�f�[�g
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I   �̊m�F���s�����ǂ�����
echo          O================================O   �؂�ւ����܂��B�A�b�v�f�[�g
echo          I%OOBEsettingclr% 3 �N�����ɍX�V�m�F             %OOBEsettingclr2%I   �����p�\�ȍۂɂ́A
echo          O================================O   ���̂܂ܓK�p���邱�Ƃ��ł��܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I
echo          O================================O   %clrgra%�����ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 3&goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettings4
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting4toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting4toggle%"=="false" (
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �ύX��̍ċN���̊m�F         %OOBEsetting1clr2%I
echo          O================================O   �J�[�\���ւ��̃��C�����j���[�ŁA
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I   Enter������������Ă��邩�ǂ���
echo          O================================O   �����m����@�\��؂�ւ����܂��B
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   ���Ȃ݂ɁA���̋@�\�ɂ͈Ӗ���
echo          O================================O   �Ȃ��\���������ł��B
echo          I%OOBEsettingclr% 4 Enter�̒����������m����@�\  %OOBEsettingclr2%I
echo          O================================O   %clrgra%�L���ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 4&goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettings5
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting5toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting5toggle%"=="false" (
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �ύX��̍ċN���̊m�F         %OOBEsetting1clr2%I
echo          O================================O   �J�[�\���ւ��̋N�����̓ǂݍ���
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I   ���I�������ۂ̋N���A�j���[�V����
echo          O================================O   ��؂�ւ���܂��B��������
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   ���[�h���I������瑦����
echo          O================================O   ���j���[�ɑJ�ڂ��܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I
echo          O================================O   %clrgra%�L���ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsettingclr% 5 �N�����̃A�j���[�V����       %OOBEsettingclr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettingsOK
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 5&goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEmain7CustomizeSettingsOK
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �ύX��̍ċN���̊m�F         %OOBEsetting1clr2%I
echo          O================================O   �ݒ�̊m�F
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I
echo          O================================O   ���Ȃ݂ɁA�Œ�ł���̐ݒ��
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   �L���ɂ���̂𐄏����Ă��܂��B
echo          O================================O   ���ׂĂ̐ݒ�͌ォ��ύX�ł��܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I   
echo          O================================O   %clrgra%(�ݒ胁�j���[�ŕύX�\)%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I%OOBEsettingclr%  OK  %OOBEsettingclr2%I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB /n >nul
if {%oobetheme%}=={white} (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if {%oobetheme%}=={dark} (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettingsOK
if %ErrorLevel%==3 goto OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 goto OOBEmain7CustomizeSettingsOKconfirm
if %ErrorLevel%==9 goto OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto OOBEmain7CustomizeSettingsdiscard

:OOBEsettingstoggle
rem wtf?? goofy ahh if statements. well uh i mean, i dont know how to use "for" commands. so... u know, it cant be helped. fuckkkk
if "%1"=="1" (
    if "%OOBEsetting1toggle%"=="false" (
    if {%oobetheme%}=={white} (set OOBEsetting1clr=[100m[97m&set OOBEsetting1clr2=[0m[107m[30m)
    if {%oobetheme%}=={dark} (set OOBEsetting1clr=[7m&set OOBEsetting1clr2=[0m)
    set OOBEsetting1toggle=true
    ) else if "%OOBEsetting1toggle%"=="true" (
    if {%oobetheme%}=={white} (set OOBEsetting1clr=&set OOBEsetting1clr2=)
    if {%oobetheme%}=={dark} (set OOBEsetting1clr=&set OOBEsetting1clr2=)
        set OOBEsetting1toggle=false
    ) else set OOBEsetting1toggle=true
)
if "%1"=="2" (
    if "%OOBEsetting2toggle%"=="false" (
    if {%oobetheme%}=={white} (set OOBEsetting2clr=[100m[97m&set OOBEsetting2clr2=[0m[107m[30m)
    if {%oobetheme%}=={dark} (set OOBEsetting2clr=[7m&set OOBEsetting2clr2=[0m)
    set OOBEsetting2toggle=true
    ) else if "%OOBEsetting2toggle%"=="true" (
    if {%oobetheme%}=={white} (set OOBEsetting2clr=&set OOBEsetting2clr2=)
    if {%oobetheme%}=={dark} (set OOBEsetting2clr=&set OOBEsetting2clr2=)
        set OOBEsetting2toggle=false
    ) else set OOBEsetting2toggle=true
)
if "%1"=="3" (
    if "%OOBEsetting3toggle%"=="false" (
    if {%oobetheme%}=={white} (set OOBEsetting3clr=[100m[97m&set OOBEsetting3clr2=[0m[107m[30m)
    if {%oobetheme%}=={dark} (set OOBEsetting3clr=[7m&set OOBEsetting3clr2=[0m)
    set OOBEsetting3toggle=true
    ) else if "%OOBEsetting3toggle%"=="true" (
    if {%oobetheme%}=={white} (set OOBEsetting3clr=&set OOBEsetting3clr2=)
    if {%oobetheme%}=={dark} (set OOBEsetting3clr=&set OOBEsetting3clr2=)
        set OOBEsetting3toggle=false
    ) else set OOBEsetting3toggle=true
)
if "%1"=="4" (
    if "%OOBEsetting4toggle%"=="false" (
    if {%oobetheme%}=={white} (set OOBEsetting4clr=[100m[97m&set OOBEsetting4clr2=[0m[107m[30m)
    if {%oobetheme%}=={dark} (set OOBEsetting4clr=[7m&set OOBEsetting4clr2=[0m)
    set OOBEsetting4toggle=true
    ) else if "%OOBEsetting4toggle%"=="true" (
    if {%oobetheme%}=={white} (set OOBEsetting4clr=&set OOBEsetting4clr2=)
    if {%oobetheme%}=={dark} (set OOBEsetting4clr=&set OOBEsetting4clr2=)
        set OOBEsetting4toggle=false
    ) else set OOBEsetting4toggle=true
)
if "%1"=="5" (
    if "%OOBEsetting5toggle%"=="false" (
    if {%oobetheme%}=={white} (set OOBEsetting5clr=[100m[97m&set OOBEsetting5clr2=[0m[107m[30m)
    if {%oobetheme%}=={dark} (set OOBEsetting5clr=[7m&set OOBEsetting5clr2=[0m)
    set OOBEsetting5toggle=true
    ) else if "%OOBEsetting5toggle%"=="true" (
    if {%oobetheme%}=={white} (set OOBEsetting5clr=&set OOBEsetting5clr2=)
    if {%oobetheme%}=={dark} (set OOBEsetting5clr=&set OOBEsetting5clr2=)
        set OOBEsetting5toggle=false
    ) else set OOBEsetting5toggle=true
)
exit /b

:OOBEmain7CustomizeSettingsOKconfirm
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          �ݒ�̃J�X�^�}�C�Y :
echo.
echo          1 �ύX��̍ċN���̊m�F        : %OOBEsetting1toggle% %clrgra%(true������)%OOBEsettingclr2%
echo          2 �N�����̃A�h�~��            : %OOBEsetting2toggle% %clrgra%(false������)%OOBEsettingclr2%
echo          3 �N�����ɍX�V�m�F            : %OOBEsetting3toggle% %clrgra%(false������)%OOBEsettingclr2%
echo          4 Enter�̒����������m����@�\ : %OOBEsetting4toggle% %clrgra%(true������)%OOBEsettingclr2%
echo          5 �N�����̃A�j���[�V����      : %OOBEsetting5toggle% %clrgra%(true������)%OOBEsettingclr2%
echo.
echo          ���s����ƁA�����̐ݒ肪���ׂĐݒ�t�@�C���ɏ������܂�܂��B
echo          ��낵���ł����H %clrgra%(�ݒ�t�@�C���� "%HOMEDRIVE%%HOMEPATH%"�ɂ���܂��B) %OOBEsettingclr2%
echo.
echo          (Y=�͂�)
echo          (N=�������B����ς�ύX�������ł��B)
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�͂�     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto OOBEmain8
if %ErrorLevel%==2 goto OOBEmain7CustomizeSettings1

:OOBEmain8
if "%oobetheme%"=="white" (color f0) else (color 07)
rem setting written, well, wtf is this?? so many goofy ahh if statement. hell no NOT AGAIN!!!!!!!!!!!!
if not exist �J�[�\���ւ��ݒ�.txt (
    type nul > �J�[�\���ւ��ݒ�.txt
    echo nodogcheckfor1234567890qwertyuiop >> �J�[�\���ւ��ݒ�.txt 

    if "%OOBEsetting1toggle%"=="false" (
echo rebootokey=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEsetting1toggle%"=="true" (
        echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt)

    if "%OOBEsetting2toggle%"=="false" (
echo admin=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEsetting2toggle%"=="true" (
        echo admin=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo admin=false >> �J�[�\���ւ��ݒ�.txt)

    if "%OOBEsetting3toggle%"=="false" (
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEsetting3toggle%"=="true" (
        echo CheckUpdate=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt)

    if "%OOBEsetting4toggle%"=="false" (
echo hatenakeikoku=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEsetting4toggle%"=="true" (
        echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt)

    if "%OOBEsetting5toggle%"=="false" (
echo bootanimation=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEsetting5toggle%"=="true" (
        echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt)
    
    if "%OOBEtheme%"=="dark" (
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
    ) else if "%OOBEtheme%"=="white" (
        echo wmode=true >> �J�[�\���ւ��ݒ�.txt
    ) else (echo wmode=false >> �J�[�\���ւ��ݒ�.txt)

if not exist ����J�[�\��.txt (
type nul > ����J�[�\��.txt
echo nodogcheckforfastboot >> ����J�[�\��.txt
)
)
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 5/5 (�Z�b�g�A�b�v����)
echo.
echo.
echo          �Z�b�g�A�b�v�͊������܂����B
echo.
echo          �Ō�ɁA�J�[�\���ւ��ɑ΂��ĉ����G���[����A��Ă�����ꍇ�ɂ́A
echo          Github��issue���쐬���āA�J���҂ɕ񍐂��Ă��������B
echo.
echo          �J�[�\���ւ��͂܂��J���r���ŁA�������ł��B
echo          ���ꂾ���͗������Ă��������B
echo.
echo          (Y �܂��� E �L�[�Ń��j���[�Ɉړ�)
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y,E=�ޏo                                                                   %moveline%%clrwhi% <nul&choice /c YE /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&call :OOBEinitialization &set bootbatnow=yes&goto batstart
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&call :OOBEinitialization &set bootbatnow=yes&goto batstart

:OOBEinitialization
if "%oobetheme%"=="white" (color f0) else (color 07) & cls
if {%invisiblecursor%}=={true} (echo [?25h&set invisiblecursor=)
set clrgra=&set clrhigh=&set clrhighend=&set clrwhi=
set oobetheme=
set OOBEsetting1toggle=&set OOBEsetting2toggle=&set OOBEsetting3toggle=&set OOBEsetting4toggle=&set OOBEsetting5toggle=
set OOBEsetting1clr=&set OOBEsetting2clr=&set OOBEsetting3clr=&set OOBEsetting4clr=&set OOBEsetting5clr=
set OOBEsetting1clr2=&set OOBEsetting2clr2=&set OOBEsetting3clr2=&set OOBEsetting4clr2=&set OOBEsetting5clr2=
set OOBEsettingclr=&set OOBEsettingclr2=
2>nul taskkill /im powershell.exe >nul
exit /b




rem �Ǘ��Ҍ����̃v�����v�g�Ɋւ���ݒ�����m�A
:batstart
mode con: cols=75 lines=25
if {%settingbypass%}=={true} (goto hazimemenuskipboot)
cls
rem �Ǘ��Ҍ����ݒ�̌��m
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
if {%adminbypass%}=={true} (goto gotadmin)
if {%errorlevel%}=={0} (goto batstartadm)
if {%errorlevel%}=={1} (
set batloadprgs=0
call :MOBAS_Loader
goto batstarttest2
)

:batstarttest2
cls
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
set batloadprgs=0
call :MOBAS_Loader
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
powershell -NoProfile -Command "Start-Process '%batpath%' -Verb RunAs" >nul && exit
echo.
echo �Ǘ��Ҍ����̗v�������ۂ���܂����B
echo ^(�q���g: �Ǘ��Ҍ����̗v���͐ݒ�Ŗ����ɂł��܂��B^)
timeout /t 2 /nobreak >nul
:gotAdmin
cls
pushd "%CD%"
goto :hazime


:Cursor_Changer_REmenu
rem recovery menu for �J�[�\���ւ�, and recobery console
cls
mode con: cols=75 lines=25
color 07
set bootbatnow=no
if defined bootbatnow (set clr=[7m&set clr2=[0m) else (set clr=[7m&set clr2=[0m)
echo ���J�o���[���j���[��ǂݍ��ݒ�...
timeout /t 2 /nobreak >nul
title �J�[�\���ւ� ���J�o���[���j���[
cls
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%               
echo.
echo                                    �ċN��
echo                                 �ݒ�̏�����  
echo                             ���J�o���[�R���\�[�� 
echo                                     �ޏo    
echo.
echo                    1����4�A�܂���WS�őI���AE��Y�Ō��肵�܂��B
echo                       ���݁A�����I������Ă��܂���B
echo.
choice /c 1234WS /n 
if %ErrorLevel%==1 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==3 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==4 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==5 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==6 goto :Cursor_Changer_REmenu1

pause

:Cursor_Changer_REmenu1
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo                            %clr%        �ċN��        %clr2%
echo                                 �ݒ�̏�����    
echo                             ���J�o���[�R���\�[�� 
echo                                     �ޏo    
echo.
echo                    1����4�A�܂���WS�őI���AE��Y�Ō��肵�܂��B  
echo                          �J�[�\���ւ��̍ċN���B�ʏ��
echo                              ���ꂪ�������߂ł��B
echo.
choice /c 1234WSYE /n 
if %ErrorLevel%==1 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==3 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==4 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==5 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==6 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==7 set runningfromfulldebug=&set FromREConsole=&cd %~dp0 &start "" ^"%~n0%~x0^"&exit
if %ErrorLevel%==8 set runningfromfulldebug=&set FromREConsole=&cd %~dp0 &start "" ^"%~n0%~x0^"&exit
pause

:Cursor_Changer_REmenu2
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo                                    �ċN��       
echo                            %clr%     �ݒ�̏�����     %clr2%
echo                             ���J�o���[�R���\�[�� 
echo                                     �ޏo    
echo.
echo                    1����4�A�܂���WS�őI���AE��Y�Ō��肵�܂��B  
echo                             �ݒ�������l�ɖ߂��܂��B
echo.
choice /c 1234WSYE /n 
if %ErrorLevel%==1 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==3 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==4 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==5 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==6 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==7 goto :Cursor_Changer_REWipe
if %ErrorLevel%==8 goto :Cursor_Changer_REWipe
pause

:Cursor_Changer_REmenu3
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo                                    �ċN��       
echo                                 �ݒ�̏�����    
echo                            %clr% ���J�o���[�R���\�[�� %clr2%
echo                                     �ޏo    
echo.
echo                    1����4�A�܂���WS�őI���AE��Y�Ō��肵�܂��B  
echo                      ���J�o���[�R���\�[���ɃA�N�Z�X���܂��B
echo               ���J�o���[�R���\�[���ł́A���C�����j���[�ŗ��p�\��
echo                   �f�o�b�O�ړI�̃R�}���h�����ׂė��p�\�ł��B
echo.
choice /c 1234WSYE /n 
if %ErrorLevel%==1 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==3 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==4 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==5 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==6 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==7 call :Cursor_Changer_REConsole
if %ErrorLevel%==8 call :Cursor_Changer_REConsole
goto :Cursor_Changer_REmenu3
pause

:Cursor_Changer_REmenu4
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo                                    �ċN��       
echo                                 �ݒ�̏�����    
echo                             ���J�o���[�R���\�[��   
echo                            %clr%         �ޏo         %clr2%
echo.
echo                    1����4�A�܂���WS�őI���AE��Y�Ō��肵�܂��B  
echo                        ���J�o���[���j���[����ޏo���܂��B
echo                               (�V���b�g�_�E��)
choice /c 1234WSYE /n 
if %ErrorLevel%==1 goto :Cursor_Changer_REmenu1
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu2
if %ErrorLevel%==3 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==4 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==5 goto :Cursor_Changer_REmenu3
if %ErrorLevel%==6 goto :Cursor_Changer_REmenu4
if %ErrorLevel%==7 goto :batshutdown
if %ErrorLevel%==8 goto :batshutdown
pause

:Cursor_Changer_REWipe
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo.  
echo                     �ݒ�̏����� (�f�t�H���g�l�ɖ߂�) 
echo                          �{���Ɏ��s���܂����H
echo.
echo.
echo                           Y�Ŏ��s�AN�Ŗ߂�
echo.
choice /c YN /n 
if %ErrorLevel%==1 (
echo nodogcheckfor1234567890qwertyuiop > �J�[�\���ւ��ݒ�.txt
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
goto :Cursor_Changer_REWipeYippeee
)
if %ErrorLevel%==2 goto :Cursor_Changer_REmenu2

:Cursor_Changer_REWipeYippeee
cls
title �J�[�\���ւ� ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[ %debugmode%                
echo.
echo.  
echo                               �ݒ�̏�������
echo                             ����Ɋ������܂����B
echo.
echo.
echo.
echo.
timeout /t 3 /nobreak >nul
goto :Cursor_Changer_REmenu2


:Cursor_Changer_REConsole
cls
set selected=
set FromREConsole=true
mode con: cols=75 lines=25
color 07
set bootbatnow=no
if defined %wmodetoggle% (set clr=[7m&set clr2=[0m) else (set clr=[7m&set clr2=[0m)
echo ���J�o���[�R���\�[����ǂݍ���ł��܂�...
timeout /t 2 /nobreak >nul
cls
:Cursor_Changer_REConsolemain
title �J�[�\���ւ� ���J�o���[�R���\�[��
echo tamago_1908 �J�[�\���ւ� [Version %batver%]
echo Hi, %USERNAME%. welcome. by the way, All rights reserved to tamago_1908
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
echo                                                ����ɂ��́I
echo                                  ���s�������R�}���h����͂��Ă��������B
echo                                         inspectentirecommandlist
echo                                         �őS�R�}���h���X�g���Q�ƁB
echo                                �f�o�b�O�ړI�̃R�}���h�����ׂė��p�\�ł��B
echo                                     (restoresetting �Őݒ�̏�����)
echo.
echo.
echo.
echo.
echo.
echo.
:Cursor_Changer_REConsoleask
set selected=
SET /P selected=Cns ^>
if {%selected%}=={inspectentirecommandlist} (goto :allcommands)
if {%selected%}=={exit} (set FromREConsole=&exit /b)
if {%selected%}=={alldefnow1} (goto :AllDefult1)
if {%selected%}=={playdefboot} (set hatenakeikoku=0&cls&goto :firstboot)
if {%selected%}=={debugyesnow} (goto :kurogo)
if {%selected%}=={fulldebug} (goto fulldebug)
if {%selected%}=={getadmin} (goto :batstartadm)
if {%selected%}=={restoresetting} (
echo nodogcheckfor1234567890qwertyuiop > �J�[�\���ւ��ݒ�.txt
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
echo �����B�����L�[�������đ��s...
pause >nul
)
if {%selected%}=={alldefdeletebat} (set hatenakeikoku=0&echo delete bat, confirm to type something...&pause&goto alldefdeletefinish5)
if {%selected%}=={windowsfiltertest} (goto :batbootcheckwinverbad)
if {%selected%}=={funanimationdeb} (goto :batbootanimationfun)
if {%selected%}=={openie} (goto :openiedev)
if {%selected%}=={setenter} (echo.&set /p hatenakeikoku=pls type:&goto :hazimeboot) else (set selected= &echo �L���ȃR�}���h����͂��Ă��������B&goto Cursor_Changer_REConsoleask)



:batbootanimationfun
set bootegg=
set bootegg2=
mode con: cols=85 lines=29
find "wmode=true" �J�[�\���ւ��ݒ�.txt >nul
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
echo                         �J�[�\���ւ�%batver% �悤���� 2021-2024 %debugmode%
timeout /t 2 /nobreak >nul
color cf
timeout /t 1 /nobreak >nul
color 2f
timeout /t 1 /nobreak >nul
color bf
timeout /t 1 /nobreak >nul
color 9f
timeout /t 1 /nobreak >nul
color %funanimationclr%
timeout /t 1 /nobreak >nul
set funanimationclr=
mode con: cols=75 lines=25
goto checksum

:batbootanimation
if {%firststartbat%}=={yes} (goto batbootanimationbypassfun)
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (goto checksum)
cls
rem �u�[�g�A�j���[�V�������Đ��B50����1�̊m���ŕʃo�[�W�������Đ������Bramdom�̎d�l(�H)�ɂ���ē��A����random�����Ȃ��Ƃ����Ȃ��B
set /a bootegg=%random%*51/32767
set /a bootegg2=%random%*51/32767
if {%firststartbat%}=={yes} (goto batbootanimationbypassfun)
if {%bootegg%}=={%bootegg2%} (goto batbootanimationfun)
set bootegg=
set bootegg2=
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
echo                       2021-2024 tamago1908 %batbuild%
timeout /t 3 /nobreak >nul
cls
rem �ݒ�̌������m�F

:checksum
if {%invisiblecursor%}=={true} (echo [?25h&set invisiblecursor=)
if not {%allsettingerror%} equ {0} (
    title �J�[�\������
    echo �ݒ肪%allsettingerror%�������Ă��܂��B%allstgerroreastereggmessage%
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
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
echo wmode=false >> �J�[�\���ւ��ݒ�.txt
echo admin=false >> �J�[�\���ւ��ݒ�.txt
echo rebootokey=true >> �J�[�\���ւ��ݒ�.txt
echo  hatenakeikoku=true >> �J�[�\���ւ��ݒ�.txt
echo bootanimation=true >> �J�[�\���ւ��ݒ�.txt
echo.
echo �C�����������܂����B
pause
exit
)
if {%selected%}=={y} (
:overwritesetting
echo nodogcheckfor1234567890qwertyuiop > �J�[�\���ւ��ݒ�.txt
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
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
if {%alldefentered%}=={true} (
set alldefno2clr=
set alldefno2clr2=
set alldefclr=
set alldefclr2=
)
if {%settingbypass%}=={true} (goto hazimemenuskipboot)
rem �ݒ�Ƃ��̑��̃��[�h
rem ����ǂݍ��݁A�ǂݍ��񂾌�ǂ���goto����������ϐ��ɑ���K�v set wantload=setting1 set whatloadgoto=hazime �� hazime�֌W�̏ꍇ�͂���I�����[
rem �J�[�\���̐F�Ɋւ��Ă̓��C���̕ύX�����ɂ͎������Ă��܂���B�ύX���Ă���hazime�ɖ߂��ė����悤�ɐ݌v���ĂȂ��̂ŁB
rem �ݒ��ǉ�����ꍇ�͊�{�R�s�y�ő��v�B�����A���j���[�̌����ڂƂ��ɂ��������̂ł̓R�[�h��ǉ����Ȃ��Ƃ����Ȃ�����
:settingloads
cd /d %HOMEDRIVE%%HOMEPATH%
if not exist �J�[�\���ւ��ݒ�.txt (
cls
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
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
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


if {%bootbatnow%}=={no} (goto whatload) else (goto setting1load)
:setting1load
rem �z���C�g���[�h�̌��m�ƐF�̕ύX�B�ύX�̍������̂��ߏ��Ղɔz�u�B
set allsettingerror=0
find "rebootokey=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting1onoff=�L��
if %ErrorLevel%==1 goto setting1load2
if {%bootbatnow%}=={yes} (
set batloadprgs=1
call :MOBAS_Loader
goto setting2load
)
goto whatloadgoto


:setting2load
find "admin=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting2onoff=�L��
if %ErrorLevel%==1 goto setting2load2
if {%bootbatnow%}=={yes} (
set batloadprgs=2
call :MOBAS_Loader
goto setting3load
) 
goto whatloadgoto

:setting3load
find "CheckUpdate=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting3onoff=�L��
if %ErrorLevel%==1 goto setting3load2
if {%bootbatnow%}=={yes} (
set batloadprgs=3
call :MOBAS_Loader
goto setting4load
) 
goto whatloadgoto

:setting4load
find "hatenakeikoku=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting4onoff=�L��
if %ErrorLevel%==1 goto setting4load2
if {%bootbatnow%}=={yes} (
set batloadprgs=4
call :MOBAS_Loader
goto setting5load
) 
goto whatloadgoto

:setting5load
find "bootanimation=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 set setting5onoff=�L��
if %ErrorLevel%==1 goto setting5load2
if {%bootbatnow%}=={yes} (
set batloadprgs=5
call :MOBAS_Loader
goto wmodeload
) 
goto whatloadgoto

:wmodeload
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if {%ErrorLevel%}=={0} (set wmodeonoff=�_�[�N�e�[�}�ɕύX  &set wmodetoggle=true)
if {%ErrorLevel%}=={1} (goto wmodeload2)
if {%bootbatnow%}=={yes} (
set batloadprgs=6
call :MOBAS_Loader
goto loads
) 
goto whatloadgoto

:allsettingtest
rem �ݒ�̌���������
:setting1load2
find "rebootokey=false" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting1onoff=����) else if %ErrorLevel%==1 set setting1onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=1&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto setting2load) else (goto whatloadgoto)

:setting2load2
find "admin=false" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting2onoff=����) else if %ErrorLevel%==1 set setting2onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=2&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto setting3load) else (goto whatloadgoto)

:setting3load2
find "CheckUpdate=false" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting3onoff=����) else if %ErrorLevel%==1 set setting3onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=3&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto setting4load) else (goto whatloadgoto)

:setting4load2
find "hatenakeikoku=false" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting4onoff=����) else if %ErrorLevel%==1 set setting4onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=4&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto setting5load2) else (goto whatloadgoto)

:setting5load2
find "bootanimation=false" �J�[�\���ւ��ݒ�.txt
if {%bootbatnow%}=={no} (echo ������...)
if %ErrorLevel%==0 (set setting5onoff=����) else if %ErrorLevel%==1 set setting5onoff=null&set /a allsettingerror=allsettingerror+1
if {%bootbatnow%}=={yes} (set batloadprgs=5&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto wmodeload) else (goto whatloadgoto)

:wmodeload2
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
if {%bootbatnow%}=={no} (echo ������...)
if {%ErrorLevel%}=={0} (set wmodeonoff=�z���C�g�e�[�}�ɕύX&set wmodetoggle=false) else if {%ErrorLevel%}=={1} (set wmodeonoff=  null  �e�[�}�ɕύX&set wmodetoggle=false&set /a allsettingerror=allsettingerror+1)
if {%bootbatnow%}=={yes} (set batloadprgs=6&call :MOBAS_Loader)
if {%bootbatnow%}=={yes} (goto loads) else (goto whatloadgoto)

:loads
:wmodehazimeload
rem �z���C�g���[�h�����m���ĐF��ύX
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (color f0)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=6
call :MOBAS_Loader
goto debughazimeload
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto debughazimeload

:debughazimeload
rem �f�o�b�N���[�h�̌��m
find "debug=true" �J�[�\���ւ��ݒ�.txt > nul
if {%errorlevel%}=={0} (echo on&set debugmode=debugmode)
if {%errorlevel%}=={1} (echo off&set debugmode=)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=7
call :MOBAS_Loader
goto firststarttest
)
if {%1}=={devmode} (set devmode=true&goto firststarttest)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto firststarttest

:firststarttest
rem detect firstcursor.txt
setlocal enabledelayedexpansion
if exist ����J�[�\��.txt (
find "nodogcheckforfastboot" ����J�[�\��.txt > nul
if "!ErrorLevel!"=="1" (
set FirstCursorisEdited=true
    )
)
setlocal disabledelayedexpansion
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=8
call :MOBAS_Loader
goto cursorcolorload
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto cursorcolorload

:cursorcolorload
rem �J�[�\���̐F�����m
rem 0x0�͔�
rem 0x2�͍�
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x0" > nul
if {%ErrorLevel%}=={0} (set cursorcolor=��)
if {%ErrorLevel%}=={1} (set cursorcolor=��)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=9
call :MOBAS_Loader
goto hazimecursorcolor2
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)

:hazimecursorcolor2
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" | find "0x2" > nul
if {%ErrorLevel%}=={0} (set cursorcolor=��)
if {%bootbatnow%}=={no} (echo ������...) else (
set batloadprgs=10
call :MOBAS_Loader
goto :MOBAS_Loader_initializeVaribale
)
if {%whatloadgoto%}=={hazime} (goto hazimemenu)
goto hazimemenu


:MOBAS_Loader
rem �u�[�g�A�j���[�V�����B
rem ���͓ǂݍ��ݎ��̃e�L�X�g����B
if {%bootbatnow%}=={no} (cls & title �J�[�\���ݒ� ������... & echo ������... & goto whatload) else (title �N����...)
if {%simpleboot%}=={true} (cls & echo �N����...& exit /b)
if {%wmodetoggle%}=={false} (set loadscrnprgsclr=[7m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m&set back_to_the_firstline=[18;0H)
if {%wmodetoggle%}=={true} (set loadscrnprgsclr=[47m[97m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m[107m[30m&set back_to_the_firstline=[18;0H) else (set loadscrnprgsclr=[7m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m&set back_to_the_firstline=[18;0H)
if not defined invisiblecursor (echo [?25l&set invisiblecursor=true)

rem goofy ahh code
setlocal enabledelayedexpansion&if "!batloadprgs!" gtr "0" (set /a batloadprgsdelete=!batloadprgs!-1&set loadscrnprgs!batloadprgsdelete!=)&setlocal disabledelayedexpansion
if {%batloadprgs%}=={0} (set loadscrnprgs0=%loadscrnprgsclrgra%                                                     %loadscrnprgsclr2%)
if {%batloadprgs%}=={1} (set loadscrnprgs1=%loadscrnprgsclr%   %loadscrnprgsclr2%%loadscrnprgsclrgra%                                                  %loadscrnprgsclr2%)
if {%batloadprgs%}=={2} (set loadscrnprgs2=%loadscrnprgsclr%       %loadscrnprgsclr2%%loadscrnprgsclrgra%                                              %loadscrnprgsclr2%)
if {%batloadprgs%}=={3} (set loadscrnprgs3=%loadscrnprgsclr%           %loadscrnprgsclr2%%loadscrnprgsclrgra%                                          %loadscrnprgsclr2%)
if {%batloadprgs%}=={4} (set loadscrnprgs4=%loadscrnprgsclr%                %loadscrnprgsclr2%%loadscrnprgsclrgra%                                     %loadscrnprgsclr2%)
if {%batloadprgs%}=={5} (set loadscrnprgs5=%loadscrnprgsclr%                     %loadscrnprgsclr2%%loadscrnprgsclrgra%                                %loadscrnprgsclr2%)
if {%batloadprgs%}=={6} (set loadscrnprgs6=%loadscrnprgsclr%                           %loadscrnprgsclr2%%loadscrnprgsclrgra%                          %loadscrnprgsclr2%)
if {%batloadprgs%}=={7} (set loadscrnprgs7=%loadscrnprgsclr%                                  %loadscrnprgsclr2%%loadscrnprgsclrgra%                   %loadscrnprgsclr2%)
if {%batloadprgs%}=={8} (set loadscrnprgs8=%loadscrnprgsclr%                                         %loadscrnprgsclr2%%loadscrnprgsclrgra%            %loadscrnprgsclr2%)
if {%batloadprgs%}=={9} (set loadscrnprgs9=%loadscrnprgsclr%                                                %loadscrnprgsclr2%%loadscrnprgsclrgra%     %loadscrnprgsclr2%)
if {%batloadprgs%}=={10} (set loadscrnprgs10=%loadscrnprgsclr%                                                     %loadscrnprgsclr2%)                                                  
echo %back_to_the_firstline%
echo O=========================================================================O
echo.
echo                       �J�[�\���ւ���ǂݍ���ł��܂�...
echo           O=====================================================O
echo           I%loadscrnprgs0%%loadscrnprgs1%%loadscrnprgs2%%loadscrnprgs3%%loadscrnprgs4%%loadscrnprgs5%%loadscrnprgs6%%loadscrnprgs7%%loadscrnprgs8%%loadscrnprgs9%%loadscrnprgs10%I
echo           O=====================================================O
rem 37 �S�p
rem 74 ���p
exit /b

:MOBAS_Loader_initializeVaribale
set loadscrnprgs9=&set loadscrnprgs10=&set loadscrnprgsclr=&set loadscrnprgsclr2=&set loadscrnprgsclrgra=
set batloadprgsdelete=&set back_to_the_firstline=
goto hazimemenu

:whatload

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
if {%wantload%}=={} (goto hazimemenu)
call :BSOD_Errors 2
pause
exit

:whatloadgoto
set wantload=
exit /b

rem ���j���[�̐����̏���
:hazimemenu
cls
if {%bootbatnow%}=={no} (goto hazimemenuskipboot)
if {%bootbatnow%}=={yes} (set bootbatnow=no&goto batbootanimation)
:hazimemenuskipboot
setlocal disabledelayedexpansion
set wantload=
if {%runningfromfulldebug%}=={true} (set runningfromfulldebug=& exit /b)
if {%FromREConsole%}=={true} (cls&goto Cursor_Changer_REConsolemain)
set clrhelp=& set clrhelp2=
set settinghelptoggle=false
mode con: cols=75 lines=25
if {%hazimeeaster%}=={true} (set hazimebuild=%batbuild%)
if {%invisiblecursor%}=={true} (echo [?25h&set invisiblecursor=&cls)
set selected=
rem ���j���[�̕`��
title �J�[�\���ւ� %debugmode% 
echo                              �J�[�\���ւ�%batver% %debugmode% %hazimebuild%
echo.
echo   O=====================================================================O
echo   I     1�J�[�\����%cursorcolor%�F�ɂ���           2�d��              3�I��        I
echo   I                                                                     I
echo   I                   4�o�[�W�������          5�ݒ�                    I
echo   O=====================================================================O
echo.
call :hazimeMessages
SET /P selected=�C�ӂ̎��s�����������A�������̓A���t�@�x�b�g����͂��Ă�������... :
echo.
if {%selected%}=={} (goto hatenahazime)
if not {%selected%}=={} (echo %selected% ���I������܂����B)

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
if {%selected%}=={egg1} (color 1f&call :BSOD_Errors 4)
if {%selected%}=={egg2} (goto :Dogcheck)
if {%selected%}=={wwssdadaba} (set hatenaita=0&goto littleeasteregg)
if {%selected%}=={tamago1908} (echo :P&pause&goto hazime)
if {%selected%}=={himazinnoob1908} (echo :D&pause&goto hazime)
if {%selected%}=={mskg1908} (echo xD&pause&goto hazime)
if {%selected%}=={1908} (goto :1908hell)
if {%selected%}=={toxic} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=N6ael_DEPcs&goto hazime)
if {%selected%}=={abcdefu} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=qgRx58oItTk&goto hazime)
if {%selected%}=={dogsong} (start chrome.exe --window-size=0,0 --incognito -- https://www.youtube.com/watch?v=H4wptBuM6zs&goto hazime)
if {%selected%}=={���͖����ł�} (echo �������I&pause& goto hazime)

rem �f�o�b�O�p�R�}���h�̎Q��
if {%selected%}=={inspectentirecommandlist} (goto :allcommands)

rem �f�o�b�O�p
if {%selected%}=={crashtest} (exit /b)
if {%selected%}=={alldefnow1} (goto :AllDefult1)
if {%selected%}=={playdefboot} (set hatenaita=0&cls&goto :CursorChangerOOBEdev)
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
if "%hatenakeikoku%"=="����" (goto hazime)

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

:hazimeMessages
if "%messagealreadyshowed%"=="false" (set messagealreadyshowed=true) else (exit /b)
if "%FirstCursorisEdited%"=="true" (echo                        �ȒP�Ɂ@����������ꂽ�@�ł���H&echo.&set FirstCursorisEdited=)

if "%Updateavailable%"=="true" (
    title �J�[�\���ւ� �X�V�����p�\ ^(�����I^)
  setlocal enabledelayedexpansion
    if "%batbeta%"=="True" (set batbetamessage=^(�q���g : ���̃o�[�W�����̓x�[�^�łł��B�o�O���肪����\��������܂��B ^))
  echo �A�b�v�f�[�g�����p�\�ł��I ^(%updatemyversion%to %updateversion%^)
  echo �A�b�v�f�[�g���܂����H^(�A�b�v�f�[�g����Ɖp��ł֋����I�ɕύX����܂�^) !batbetamessage!
  set batbetamessage=
  SET /P updateselected=^(Y �܂��� N^) :
  if {!updateselected!}=={y} (set updateselected=&set updateavailable=&echo.&echo �A�b�v�f�[�g��...���΂炭���҂����������B&set batbootpowershell=Doupdate&call :batbootpowershell&echo �A�b�v�f�[�g�ɐ������܂����B&pause&exit)
if {!updateselected!}=={n} (set updateselected=&set updateavailable=&echo.&echo �A�b�v�f�[�g�̓L�����Z������܂����B�N�����ɃA�b�v�f�[�g���m�F����@�\�͐ݒ肩�疳���ɂł��܂��B&pause&set checkupdatetoggle=false&set messagealreadyshowed=false&exit /b)
setlocal disabledelayedexpansion
)
exit /b

:exitmenu
cls
if {%wmodetoggle%}=={false} (set clr=[7m&set clred=[41m&set clrgrn=[42m&set clryel=[43m&set clrmag=[46m&set clrgra=[90m&set clrcyan=[46m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clred=[41m&set clrgrn=[42m&set clryel=[43m&set clrmag=[45m&set clrgra=[0m[107m&set clrcyan=[46m&set clr2=[90m[107m[30m)
if defined %wmodetoggle% (set clr=[7m&set clred=[41m&set clrgrn=[42m&set clryel=[43m&set clrmag=[45m&set clrcyan=[46m&set clrgra=[90m&set clr2=[0m)
title �J�[�\���ւ��̏I�� %debugmode% 
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I               4�o %clr2%I     ^|    I   /~~~\  I           I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I   / ^| \  I  V    �� I  ^-^-^-^-^-^-^>  I%clrgra% ==============O%clr2%
echo                       I   \___/  I   \___/  I           I       
echo                       O==========O==========O===========O
echo                       I �����I�����Ă��܂���B          I
echo                       O=================================O
echo.
choice /c 123adye /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu1
if %ErrorLevel%==5 goto exitmenu1
if %ErrorLevel%==6 goto exitmenu1
if %ErrorLevel%==7 goto exitmenu1
goto :hazime

:exitmenu1
cls
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I               4�o %clr2%I%clred%     ^|    %clr2%I   /~~~\  I           I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I%clred%   / ^| \  %clr2%I  V    �� I  ^-^-^-^-^-^-^>  I%clrgra% ==============O%clr2%
echo                       I%clred%   \___/  %clr2%I   \___/  I           I       
echo                       O==========O==========O===========O
echo                       I �I�����I������܂����B          I
echo                       O=================================O
echo.
choice /c 123adye /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu1
if %ErrorLevel%==5 goto exitmenu2
if %ErrorLevel%==6 goto exitmenu1y
if %ErrorLevel%==7 goto exitmenu1y
goto :hazime

:exitmenu2
cls
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I               4�o %clr2%I     ^|    I%clrgrn%   /~~~\  %clr2%I           I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I   / ^| \  I%clrgrn%  V    �� %clr2%I  ^-^-^-^-^-^-^>  I%clrgra% ==============O%clr2%
echo                       I   \___/  I%clrgrn%   \___/  %clr2%I           I       
echo                       O==========O==========O===========O
echo                       I �ċN�����I������܂����B        I
echo                       O=================================O
echo.
choice /c 123adye /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu1
if %ErrorLevel%==5 goto exitmenu3
if %ErrorLevel%==6 goto exitmenu2y
if %ErrorLevel%==7 goto exitmenu2y
goto :hazime

:exitmenu3
cls
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I               4�o %clr2%I     ^|    I   /~~~\  I%clrcyan%           %clr2%I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I   / ^| \  I  V    �� I%clrcyan%  ^-^-^-^-^-^-^>  %clr2%I%clrgra% ==============O%clr2%
echo                       I   \___/  I   \___/  I%clrcyan%           %clr2%I       
echo                       O==========O==========O===========O
echo                       I �߂邪�I������܂����B          I
echo                       O=================================O
echo.
choice /c 123adye /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu2
if %ErrorLevel%==5 goto exitmenu3
if %ErrorLevel%==6 call :exitmenuexit&goto hazime
if %ErrorLevel%==7 call :exitmenuexit&goto hazime
goto :hazime


rem confirm

:exitmenu1y
cls
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I                4ba%clr2%I%clred%     ^|    %clr2%I   /~~~\  I           I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I%clred%   / ^| \  %clr2%I  V    �� I  ^-^-^-^-^-^-^>  I%clrgra% ==============O%clr2%
echo                       I%clred%   \___/  %clr2%I   \___/  I           I       
echo                       O==========O==========O===========O
echo                       I �{���ɁH                        I
echo                       O=================================O
echo.
choice /c 123adyeb /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu1
if %ErrorLevel%==5 goto exitmenu2
if %ErrorLevel%==6 goto batshutdown
if %ErrorLevel%==7 goto batshutdown
if %ErrorLevel%==8 goto exitmenu1
goto :hazime

:exitmenu2y
cls
set selected=
echo                              %clrgra%�J�[�\���ւ�%batver% %debugmode% %hazimebuild%%clr2%
echo.
echo   %clrgra%O================== %clr2%O================O%clrgra% ===============================O%clr2%
echo   %clrgra%I       1�J�[�\���� %clr2%I  �o�b�`�̏I��  I%clrgra% �d��              3�I��        I%clr2%
echo   %clrgra%I                   %clr2%O==========O==========O===========O%clrgra%               I%clr2%
echo   %clrgra%I               4�o %clr2%I     ^|    I%clrgrn%   /~~~\  %clr2%I           I%clrgra%               I%clr2%
echo   %clrgra%O================== %clr2%I   / ^| \  I%clrgrn%  V    �� %clr2%I  ^-^-^-^-^-^-^>  I%clrgra% ==============O%clr2%
echo                       I   \___/  I%clrgrn%   \___/  %clr2%I           I       
echo                       O==========O==========O===========O
echo                       I �{���ɁH                        I
echo                       O=================================O
echo.
choice /c 123adyeb /n /m "[1 2 3] ���A [A D] �������đI�������̂��A [Y E]�������Č��肵�܂��B"
if %ErrorLevel%==1 goto exitmenu1
if %ErrorLevel%==2 goto exitmenu2
if %ErrorLevel%==3 goto exitmenu3
if %ErrorLevel%==4 goto exitmenu1
if %ErrorLevel%==5 goto exitmenu3
if %ErrorLevel%==6 (call :exitmenuexit &set bootbatnow=yes&goto batstart)
if %ErrorLevel%==7 (call :exitmenuexit &set bootbatnow=yes&goto batstart)
if %ErrorLevel%==8 goto exitmenu2
goto :hazime


:batshutdown
title �A���[���F�f���`
cls
echo.
echo                            �J�[�\���ւ�%batver% %debugmode%
echo.
echo O=========================================================================O
echo.
echo.
echo.
echo.
echo. 
echo.
echo.
echo.
echo                                                ���悤�Ȃ�
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
echo                        2021-2024 tamago1908 %batbuild%
call :exitmenuexit
timeout /t 3 /nobreak >nul
exit

:exitmenuexit
set clrcyan=
set clrgra=
set clred=
set clrgrn=
set clryel=
set clrmag=
exit /b


rem �ݒ胁�j���[�̕`��
:setting
set wantload=
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
set selected=
if not defined {%clrgra%} (set clrgra=[90m)
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
Echo I                        I  %clrgra%[W S] �� [1 2] �ǂ��炩�������ăJ�e�S���[��%clr2%   I
echo I �J�[�\���ւ�  �����ڌn I  %clrgra%�I�����Ă��������B%clr2%                            I
echo I                        I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
set clrgra=
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
set selected=
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
set selected=
if not defined {%clrgra%} (set clrgra=[90m)
Cls
Echo.
Echo                               �ݒ胁�j���[ Ver2!!
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �J�[�\���ւ��̌����ڂɊւ���ݒ�ł��B        I
echo I                        I %clrgra%�i�e�[�}�Ȃǁj%clr2%                                 I
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
set clrgra=
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I %clr%3 �N�����ɍX�V�m�F%clr2%                  I   %setting3onoff%   I
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
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
set selected=
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
Echo O  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
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
set selected=
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
set selected=
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
set selected=
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
set selected=
if not defined {%clrgra%} (set clrgra=[90m)
if {%settinghelptoggle%}=={true} (set clr=[46m)
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
echo I                        I  %clrgra%�w���v���[�h��%settinghelp%�ł�%clr2%                        I
echo O========================O==O=====================O==========O============O
echo I%clr%      �w���v���[�h      %clr2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
set clrgra=
if {%wmodetoggle%}=={false} (set clr=[7m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clr2=[0m[107m[30m)
if %ErrorLevel%==1 goto settingcategory1
if %ErrorLevel%==2 goto settingcategory2
if %ErrorLevel%==3 goto settingcategory2
if %ErrorLevel%==4 goto settingcategoryhelpmode
if %ErrorLevel%==5 goto hazime
if %ErrorLevel%==6 goto settingcategoryhelpmodetoggle
if %ErrorLevel%==7 goto settingcategoryhelpmodetoggle
if %ErrorLevel%==8 goto settingcategoryhelpmode

:settingcategoryhelpmodetoggle
if {%settinghelptoggle%}=={true} (set settinghelptoggle=false&set clrhelp=&set clrhelp2=&goto settingcategoryhelpmode)
if {%settinghelptoggle%}=={false} (set settinghelptoggle=true&goto settingcategoryhelpmodetoggleiftrue)


:settingcategoryhelpmodetoggleiftrue
if {%wmodetoggle%}=={false} (set clr=[46m&set clrhelp=[7m&set clrhelp2=[0m)
if {%wmodetoggle%}=={true} (set clr=[46m&set clrhelp=[100m[97m&set clrhelp2=[0m[107m)
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
set selected=
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
call :MOBAS_Loader
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
call :MOBAS_Loader
Goto settingcategory1intsetting2

:setting2n
cls
Echo �N�����̊Ǘ��Ҍ����̗v����%setting2onoff%�ɂȂ�܂���ł���
Pause
goto settingcategory1intsetting2

:setting3
if {%settinghelptoggle%}=={true} (goto setting3help)
find "CheckUpdate=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting3setonoff=�L��&goto setting3onoff
if %ErrorLevel%==1 set setting3setonoff=�C�����A����ȏ��&goto setting3onoff

:setting3onoff
find "CheckUpdate=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 set setting3setonoff=����&set setting3warning=
:setting3okey
cls
echo �N�����ɍX�V���m�F����@�\��%setting3setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if {%selected%}=={y} (goto :setting3y)
if {%selected%}=={n} (goto :setting3n)
if {%selected%}=={back} (goto :settingcategory1intsetting3)
if {%selected%}=={b} (goto :settingcategory1intsetting3)
goto setting3okey

:setting3y
find "CheckUpdate=false" �J�[�\���ւ��ݒ�.txt > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto setting3ygo3test
if %ErrorLevel%==0 goto setting3ygo1

:setting3ygo3test
find "CheckUpdate=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==1 echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
if %ErrorLevel%==0 goto setting3ygo2

:setting3ygo2
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'CheckUpdate=true','CheckUpdate=false' | sc �J�[�\���ւ��ݒ�.txt"
goto setting3yokey

:setting3ygo1
powershell "(gc �J�[�\���ւ��ݒ�.txt) -replace 'CheckUpdate=false','CheckUpdate=true' | sc �J�[�\���ւ��ݒ�.txt"
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
call :MOBAS_Loader
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
call :MOBAS_Loader
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
call :MOBAS_Loader
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
call :MOBAS_Loader
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
echo ���̋@�\�̓J�[�\���ւ��̋N�����ɍX�V���m�F���邩�ۂ��̐ݒ�ł��B
echo ���̋@�\��L���ɂ���ƁA���N�����ɃA�b�v�f�[�g�̊m�F���s���܂��B
echo �A�b�v�f�[�g�����p�\�Ȃ�K�p���邱�Ƃ��ł��܂��B
echo ���g���̃C���^�[�l�b�g����̑��x�ɂ���Ă͋N�����Ԃ��x���Ȃ�\��������܂��B
echo �ꎞ�Ԃɂ�������50��ȏ�A�����ċN������ƁAgithub��API���[�g�����ɓ��B����\��������܂��B(�����I��3~4��ق�API�𗘗p���邽�߁A������)
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
rem Version of batch
:batver
title �J�[�\���ւ� �o�[�W���� (�����I)
if {%batverdev%}=={beta} (set batverdevshow=�x�[�^)
if {%batverdev%}=={stable} (set batverdevshow= ���� )
echo.
echo.
echo     by tamago_1908   2021-2024
echo     O========================================O
echo     I                                        I
echo     I          �J�[�\���ւ� %batverdevshow% ��        I
echo     I                                        I
echo     O========================================O 
echo           Version : %batver%  %batbuild%
echo.
echo �A�b�v�f�[�g���m�F���܂����H
set /p selected=Y or N : 
if {%selected%}=={y} (goto batverupdate) else if {%selected%}=={yes} (goto batverupdate) else if {%selected%}=={n} (goto hazime) else if {%selected%}=={no} (goto hazime) else (echo ���݂܂���BY��N�݂̂���͂��Ă��������B&pause&cls&goto batver )
pause
cls
set batverdevshow=
goto hazime

:batverupdate
cd %~dp0
echo �A�b�v�f�[�g�v���Z�X���J�n���Ă��܂�...
:updatecode
set batbootpowershell=Fullupdater
call :batbootpowershell

pause
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
goto cursorchange

:no0
echo �ύX�͂���܂���ł����B
pause
goto hazime

:yes0
find "CursorChanged" ����J�[�\��.txt > nul
if "%errorlevel%"=="0" goto changetodefault else goto FirstWarning
rem Write settings (default)
:FirstWarning
if defined wmodetoggle (set clrfirstwarning=[40m[37m)
if {%wmodetoggle%}=={false} (set clrfirstwarning=[40m[37m)
if {%wmodetoggle%}=={true} (set clrfirstwarning=[107m[30m)
rem warning message, first-time startup only
cls
echo ����ύX���̂�
timeout /t 1 /nobreak >nul
cls
echo.
timeout /t 1 /nobreak >nul
if {%wmodetoggle%}=={true} (color f0) else (color 07)
echo �@�@�@                         �@�I���ӁI
timeout /t 1 /nobreak >nul
if {%wmodetoggle%}=={true} (color fc) else (color 0c)
timeout /t 1 /nobreak >nul
if {%wmodetoggle%}=={true} (color f4) else (color 04)
timeout /t 1 /nobreak >nul
echo.
echo %clrfirstwarning%����bat�t�@�C���i�ȉ��A�X�N���v�g�j�́A�J�[�\�����f�t�H���g�A�܂��͍��F�ɂ��邾���̃X�N���v�g�ł��B
timeout /t 2 /nobreak >nul
echo %clrfirstwarning%�Ȃ��Ƃ͎v���܂����A���̃X�N���v�g���g�p����ɂ������Ĕ����������Q�A�܂��̓R���s���[�^�[�̑������̔�Q�̐ӔC�͐���҂ł��邻����ӂɂ��闑�͈�؂̐ӔC�����܂���I
pause
echo.
echo.
rem �x���̕���Bno����͂���ƃJ�[�\���ւ��ݒ�.txt���폜�����B
:warningfirstchenge
set clrfirstwarning=
SET /P selected=��낵���ł����H(Y=Yes / N=No)
if {%selected%}=={n} (goto hazime)
if {%selected%}=={no} (goto hazime) 
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
find "CursorChanged" ����J�[�\��.txt > nul
if "%errorlevel%"=="1" (
    find "nodogcheckforCheckUpdate" ����J�[�\��.txt > nul
    if "%errorlevel%"=="1" (
    echo nodogcheckforfastboot > ����J�[�\��.txt
    echo CursorChanged >> ����J�[�\��.txt
    ) else echo CursorChanged >> ����J�[�\��.txt
)
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
echo 
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
echo 
echo �ȂɁI�H�Ȃ����I����Ȃ��Ƃ͂��蓾�Ȃ����I�I�I���̂��΂ɋߊ��Ȃ��[���I
goto exit

rem �J�[�\���̐F�𔒂ɕύX����
:defgo
if {%wmodetoggle%}=={true} (color f0) else (color 07)
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
timeout /t 2 /nobreak >nul
cls
mode con: cols=85 lines=24
set dogcheckcount=0
if not defined back_to_the_firstline (set back_to_the_firstline=[0;0H)
:dogcheckanimation0f
set /a dogcheckcount=dogcheckcount+1
if %dogcheckcount% gtr 5 (title Dogcheck respect tobyfox)
if %dogcheckcount% gtr 7 (title Dogcheck)
if %dogcheckcount% gtr 30 (title dogrune chapter 1)
if %dogcheckcount% gtr 32 (title Dogcheck)
echo %back_to_the_firstline%
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
timeout /t 1 /nobreak >nul
cls
goto dogcheckanimation1f

:dogcheckanimation1f
echo %back_to_the_firstline%
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
timeout /t 1 /nobreak >nul
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
echo CheckUpdate=false >> �J�[�\���ւ��ݒ�.txt
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
set alldefentered=true
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
cls
color 0B
echo [40m[3m[96m����߂���
timeout /t 3 /nobreak >nul
find "wmode=false" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto wmodeonoffkenti
:wmodeonoffkentialldefno2
find "wmode=true" �J�[�\���ւ��ݒ�.txt > nul
if %ErrorLevel%==0 color f0
goto hazime

:yes2
rem �A���C���X�g�[���̍ŏI�m�F
set selected=
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
set selected=
echo.
echo 
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
if not exist ����J�[�\��.txt set erroralldefwhatdelete=����J�[�\�� & goto BSOD_Errors
:testerroralldef
if not exist �J�[�\���ւ��ݒ�.txt set erroralldefwhatdelete=�J�[�\���ւ��ݒ� & goto BSOD_Errors
set erroralldefwhatdelete=����J�[�\��.txt�ƁA�J�[�\���ւ��ݒ�.txt�A���̗�����
goto alldefnow

:BSOD_Errors
set runningfromfulldebug=
set FromREConsole=
timeout /t 1 /nobreak >nul
title �u���[�X�N���[���I�I
mode con: cols=100 lines=30
color 1f
rem message indication
echo 
cls
echo A problem has been detected and Cursor Changer has been shut down to prevent echo damage to your computer.
echo If this is the first time you've seen this stop error screen,
echo restart your computer.
echo If this screen appears again,
echo follow these steps:
echo.
echo Check to be sure you have adequate disk space.
echo If anythings is identified in the stop message,
echo disable the untivirus softwere or check the updates of windows.
echo Try changing Video adapters.
echo.
echo Check with Github for any Cursor Changer updates.
echo Disable Something options such as uhh... i dont know but
echo If you need to use Arguments to remove or disable components,
echo Use Ctrl+R, then Enter cmd, then copy and paste the full path to this batch ^(or d^&d^), and then specify the arguments available to the batch.
echo Im (tamago1908) recommend "Bypsloadsg". A list of available arguments can be found by specifying "help" as an argument.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000000%1
echo *** MEMORY LOGS: 57 68 61 74 20 74 68 65 20 66 75 63 6b 69 6e 67 20 61 72 65 20 79 6f 75 20 74 68 69 6e 6b 69 6e 67 3f
echo.
echo Beginning dump of physical memory (lie)
echo physical memory dump complete. (lier!!!!)
echo Contact tamago1908 with �J�[�\���ւ� Github for further echo assistance.

if {%1}=={0} (goto :BSOD_Errors0message)
if {%1}=={1} (goto :BSOD_Errors1message)
if {%1}=={2} (goto :BSOD_Errors2message)
if {%1}=={3} (goto :BSOD_Errors3message)
if {%1}=={4} (goto :BSOD_Errors4message)

if {%1}=={} (goto :BSOD_ErrorsABSOLUTYNO)

:BSOD_Errors0message
echo Dim answer:answer = MsgBox("�s�����v���I�ȃG���[���������܂����I",vbOKOnly,"�v���I�ȃG���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
del /Q %TEMP%\msgbox.vbs

:BSOD_Errors0message2
echo Dim answer:answer = MsgBox("�G���[�̊T�v : �s���ȃG���[���������܂����B �G���[ ID : 0",vbokony,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors0message3
echo Dim answer:answer = MsgBox("�w�ǂ̏ꍇ�A�J���҂ɂ��v���I�ȍ\���G���[�������̓~�X�ɂ���ċN����܂��B (�\�����Ă��Ȃ�exit /b��\���G���[�Ȃ�)",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors0message4
echo Dim answer:answer = MsgBox("��������������A�Z�L�����e�B�[�\�t�g�Ȃǂ����������̂��ɁA�ēx�G���[���N�������ꏊ����蒼���Ă��������B",vbokonly,"�ǂ�����΂����H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors0message5
echo Dim answer:answer = MsgBox("����ł��Ȃ����P���Ȃ��ꍇ�Agithub��issue�ɂĕ񍐂��Ă��������B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
goto :BSOD_ErrorsRorR


:BSOD_Errors1message
echo Dim answer:answer = MsgBox("�N�����ɒv���I�ȃG���[���������܂����I",vbOKOnly,"�v���I�ȃG���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
del /Q %TEMP%\msgbox.vbs

:BSOD_Errors0message2
echo Dim answer:answer = MsgBox("�G���[�̊T�v : �s���ȃG���[��Mobas_Loader�܂���Setting_Loader�Ŕ������܂����B �G���[ ID : 1",vbokony,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors1message3
echo Dim answer:answer = MsgBox("���̃G���[�͉��炩�̒v���I�ȃG���[���J�[�\���ւ��̋N�����ɔ��������ۂɋN����܂��B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors1message4
echo Dim answer:answer = MsgBox("��������������A�Z�L�����e�B�[�\�t�g�Ȃǂ����������̂��ɁA�ēx�G���[���N�������ꏊ����蒼���Ă��������B",vbokonly,"�ǂ�����΂����H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors1message5
echo Dim answer:answer = MsgBox("����ł��Ȃ����P���Ȃ��ꍇ�Agithub��issue�ɂĕ񍐂��Ă��������B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
goto :BSOD_ErrorsRorR


:BSOD_Errors2message
echo Dim answer:answer = MsgBox("Mobas_Loader�ŃG���[���������܂����I",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
del /Q %TEMP%\msgbox.vbs

:BSOD_Errors2message2
echo Dim answer:answer = MsgBox("�G���[�̊T�v : Mobas_Loader��call�����ۂɕK�v�ȕϐ��̒l���s�K�؂Ȓl�ł����B %wantload% �G���[ ID : 2",vbokony,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors2message3
echo Dim answer:answer = MsgBox("���̃G���[���N����͔̂��ɒ������A�N���邱�Ƃ͊�{�I�ɂ���܂���B�������A�f�o�b�O�p�r�̋@�\�𗘗p�����ۂɂ͋N����\��������܂��B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors2message4
echo Dim answer:answer = MsgBox("��������������A�Z�L�����e�B�[�\�t�g�Ȃǂ����������̂��ɁA�ēx�G���[���N�������ꏊ����蒼���Ă��������B",vbokonly,"�ǂ�����΂����H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors2message5
echo Dim answer:answer = MsgBox("����ł��Ȃ����P���Ȃ��ꍇ�Agithub��issue�ɂĕ񍐂��Ă��������B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
goto :BSOD_ErrorsRorR


:BSOD_Errors3message
echo Dim answer:answer = MsgBox("�A���C���X�g�[���̍ۂɃG���[���������܂����I",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors3message2message
echo Dim answer:answer = MsgBox("�G���[�̊T�v : �A���C���X�g�[�������s����ۂɑ��݂��Ă���ׂ��͂��̃t�@�C�������݂��Ă��܂���ł����I �G���[ ID : 3",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors3message3message
echo Dim answer:answer = MsgBox("...�܂��A���ۂɂ͂��Ȃ���%erroralldefwhatdelete%���폜�����̂��������낤���ǂˁB",vbYesno,""):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
if {%errorlevel%}=={6} (del /Q %TEMP%\msgbox.vbs&goto :BSOD_Errors3message3messageok)
if {%errorlevel%}=={7} (del /Q %TEMP%\msgbox.vbs&goto :BSOD_Errors3message3messageno)
goto BSOD_Errors3message3message

:BSOD_Errors3message3messageok
echo Dim answer:answer = MsgBox("�����Ă�",vbOKCancel,""):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
del /Q %TEMP%\msgbox.vbs
goto :BSOD_ErrorsRorR

:BSOD_Errors3message3messageno
echo Dim answer:answer = MsgBox("����...�ł������t�@�C�����폜���Ă��Ȃ��̂ɂ��̃G���[���o���ꍇ�ɂ́A��������������A�Z�L�����e�B�[�\�t�g�Ȃǂ����������̂��ɁA�ēx�G���[���N�������ꏊ����蒼���Ă��������B",vbOKCancel,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %ERRORLEVEL% > nul
del /Q %TEMP%\msgbox.vbs

:BSOD_Errors3message4
echo Dim answer:answer = MsgBox("����ł��Ȃ����P���Ȃ��ꍇ�Agithub��issue�ɂĕ񍐂��Ă��������B",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
goto :BSOD_ErrorsRorR


:BSOD_Errors4message
echo Dim answer:answer = MsgBox("���O�̃p�\�R���͍������Ԃ��󂵂��I�I�I�I�I�I�I",vbokonly,"�}�W"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
del /Q %TEMP%\msgbox.vbs

:BSOD_Errors4message2
echo Dim answer:answer = MsgBox("�G���[�̊T�v : ���O�̃p�\�R���̓N�\�݂����ɂԂ���ꂽ�I�I�I �G���[ ID : 9999999",vbokony,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors4message3
echo Dim answer:answer = MsgBox("�p�\�R�����j�󂳂ꂽ�I�I���ꂾ���I�I�I�I�I�I�I�I�I�I�I�I�I�I",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors4message4
echo Dim answer:answer = MsgBox("�V�����p�\�R�������I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I",vbokonly,"�ǂ�����΂����H"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul

:BSOD_Errors4message5
echo Dim answer:answer = MsgBox("�������̃G���[�����������o��ꍇ�́A�Ƃ��Ƃ�egg1����͂���̂�߂�I�I�Ȃ�ł��̃G���[���o�����킩���Ă񂾂�I�ӂ�����ȁI",vbokonly,"�G���["):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
goto :BSOD_ErrorsRorR


:BSOD_ErrorsABSOLUTYNO
cls
echo THE SYSTEM HAS BEEN DESTROYED
echo.
echo �G���[ ID : 6 (bsod_errors�������Ȃ���call�܂���goto����܂����B)
pause
if {%wmodetoggle%}=={true} (color f0) else (color 07)
goto hazime


:BSOD_ErrorsRorR
echo Dim answer:answer = MsgBox("�͂��������ƍ����̎��_�ōċN�����A�������������ƃ��J�o���[���j���[�Ɉړ����܂��B",vbyesno,"�ǂ��炩��I�����Ă��������B"):WScript.Quit(answer) > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
echo %errorlevel% > nul
if {%errorlevel%}=={6} (del /Q %TEMP%\msgbox.vbs&cd %~dp0 &start "" ^"%~n0%~x0^"&exit)
if {%errorlevel%}=={7} (del /Q %TEMP%\msgbox.vbs&goto :Cursor_Changer_REmenu)




rem �A���C���X�g�[�����j���[�̑I���̔���
:alldefnow
cls
color 07
if %alldefselect%==1 goto alldefnowchangeit
if %alldefselect%==2 goto alldefnowsettingdel

rem �A���C���X�g�[�����j���[�̑I���ɉ����Ă̕���
:alldefnowsettingdel
del ����J�[�\��.txt
del �J�[�\���ւ��ݒ�.txt
goto alldefnowfinish

:alldefnowchangeit
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
del %batpath%
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
if {%selected%}=={siranai} (goto :secretnormal)
if {%selected%}=={siran} (goto :secretnormal)
if {%selected%}=={kaiseki} (goto :secrethentai)
if {%selected%}=={tyokkan} (goto :secretnormal)

if {%selected%}=={tyokkan} (goto :secretnormal) else (goto secretnormal)

echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
goto rebootok

:secretnormal
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
if {%batargmentonly%}=={true} (
set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m
) else (���������ȁA�����Ɍ��܂��Ă�B������batargmentonly�����҂��ꂽ�l�ł͂Ȃ������񂾂���B�����Ă您�A���߂�set���Ă�̂ɂ����Ȃ�Ȃ�Ă��肦�˂���Ȃ��I�H�H�I�H�I�I�H�I�H�H�I�H�I�H�I�H�I�H�I�H&pause&exit)
goto acbatargmentsonly

:openiedev
cls
echo InternetExplorer is will open.
echo CreateObject("InternetExplorer.Application").Visible=true > %TEMP%\openie.vbs & %TEMP%\openie.vbs
del %temp%\openie.vbs
powershell sleep 0.2
goto hazime

:allcommands
cls
rem Sword art online War of Underworld refarence
set selected=
if {%allcommandlock%}=={true} (goto hazimemenu) else if {%allcommandlock%}=={false} (goto allcommandsmain)
title enter the password!
setlocal enabledelayedexpansion
if not defined invisiblecursor (echo [?25l&set invisiblecursor=true)
mode con: cols=75 lines=25
set "input=" & set len=0
:allcommandslockloop
if {%wmodetoggle%}=={true} (echo [97m)
echo [10;25H[44m��������  �p�X���[�h ���� �������� [0m
echo [11;25H[44m��                        �� [0m
echo [12;25H[44m�� ��[0m                    ��[44m �� [0m
echo [13;25H[44m��                        �� [0m
echo [14;25H[44m���������������������������������������������������� [0m
echo [15;25H[44m   B=�폜  Y=����  E=�߂�  [0m
if "%input%" neq "" (
    if %len% equ 19 (
        echo [12;29H%input%
    ) else (
        echo [12;29H%input%[5m_[0m
    )
)
if not defined input (
  echo [12;29H[5m_[0m
)
echo [0;0H
if {%wmodetoggle%}=={true} (echo [107;30m)
choice /c:0123456789bye /n >nul
set num=%errorlevel%
if %num% neq 0 set /a num=num-1
if %num%==10 if "%input%" neq "" set input=%input:~0,-1%&set /a len=len-1
if %num%==11 if "%input%"=="1908" (echo [17;28H�������p�X���[�h�ł��B&timeout /t 2 /nobreak >nul&echo [?25h&set invisiblecursor=&setlocal disabledelayedexpansion&set input=&set len=&set allcommandlock=false&goto allcommandsmain) else (echo [17;12H�s�����I �ēx�����ꍇ�ɂ́Abatch���ċN�����Ă��������B&timeout /t 3 /nobreak >nul&set input=&set len=0&set allcommandlock=true&goto hazimemenu)
if %num%==12 (
    if {%invisiblecursor%}=={true} (
      setlocal disabledelayedexpansion&echo [?25h&set invisiblecursor=&set input=&set len=& goto :hazimemenu
      )
)
if %num% lss 10 if not defined input (set "input=%num%"&set "len=1") else if !len! gtr 18 (goto allcommandslockloop) else set input=%input%%num%&set /a len=len+1
goto allcommandslockloop

:allcommandsmain
title INSPECT:COMMANDLIST
cls
rem dumbass code, wtf hell no who make it fr (damn its me but)!!!!! ITS ABSOLUTE TRASH!!!! THATS IS SO HARD TO READ
rem so many set uhhh
rem STOP SPAMMING SET AUHAUAHAUAHAUHAUAHAHAHAUAHUAHUUAUHHUHUHUHUHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh&SET IHHHHGISJGIE
if {%wmodetoggle%}=={false} (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m)
if {%wmodetoggle%}=={true} (set clr=[100m[97m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m[107m[30m)
if defined %wmodetoggle% (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrcyan=[96m&set clrgra=[90m&set clr2=[0m)
if not defined invisiblecursor (echo [?25l&set invisiblecursor=true)
cls
echo [Loading Command list...]
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=62;$w.BufferSize=$s;}"
cls
echo %clr%::%clr2%                      [Entire list of menu commands]       %clrgra%6color test%clr2%
echo                  (You can use all of them in the main menu.)
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
echo           %clrcyan%-%clr2% crashtest         %clrgra%(will happen Intentionally crashes.)%clr2%
echo           %clrcyan%-%clr2% reload            %clrgra%(reboot bat file, and reloading setting.) %clr2%
echo           %clrcyan%-%clr2% openie            %clrgra%(trying open internet explorer.)%clr2%
echo           %clrcyan%-%clr2% counttestdeb      %clrgra%(enter the count test mode.)%clr2%
echo           %clrcyan%-%clr2% alldefnow1        %clrgra%(forced to enter alldefault.)%clr2%
echo           %clrcyan%-%clr2% funanimationdeb   %clrgra%(play rare boot animation.)%clr2%
echo           %clrcyan%-%clr2% windowsfiltertest %clrgra%(play bad win ver Warning.)%clr2%
echo.
echo            ^<%clrgrn%easter egg purposes commands%clr2%^>
echo.
echo           %clrcyan%-%clr2% easteregg %clryel%[%clr2%%clred%!%clr2%%clryel%]%clr2%    %clrgra%(playing easteregg, its little dangerous.)%clr2%
echo           %clrcyan%-%clr2% egg              %clrgra%(play seacret message.)%clr2%
echo           %clrcyan%-%clr2% egg1             %clrgra%(play error message in alldef.)%clr2%
echo           %clrcyan%-%clr2% egg2             %clrgra%(play dogcheck error, inspire toby fox.)%clr2%
echo           %clrcyan%-%clr2% wwssdadaba       %clrgra%(seacret message and show build number.)%clr2%
echo           %clrcyan%-%clr2% tamago1908       %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% himazionnoob1908 %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% mskg1908         %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% 1908             %clrgra%(show looped goofy message.)%clr2%
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
echo            %clrcyan%-%clr2% recovery          %clrgra%(Boot up with recovery mode.)%clr2%
echo            %clrcyan%-%clr2% bypsdisexit       %clrgra%(Bypass disabling the exit button.)%clr2%
echo            %clrcyan%-%clr2% bypsloadsg        %clrgra%(Bypass the loading of settings.)%clr2%
echo            %clrcyan%-%clr2% bypsvck           %clrgra%(Bypass the windows version check.)%clr2%
echo            %clrcyan%-%clr2% bypsadm           %clrgra%(Bypass the getting admin.)%clr2%
if {%batargmentonly%}=={true} (echo.&echo.&goto allcommandswait)
echo.
echo                     %clrgrn%[%clr2%fulldebug commands%clrgrn%]%clr2%
echo.
echo            %clrcyan%-%clr2% goto %clrgra%(goto for labels that exist.)%clr2%
echo            %clrcyan%-%clr2% set  %clrgra%(create new variable.)%clr2%
echo            %clrcyan%-%clr2% help %clrgra%(Show commands available in fulldebug.)%clr2%
echo.
echo.
:allcommandswait
set /p nothing=%clred%^/^/%clr2%[Type something to back to menu...]                          %clrgra%%batver%%clr2% <nul&pause >nul
set clrcyan=
set clrgra=
set clred=
set clrgrn=
set clryel=
set clrmag=
if {%batargmentonly%}=={true} (set batargmentonly= &cls&exit /b)
goto hazimemenu


:fulldebug
set selected=
if defined fulldebug (goto fulldebugmain)
cls
echo.
echo                            !�x��!
echo.
echo ���̋@�\�͊J���Ҍ����ɍ쐬���ꂽ���̂ł��B�ł��̂ŁA�J���҈ȊO�̐l�����p�����ꍇ�A���炩�̃o�O����������N�����\��������܂��B
echo ����ł����̋@�\���g�p�������ꍇ�ɂ́A"y"����͂��ĉ������B
echo �߂邩�A�L�����Z���������ꍇ�ɂ́A"n"����͂��Ă��������B
echo ��xy����͂����ꍇ�A����batch�𒼐ڍċN�����邩�A�ϐ�"fulldebug"���폜���Ȃ����肱�̃��b�Z�[�W�͍ēx�\������Ȃ��Ȃ�܂��B
set /p selected=Y or N : 
if %selected%==n goto hazimemenu
if %selected%==y set fulldebug=true
if %selected%== echo what? "Y" or "N".&pause&goto fulldebug

:fulldebugmain
set fulldebugsetvariable=
set fulldebugvariableapply=
title ^(�f�o�b�O�p^) �J�[�\���ϐ�
echo.
echo fulldebug ���N�����Ă��܂�...
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=150;$w.BufferSize=$s;}"
cls
:fulldebugtypevariable
set fulldebugsetvariable=
set fulldebugvariableapply=
set
set /p fulldebugsetvariable=�ύX���郉�x�����w�肵�Ă��������B :
if {%fulldebugsetvariable%}=={back} (goto hazimemenu)
if {%fulldebugsetvariable%}=={exit} (goto hazimemenu)
if {%fulldebugsetvariable%}=={help} (echo goto&echo set&echo help&echo back&pause&cls&set fulldebugsetvariable=&goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={goto} (goto fulldebuggoto)
if {%fulldebugsetvariable%}=={set} (goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={} (cls&goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={allcommandlock} (echo you cant chenge this variable, becouse this variable is locked.&pause&cls&goto fulldebugtypevariable)
if not defined %fulldebugsetvariable% (echo �ϐ� %fulldebugsetvariable% �͑��݂��܂���B�V���ɍ쐬���邩�A���݂��镨���w�肵�ĉ������B&pause&cls&goto fulldebugtypevariable)
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if {%fulldebugvariableapply%}=={back} (goto fulldebugerrorsetnew1)
if {%fulldebugvariableapply%}=={} (goto fulldebugerrorsetvariable1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo %fulldebugsetvariable%^=%fulldebugvariableapply% chenged.
pause
cls
goto fulldebugtypevariable

:fulldebuggoto
set fulldebugsetvariable=
set /p fulldebugsetvariable=�ǂ���goto���܂����H:
if "%fulldebugsetvariable%"=="back" (goto fulldebugtypevariable)
if "%fulldebugsetvariable%"=="allcommandsmain" (echo you cant goto this lavel, becouse this variable is locked.&pause&cls&goto fulldebuggoto)
if "%fulldebugsetvariable%"=="exit" (goto fulldebugtypevariable)
if "%fulldebugsetvariable%"=="" (cls&goto fulldebuggoto)
set runningfromfulldebug=true
call :%fulldebugsetvariable%
if %errorlevel%==0 (
  set runningfromfulldebug=
  goto fulldebuggoto
     )
    if %runningfromfulldebug%==true (
  if %errorlevel%==1 (
echo ���݂��Ȃ����x�����w�肳��܂����B
echo ^(�������́A�w�Ǐ��������݂��Ȃ����x����goto������...^). 
echo ���݂��郉�x�����w�肵�Ă��������B
pause
  )
 )
cls
goto :fulldebuggoto


:fulldebugsetnew
cls
set fulldebugsetvariable=
set fulldebugvariableapply=
set /p fulldebugsetvariable=�쐬�������ϐ�������͂��Ă��������B  :
if defined %fulldebugsetvariable% (echo %fulldebugsetvariable% �Ƃ����ϐ��͂��łɑ��݂��Ă��܂��B���݂��Ȃ����x�����w�肵�Ă��������B &pause&cls&goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={back} (goto fulldebugtypevariable)
if {%fulldebugsetvariable%}=={allcommandlock} (echo you cant chenge this variable, becouse this variable is locked.&pause&cls&goto fulldebugsetnew)
if {%fulldebugsetvariable%}=={} (echo �������͂��Ă��������B&pause&cls&goto fulldebugsetnew)
:fulldebugsetnewenter
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if {%fulldebugvariableapply%}=={} (echo ��̒l�ł͕ϐ����쐬�ł��܂���B &pause&cls&goto fulldebugsetnewenter)
if {%fulldebugvariableapply%}=={back} (goto fulldebugerrorsetnew1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo �ϐ� %fulldebugsetvariable% �́A %fulldebugvariableapply% �Ƃ����l�ō쐬����܂����B(%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto fulldebugtypevariable

:fulldebugerrorsetnew1
set /p fulldebugsetvariableerrornew=�ޏo���邩�A���̒l�ŕϐ����쐬���܂����H (1 or 2) : 
if {%fulldebugsetvariableerrornew%}=={1} (goto fulldebugtypevariable)
if {%fulldebugsetvariableerrornew%}=={2} (goto fulldebugerrorsetnew1if)
:fulldebugerrorsetnew1if
set %fulldebugsetvariable%=back
echo �ϐ� %fulldebugsetvariable% �́A %fulldebugvariableapply% �Ƃ����l�ō쐬����܂����B (%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto fulldebugtypevariable


:fulldebugerrorsetvariable1
set /p fulldebugsetvariableerrorif=�{���ɕϐ� %fulldebugsetvariable%���폜���܂����H (y or n)
if {%fulldebugsetvariableerrorif%}=={y} (
set %fulldebugsetvariable%=
echo �ϐ� %fulldebugsetvariable% �͍폜����܂����B
pause
cls
goto fulldebugtypevariable
)
if {%fulldebugsetvariableerrorif%}=={n} (goto fulldebug)

:littleeasteregg
if {%hazimeeaster%}=={true} (goto hazimemenu)
cls&pause&echo hello! this is easteregg!&pause&cls&title �B���@�\�Ń��C�����j���[�ƃo�[�W�������̕����Ńr���h�i���o�[���\�������悤�ɂȂ���&echo and bye!&pause&cls&set hazimeeaster=true&goto hazime


:Lock
set eggcount=0
:lockloop1908
rundll32.exe user32.dll, LockWorkStation
if "%eggcount%" gtr "5" (exit)
if {%looplockdownhorroreaster%}=={true} (set /a eggcount=eggcount+1&goto lockloop1908)
goto reboot

:exit
pause
:reboot

rem 3500 line code, wtf?
rem I still dont have any idea why i did make it
rem uh anyway finally end of line
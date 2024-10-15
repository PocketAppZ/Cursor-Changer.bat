@echo off
setlocal
mode con: | find "75" >nul && mode con: | find "25" >nul
if "%errorlevel%"=="1" (mode con: cols=75 lines=25& set boottime1=%time%)
if "%batbootargumentbad%"=="false" (title �J�[�\���ւ� ^| ������...) else if not "%1"=="BatBootErrorHandlerArgument1908" (title �J�[�\���ւ�)
if not defined dummy (set /p nothing=[?25h<nul)

rem Cursor Changer by tamago_1908
rem English version.

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



rem �v��     : rem custom�e�[�}�@�\ (��J���[) ���������� (1.15?)
rem �� ��̓I�ɂ�Color_Applyer���������āA���for���ŋ󔒂𗘗p���ĕ����F�Ȃǂ��w��A��ɕ`�ʂ����GUI��n�C���C�g�͏]���̕��@�ōœK������B
rem ���������������@�Őݒ�t�@�C���Ȃǂ̉��ς����m����  (1.15?)
rem "Uninstall"�������ŗ��p���ăA���C���X�g�[���[�ŋN���ł���悤�ɂ���B����̎����̓A���C���X�g�[���[�̃I�[�o�[�z�[�����Ɏ�������B
rem ���ݎ�������Ă���youtube�֘A�̏��������ׂč폜���āAdogcheck��startup rickroll��powershell�̉��y�Đ��ɒu��������B (1.15?)
rem ��ɔ����A���J�e�S�i���C�Y���ꂽ�ݒ�GUI����������B (1.15?)
rem �A�b�v�f�[�g���p�\�̉��ǁA���O�C�����j���[�̎��� (1.15?)
rem setting��K�p���镔�������ǂ��� (1.15?)
rem version check�̃o�C�p�X�̎d����ς���B����ɔ����������ӂ̏������ς��� (1.15?)
rem �オ�ł���΁Apowershell�O��winver check��z�u�ł���\��������



rem Make sure to fill in the build number and version! Also, don't forget to put it in the archive!
rem environment setting, It is not recommended to change.
rem VER v1.14b
set batver=1.14b
set batbuild=Build 91
set batverdev=stable
set hazimeeaster=false
set firststartbat=no
set bootbatnow=yes


rem Here you can change the path to the location where configuration files and other files are placed and loaded, and names.
rem Example : 
rem %HOMEDRIVE%%HOMEPATH% (default)
rem %HOMEDRIVE%%HOMEPATH%\desktop (desktop)
rem O===================================O
set "batchmainpath=%HOMEDRIVE%%HOMEPATH%"
rem O===================================O
rem settings file
set "Settingsfile=�J�[�\���ւ��ݒ�.txt"
rem O===================================O
rem First Stuffs file
set "FirstSTFsfile=����J�[�\��.txt"
rem O===================================O
cd /d %batchmainpath%


rem detect user argument and echo first boot message
if "%1"=="BatBootErrorHandlerArgument1908" (goto :batbootVerifyerrorhandler)
:batbootVerifyerrorhandler
echo %0 | find "%homedrive%" >nul
if "%errorlevel%"=="0" if "%1"=="BatBootErrorHandlerArgument1908" (set batbootargumentbad=true) else (set batbootargumentbad=)
if "%errorlevel%"=="1" (set batbootargumentbad=false)
if "%batbootargumentbad%"=="true" (call :BSOD_Errors 5)


rem check powershell is available
if "%batbootargumentbad%"=="false" (goto :batbootcheckpowershellsafe)
:batbootcheckpowershell
>nul 2>&1 powershell exit && goto :batbootcheckpowershellsafe
cls
echo powershell�̊m�F�Ɏ��s���܂����I
pause
cls
echo ���ꂪ�\�����ꂽ�Ƃ������Ƃ́A���g����PC��powershell���C���X�g�[������Ă��Ȃ��\���������Ƃ������Ƃł��B
pause
cls
echo �J�[�\���ւ��𓮍삳����ɂ�powershell���K�{�ł��B
echo windows 10 1803�ȍ~�ł�powershell 5.1���W���ŃC���X�g�[������Ă��邽�߁A���炭�Ӑ}�I�ɃA���C���X�g�[������Ă��邩�A���p�ł��Ȃ��Ȃ��Ă���\���������ł��傤�B
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


:batboot_animationcheck
setlocal enabledelayedexpansion

rem bootloader animation loader. first of all, load theme setting.
if exist %Settingsfile% (
find "wmode=true" %Settingsfile% > nul 
if "!errorlevel!"=="0" (color f0 & set wmodetoggle=true) else (set wmodetoggle=false)
) else (set wmodetoggle=false)


rem check linuxboot
>nul 2>&1 find "s5_rawboot=true" %Settingsfile%
if not "!errorlevel!"=="0" (
    >nul 2>&1 find "s5_linuxboot=true" %Settingsfile%
    if "!errorlevel!"=="0" (
        set linuxboot=true
        if "%batbootargumentbad%"=="false" (echo [%time: =%] �J�[�\���ւ� %batver% �u�[�g���[�_�[ - by tamago_1908& echo.) else (echo [%time: =%] �u�[�g���[�_�[���J�n��...)
        >nul 2>&1 find "wmode=false" %Settingsfile%
        if "!errorlevel!"=="0" (set linuxishclr2=[0m)
        >nul 2>&1 find "wmode=true" %Settingsfile%
        if "!errorlevel!"=="0" (set linuxishclr2=[107m[30m) else (set linuxishclr2=[0m)
        set linuxishclred=[91m& set linuxishclr=[92m
    ) else (set linuxboot=false)
)

rem check simpleboot
if "%linuxboot%"=="true" if "%batbootargumentbad%"=="false" (echo [%linuxishclr%info%linuxishclr2%] Linux-ish Boot Loader is just now started.)
>nul 2>&1 find "rawboot=false" %Settingsfile%
if "!errorlevel!"=="0" (
    >nul 2>&1 find "s5_simpleboot=true" %Settingsfile%
    if "!errorlevel!"=="0" (
        if not "%linuxboot%"=="true" (
            set simpleboot=true
        )
    )
)

rem check rawboot
>nul 2>&1 find "bootanimation=true" %Settingsfile%
if "!errorlevel!"=="0" (
    >nul 2>&1 find "s5_rawboot=true" %Settingsfile%
    if "!errorlevel!"=="0" (
        if not "%linuxboot%"=="true" (
            if not "%simpleboot%"=="true" (
                @echo on
                set rawboot=true
            )
        )
    )
)
setlocal disabledelayedexpansion
if "%linuxboot%"=="true" if "%batbootargumentbad%"=="false" ((echo [%linuxishclr%info%linuxishclr2%] Bootanimation Checked...))



rem boot message
if not exist %Settingsfile%  (
    if not exist %FirstSTFsfile% (
        if not "%batbootargumentbad%"=="false" (echo �Z�b�g�A�b�v�̏�����... 1/2)
    ) else (title �J�[�\���ւ� ^| ���΂炭���҂���������...& echo �J�[�\���ւ� ^| ������... 1/2)
)
if exist %Settingsfile% if not "%linuxboot%"=="true" (if not "%batbootargumentbad%"=="false" (title �J�[�\���ւ� ^| ������...& echo ���΂炭���҂���������... 1/2)) else (if not "%batbootargumentbad%"=="false" (title �J�[�\���ւ� ^| ������...))
rem chenge the boot message if it is the first time, or if a value is defined in batbotpowershell, or at boot up
if not exist %Settingsfile% set firststartbat=yes
if "%batbootargumentbad%"=="false" (
if not "%linuxboot%"=="true" (
if not "%firststartbat%"=="yes" (
if "%bootbatnow%"=="yes" (cls & echo ���΂炭���҂���������... 2/2)
) else (
    if not defined Powersheller (
        if not exist %FirstSTFsfile% (
        cls & echo �Z�b�g�A�b�v�̏�����... 2/2
        ) else (cls & echo ���΂炭���҂���������... 2/2)
    )
)
)
)
if "%linuxboot%"=="true" if "%batbootargumentbad%"=="false" ((echo [%linuxishclr%info%linuxishclr2%] Boot Message IS NO MORE WORKING...))



:batbootVerifyerrorhandlersafe
rem Processing User Arguments
setlocal enabledelayedexpansion
set "arguments="
for %%i in (%*) do (
    set "arguments=!arguments! %%i"
)
if not "%~1"=="" (set "arguments=%arguments:~1%")
setlocal disabledelayedexpansion
rem Start Error Handler
if not "%1"=="BatBootErrorHandlerArgument1908" (powershell -command "try {$process = Start-Process \"$env:%~dp0%~n0%~x0\" -ArgumentList \"BatBootErrorHandlerArgument1908 ${env:arguments}\" -NoNewWindow -Wait -PassThru; exit $process.ExitCode} catch {exit 1}")
if not "%1"=="BatBootErrorHandlerArgument1908" (if "%errorlevel%"=="1" (call :BSOD_Errors 6) else (call :BSOD_Errors 0 %errorlevel%)
    pause >nul
    echo �R�݂�������B����ł�񂾂��A����ŁB
    exit
)
set batbootargumentbad=
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Error_Handler is Working! :D)


:Arguments_Loader
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Arguments_Loader is Started...)
if "%~1"=="" goto :Arguments_Loaderend
if not "%~1"=="BatBootErrorHandlerArgument1908" (title �J�[�\���ւ� ^| Cursor Changer argment checking...)
setlocal enabledelayedexpansion
set i=0
for %%a in (%*) do (
  set /a i+=1
  set arg[!i!]=%%a
)

rem �z��̗v�f�����擾
set n=%i%
rem �z��̗v�f�����Ԃɏ���
:Arguments_Loaderbreak
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
    if "!current!"=="BatBootErrorHandlerArgument1908" (set Arguments_Loaderbreaked=true& goto :Arguments_Loaderbreak)
    set Arguments_Loaderbreaked=false
    if "!current!"=="bypsbootpwsh" (echo byps batbootpowershell��L���ɂ��܂����B& set disableexit=false& set argmentserror=false)
    if "!current!"=="enablesimpleboot" (echo simpleboot��L���ɂ��܂����B& set simpleboot=true& set argmentserror=false)
    if "!current!"=="devmode" (call :developermenu& set argmentserror=false)
    if "!current!"=="recovery" (echo recovery menu��L���ɂ��܂����B& set argmentserror=false& goto :Cursor_Changer_REmenu)
    if "!current!"=="help" (title �J�[�\���ւ� ^| �����̃w���v& call :batstarthelp& set argmentserror=false)
    if "!current!"=="bypsvck" (echo bypsvck��L���ɂ��܂����B& set bypasswinvercheck=true& set argmentserror=false)
    if "!current!"=="bypsadm" (echo bypsadm��L���ɂ��܂����B& set adminbypass=true& set adminbypass=false& set argmentserror=false)
    if "!current!"=="bypsloadsg" (echo bypsloadsg��L���ɂ��܂����B& set settingbypass=true& set argmentserror=false)
rem ��O����
   if "!argmentserror!"=="" (title �J�[�\���ւ� ^| �J�[�\������ �G���[&echo �s���Ȉ������w�肳��܂����I^(!current!^) �L���Ȉ������w�肵�Ă��������B ^(���ꂩ�A^"help^"�𗘗p���Ă��������B^)
      )
    )
  )
if %n% geq 0 (
    if not "!Arguments_Loaderbreaked!"=="true" (
        timeout /t 3 /nobreak >nul
    )
)
:Arguments_Loaderend
set n=
set argmentserror=
set Arguments_Loaderbreaked=
set arguments=
setlocal disabledelayedexpansion
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Arguments_Loader is done.)

call :batbootErrorHandlerCall
call :BSOD_Errors 1 %errorlevel%

:batbootErrorHandlerCall
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Error_Handler_Call is Started.)



:batbootcheckwinver
rem checking windows version
setlocal enabledelayedexpansion
if "%1"=="BatBootErrorHandlerArgument1908" if not "%1"=="dynamic" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Checking Windows Version...)
)
rem check windows 10 1803 or higher
for /f "tokens=6 delims=. " %%i in ('ver') do set version=%%i
if %version% gtr 17134 (set batbootcheckwinversafe=true) else (set batbootcheckwinversafe=false)
if "%batbootcheckwinversafe%"=="true" (goto :batbootcheckwinversafe) else (goto :batbootcheckwinverbad)


:batbootcheckwinverbad
if "%batbootargumentbad%"=="false" (title �J�[�\���ւ� ^| ������...) else if not "%1"=="BatBootErrorHandlerArgument1908" if "%1"=="dynamic" (exit /b 1)
if "%bypasswinvercheck%"=="true" (goto :batbootcheckwinverbadwarning)
rem check windows 8.1 or lower
for /f "usebackq delims=" %%a in (`ver`) do set version2=%%a
echo %version2% | find /i "Version 10.0" > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows 10, �Â��r���h) else (set "windowsverfilter=�Â����܂��IWindows XP�H")
echo %version2% | find /i "Version 6.3." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows 8.1)
echo %version2% | find /i "Version 6.2." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows 8)
echo %version2% | find /i "Version 6.1." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows7)
echo %version2% | find /i "Version 6.0." > nul
if "%errorlevel%"=="0" (set windowsverfilter=windows vista)
rem winver check failed message
title �J�[�\���ւ� ^| Windows �o�[�W�����G���[�I
cls
echo �J�[�\���ւ��͂��g����Windows�̃o�[�W�������T�|�[�g���Ă��܂���I
echo (%windowsverfilter%)
pause
cls
echo �J�[�\���ւ���Windows 10 1803�ȍ~��Windows���T�|�[�g���Ă��܂��I
echo (�r���h 17134 �ȍ~�B���Ȃ������g����Windows�̓r���h %version% �ł�^^!)
pause
cls
echo ��������Â��o�[�W���� (�Ⴆ�� windows 7, windows 8, 8.1, ���ł�) �̓T�|�[�g����Ă��܂���B
pause
cls
echo ���g����Windows���A�b�v�f�[�g���Ă��������B
echo �������̃��b�Z�[�W��Windows 10 1803�ȍ~�𗘗p���Ă���̂ɕ\������Ă���ꍇ�́AGithub��issue�ɂĕ񍐂��Ă��������B
pause
call :exit 1



:batbootcheckwinverbadwarning
cls
rem �x�����b�Z�[�W (winvercheck�Ɉᔽ���Ă����Ԃ�byps���悤�Ƃ����ۂ�)
set selected=
cls
echo.
echo                                    �x��
echo.
echo ���Ȃ������g����Windows�̃o�[�W���� (%windowsverfilter%)�̓J�[�\���ւ��ɑΉ����Ă��Ȃ��悤�ł��I
echo ������bypsvck�𗘗p���Ă���悤�ł����A���̂܂ܑ��s����ƒv���I�Ȗ��ɑ�������\�������ɍ����ł��B
echo ���ɑ��s�����ꍇ�A���̌�Ɉ����N���������ɑ΂���ӔC�̓J�[�\���ւ��̊J���҂ł���tamago_1908�͕����܂���B
echo.
echo ����ł����s���܂����H
set /p selected=Y or N : 
if %selected%==n exit 1
if %selected%==y goto :batbootcheckwinversafe
if %selected%== echo what? "Y" or "N".& pause & goto :batbootcheckwinverbadwarning


:batbootcheckwinversafe
setlocal disabledelayedexpansion
if "%batbootargumentbad%"=="false" (title �J�[�\���ւ� ^| Cursor Changer Preparing...) else if not "%1"=="BatBootErrorHandlerArgument1908" if "%1"=="dynamic" (exit /b 0)
set batbootcheckwinversafe=& set version=& set version2=
if "%1"=="dynamic" (exit /b)
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] WinverCheck is done.)


rem �J�[�\���ւ����������s
rem �{���� (�ϐ��̃Z�b�g�Ƃ��A�O�i�K)
set version=
set bootbatnow=yes
set Powersheller_passed=false
if not exist %Settingsfile% set checkupdatetoggle=false& goto :Powersheller
if exist %Settingsfile% find "CheckUpdate=true" %Settingsfile% > nul
if "%errorlevel%"=="0" (set checkupdatetoggle=true) else (set checkupdatetoggle=false)
if "%disableexit%"=="false" (goto :Powersheller_end)

:Powersheller
if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Powersheller is started...)
set Powersheller_passed=false
if not "%Powersheller%"=="OOBEMusic" (
    if "batverdev"=="beta" (
    set "batverforpowersheller=%batver:��=.b%"
) else (set "batverforpowersheller=%batver%")
)

rem startid~powershell �܂ł̃R�[�h�͂��炵�Ă͂����Ȃ��@����ȑO������Ȍ�Ȃ�ok
:: StartID1908
call :getLineNumber startLine StartID1908 0
goto :Powershellerendcode
:Powershellercodestart
set /a startline=startline+5& set /a endline=endline-3
if "%Powersheller%"=="OOBEMusic" (start /min powershell.exe  -noexit -NoProfile -ExecutionPolicy Unrestricted "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*&goto :Powersheller_end)
if "%checkupdatetoggle%"=="true" (for /f "delims=" %%a in ('powershell -NoProfile "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*') do set Updateinfo=%%a&goto :Powersheller_end) else (powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[System.Management.Automation.ScriptBlock]::create((Get-Content \"%~f0\" -TotalCount $env:endline|Where-Object{$_.readcount -gt $env:startline }) -join \"`n\");&$s" %*&goto :Powersheller_end)


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


function RefreshCursor {
Add-Type @"
using System;
using System.Runtime.InteropServices;
public class User32 {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, IntPtr lpvParam, int fuWinIni);
}
"@

# SPI_SETCURSORS = 0x0057 (Refresh Cursor, using winapi)
$SPI_SETCURSORS = 0x0057
$SPIF_SENDCHANGE = 0x02

# �J�[�\���ݒ���ēK�p
[User32]::SystemParametersInfo($SPI_SETCURSORS, 0, [IntPtr]::Zero, $SPIF_SENDCHANGE) | Out-Null
}



function Updater {
    # Check for updates of Cursor Changer with GitHub API, But won't do update. Just check.
    $repo = "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest"
    try{$file = (Invoke-RestMethod -Uri $repo -Method Get -Headers @{'Accept'='application/vnd.github.v3+json'}).assets | Where-Object { $_.name -like "Cursor.Changer.*" }
    }catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}


    $fileVersion = $file.name -replace "Cursor\.Changer\.|\.bat", ""
    $batVersion = "$env:batverforpowersheller"
    $batName = Get-Item "�J�[�\���ւ� *.bat"

    if ("$fileVersion" -eq "$batVersion") { return "null" }

    if ($file.name -match "^Cursor\.Changer\..*\.bat$") {
        $fileverArray = $fileVersion -split "\."
        $batverArray = $batVersion -split "\."

        # Function to classify and compare version elements
        function Compare-VersionElement {
            param($a, $b)

            $isANumber = $a -as [int]
            $isBNumber = $b -as [int]

            if ($isANumber -and $isBNumber) {
                return [math]::Sign($isANumber - $isBNumber)
            } elseif ($a -match "^[a-z]+[0-9]*$" -and $b -match "^[a-z]+[0-9]*$") {
                return [math]::Sign([string]::Compare($a, $b))
            } elseif ($a -match "^[a-z]+$" -and $isBNumber) {
                return 1
            } elseif ($isANumber -and $b -match "^[a-z]+$") {
                return -1
            } else {
                return [string]::Compare($a, $b)
            }
        }

        # Function to check if version is beta
        function Is-Beta($versionArray) { return ($versionArray[-1] -match "^[a-z][0-9]*$") }

        $isFileBeta = Is-Beta($fileverArray)
        $isBatBeta = Is-Beta($batverArray)

        # Compare version arrays
        for ($i = 0; $i -lt [Math]::Max($fileverArray.Length, $batverArray.Length); $i++) {
            $fileElement = if ($i -lt $fileverArray.Length) { $fileverArray[$i] } else { "0" }
            $batElement = if ($i -lt $batverArray.Length) { $batverArray[$i] } else { "0" }
            $comparisonResult = Compare-VersionElement $fileElement $batElement

            if ($comparisonResult -gt 0) {
                return "batbeta=$isFileBeta,updateavailable=true,updatemyversion=$batVersion,updateversion=$fileVersion"
            } elseif ($comparisonResult -lt 0) { return "die" }
            if ($i -eq [Math]::Max($fileverArray.Length, $batverArray.Length)) { return "null" }
        }
    }
}


function Fullupdater {
    Write-Host "�A�b�v�f�[�g���m�F��...`n"
    # check the update of Cursor Changer with github api, and Update it.
    $repo = "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest"
    try{$file = (Invoke-RestMethod -Uri $repo -Method Get -Headers @{'Accept'='application/vnd.github.v3+json'}).assets | Where-Object { $_.name -like "Cursor.Changer.*" }
    }catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] You have exceeded the GitHub API rate limit. This may be because you have checked for updates too frequently. Please wait for an hour and try again." -foregroundcolor red}else{Write-Host "[ERROR] Oops, something went wrong. You can try again later. or check the internet connection. `nError log : $_" -foregroundcolor red};break}


    $fileVersion = $file.name -replace "Cursor\.Changer\.|\.bat", ""
    $batVersion = "$env:batverforpowersheller"
    $batName = Get-Item "�J�[�\���ւ� *.bat"

    if ($file.name -match "^Cursor\.Changer\..*\.bat$") {
        $fileverArray = $fileVersion -split "\."
        $batverArray = $batVersion -split "\."

        # Function to classify and compare version elements
        function Compare-VersionElement {
            param($a, $b)

            $isANumber = $a -as [int]
            $isBNumber = $b -as [int]

            if ($isANumber -and $isBNumber) {
                return [math]::Sign($isANumber - $isBNumber)
            } elseif ($a -match "^[a-z]+[0-9]*$" -and $b -match "^[a-z]+[0-9]*$") {
                return [math]::Sign([string]::Compare($a, $b))
            } elseif ($a -match "^[a-z]+$" -and $isBNumber) {
                return 1
            } elseif ($isANumber -and $b -match "^[a-z]+$") {
                return -1
            } else {
                return [string]::Compare($a, $b)
            }
        }

        # Function to check if version is beta
        function Is-Beta($versionArray) { return ($versionArray[-1] -match "^[a-z][0-9]*$") }

        $isFileBeta = Is-Beta($fileverArray)
        $isBatBeta = Is-Beta($batverArray)

        # Compare version arrays
        for ($i = 0; $i -lt [Math]::Max($fileverArray.Length, $batverArray.Length); $i++) {
            $fileElement = if ($i -lt $fileverArray.Length) { $fileverArray[$i] } else { "0" }
            $batElement = if ($i -lt $batverArray.Length) { $batverArray[$i] } else { "0" }
            $comparisonResult = Compare-VersionElement $fileElement $batElement

            if ($comparisonResult -gt 0) {
                Write-Host "�A�b�v�f�[�g�����p�\�ł��B���݂̃o�[�W�����́A `"$($batVersion)`"�ŁA�A�b�v�f�[�g���ꂽ�o�[�W������ `"$($fileVersion)`"�ł��B`n"
                Start-Sleep 1
                Changelog
                Start-Sleep 2

                if ($isFileBeta) { Write-Host "[TIP] ���̃A�b�v�f�[�g�̓x�[�^�łł��B�Ȃ̂ŁA�ꕔ�s����ȕ���������\��������܂��B`n" -ForeGroundColor DarkGray}

                $answer = Read-Host "�A�b�v�f�[�g���܂����H���A�A�b�v�f�[�g���C���X�g�[������Ƌ����I�ɉp��łւƕύX����܂��B (y or n)"
                if ($answer -eq "y") {
                    $downloadFile = Join-Path (Join-Path $env:USERPROFILE "Downloads") $file.name
                    Invoke-WebRequest -Uri $file.url -OutFile $downloadFile -Headers @{'Accept'='application/octet-stream'}
                    Move-Item $downloadFile (Join-Path (Split-Path $batName) "Cursor.Changer.$fileVersion.bat") -Force
                    Remove-Item "�J�[�\���ւ� $batVersion.bat" -Force
                    Write-Host "�A�b�v�f�[�g�͊������܂����B`n"
                    Start-Sleep 2
                    Write-Host "�ċN����..."
                    PowerShell -WindowStyle Hidden -Command Exit
                    Start-process "�J�[�\���ւ� $fileVersion.bat"
                    Killwhole
                } else {
                    Write-Host "�A�b�v�f�[�g�̓L�����Z������܂����B`n"
                    Start-Sleep 2
                    return
                }
            } elseif ($comparisonResult -lt 0) {
                Write-Host "[ERROR] ���Ȃ��̃o�[�W���� ($($batVersion)) �́A�A�b�v�f�[�g�t�@�C��������s ($($fileVersion)) ���Ă��܂��I(���炭�A���Ȃ��̓J�[�\���ւ��̃o�[�W�������̈ӂɕς����̂ł��傤...)`n" -ForegroundColor Red
                Start-Sleep 2
                return
            }
        }

        if ($i -eq [Math]::Max($fileverArray.Length, $batverArray.Length)) {
            Write-Host "���łɍŐV�o�[�W�����ł��I (`"$($batVersion)`") �A�b�v�f�[�g�͕K�v����܂���B`n"
            Start-Sleep 2
        }
    }
}


function Doupdate {
    $repo = "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest"
    try{$file = (Invoke-RestMethod -Uri $repo -Method Get -Headers @{'Accept'='application/vnd.github.v3+json'}).assets | Where-Object { $_.name -like "Cursor.Changer.*" }
    }catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g�����ɓ��B���܂����B���ꂪ�Ӗ�����̂͗v����ɁA�ꎞ�Ԉȓ��ɑ�ʂɃA�b�v�f�[�g���m�F���߂��A�Ƃ������Ƃł��B�ꎞ�ԂقǊԂ�u�����̂��A�ēx�A�b�v�f�[�g���m�F���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
    $fileVersion = $file.name -replace "Cursor.Changer\.|\.bat", ""
    $batVersion = "$env:batverforpowersheller"
    $batName = Get-Item "�J�[�\���ւ� *.bat"
    $downloadFolder = Join-Path $env:USERPROFILE "Downloads"
    $downloadFile = Join-Path $downloadFolder $file.name
    Invoke-WebRequest -Uri $file.url -OutFile $downloadFile -Headers @{'Accept'='application/octet-stream'}
    $newBatName = "�J�[�\���ւ� $fileVersion.bat"
    Move-Item $downloadFile (Join-Path (Split-Path $batName) ("$newBatName")) -Force
    Remove-Item "�J�[�\���ւ� $fileVersion.bat" -Force
    Write-Host "�A�b�v�f�[�g�͊������܂����B`n"
    Start-Sleep 2
    Write-Host "�ċN����..."
    PowerShell -WindowStyle Hidden -Command Exit
    Start-process "Cursor.Changer.$fileVersion.bat"
    Killwhole
}



function OOBEMusic {
# Create a new WebClient instance
$webClient = New-Object System.Net.WebClient

# Prepare a memory stream to hold the downloaded data
$memoryStream = New-Object System.IO.MemoryStream

# Helper function to download data with progress reporting
function DownloadDataWithProgress($url, $memoryStream) {
    try {
        $response = $webClient.OpenRead($url)
        $totalBytes = [int]$webClient.ResponseHeaders["Content-Length"]
        $buffer = New-Object byte[] 8192
        $bytesRead = 0
        $totalRead = 0

        while (($bytesRead = $response.Read($buffer, 0, $buffer.Length)) -gt 0) {
            $memoryStream.Write($buffer, 0, $bytesRead)
            $totalRead += $bytesRead
            $progress = [math]::Round(($totalRead / $totalBytes) * 100)
            [Console]::SetCursorPosition(0, [Console]::CursorTop)
            Write-Host "���y���_�E�����[�h��... $progress% " -NoNewline
        }

        $memoryStream.Position = 0
        $response.Close()
        Write-Host "`n�_�E�����[�h�����I    ���Ԃ�....."
    } catch {
        $errorMsg = if ($_.Exception.Response.StatusCode.Value__ -eq 403) {
            "[ERROR] github��API���[�g���~�b�g�ɓ��B���܂����I���ꂪ�Ӗ�����̂͗v����ɂ��Ȃ��͉��y���Đ����߂����Ƃ������Ƃł��B���y�Ȃ��ő��s���邩�A�ꎞ�Ԃقǌ�ɂ�����x��蒼���Ă��������B"
        } else {
            "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_"
        }
        Write-Host $errorMsg -ForegroundColor Red
        Write-Host "�����L�[�������ďI��..."
        $host.UI.RawUI.ReadKey() | Out-Null
        exit
    }
}

# Download data with progress reporting
DownloadDataWithProgress "https://raw.githubusercontent.com/tamago1908/Cursor-Changer.bat/main/resource/Windows_XP_OOBE_for_Cursor_Changer.wav" $memoryStream

# Define the type for playing audio
Add-Type -TypeDefinition @"
using System;
using System.IO;
using System.Media;

namespace ConsoleApp
{
    public class Program
    {
        public static SoundPlayer player;
        
        public static void PlayAudioFromBytes(byte[] data)
        {
            if (data == null || data.Length == 0)
            {
                throw new ArgumentException("Buffer cannot be null or empty.", "data");
            }
            using (MemoryStream stream = new MemoryStream(data))
            {
                player = new SoundPlayer(stream);
                player.PlayLooping(); 
            }
        }

        public static void StopAudio()
        {
            if (player != null)
            {
                player.Stop();
            }
        }
    }
}
"@

# Play the downloaded audio
try {
    [ConsoleApp.Program]::PlayAudioFromBytes($memoryStream.ToArray())
    cls
    Write-Host "���y���Đ����Ă��܂��B`n���y���~�߂����ꍇ�A����powershell�E�B���h�E���I�����Ă��������B"
} catch {
    Write-Host "[ERROR] ���y�̍Đ��Ɏ��s���܂����B�t�@�C�������������A��łȂ������m�F���Ă��������B" -ForegroundColor Red
    Write-Host "�����L�[�������ďI��..."
    $host.UI.RawUI.ReadKey() | Out-Null
    exit
}

# Monitor cmd.exe process
$pid1 = (Get-WmiObject win32_process -filter "processid=$pid").parentprocessid; $pid2 = (Get-WmiObject win32_process -filter "processid=$pid1").parentprocessid
while ($true) {
    Start-Sleep -Seconds 1
    if (-not (Get-Process -pid $pid2 -ErrorAction SilentlyContinue)) {
        [ConsoleApp.Program]::StopAudio()
        exit
    }
  }
}


Function Killwhole {
    Write-Host "`n�V���b�g�_�E����..."
    Start-Sleep 1
    $pid1 = (Get-WmiObject win32_process -filter "processid=$pid").parentprocessid
    $pid2 = (Get-WmiObject win32_process -filter "processid=$pid1").parentprocessid
    taskkill /pid $pid1 /pid $pid2 /pid $pid > $null 2>&1
}

Function Changelog {
    $h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=(irm -Uri "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest").body -split '\r\n' | Measure-Object | %{$_.Count + 22};$w.BufferSize=$s;
    try{if($env:wmodetoggle -eq "false"){Write-Host "�`�F���W���O :" -foregroundcolor white}elseif($env:wmodetoggle -eq "true"){Write-Host "Change Log :" -foregroundcolor black }else{Write-Host "Change Log :" -foregroundcolor white};$e=[char]27;$clr="$e[7m";$clred="$e[91m";$clrgrn="$e[92m";$clryel="$e[93m";$clrmag="$e[95m";$clrgra="$e[90m";$clrcyan="$e[96m";$c="$e[0m";if($env:wmodetoggle -eq "true"){$clr="$e[100m$e[97m";$c="$e[0m$e[107m$e[30m"};foreach($s in (irm -Uri "https://api.github.com/repos/tamago1908/Cursor-Changer.bat/releases/latest").body -split '\r\n'){if($s -match "####"){write-host "$clrcyan$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match ">"){write-host "$clred$($s -replace '\>', '')$c" `n -NoNewline}elseif($s -match "###"){write-host "$clryel$e[1m$($s -replace '(^\#+)|(\#+$)', '')$c" `n -NoNewline}elseif($s -match "___"){write-host "$clrgra--------------------------------------------------$c" `n -NoNewline}else{$s=$s -replace "\*{3}(.+?)\*{3}", "$e[3m;1m`$1$c";$s=$s -replace "\*{2}(.+?)\*{2}", "$e[1m`$1$c";$s=$s -replace "^\s*-(\s+)(.*)", "$clred-$c`$1`$2";$s=$s -replace "\*+", "";write-host "$s" `n -NoNewline}};rv e,clr,clred,clrgrn,clryel,clrmag,clrgra,clrcyan,c,s}catch{if($_.Exception.Response.StatusCode.Value__ -eq 403){Write-Host "[ERROR] github��API���[�g���~�b�g�ɓ��B���܂����I���ꂪ�Ӗ�����̂͗v����ɂ��Ȃ��͉��y���Đ����߂����Ƃ������Ƃł��B���y�Ȃ��ő��s���邩�A�ꎞ�Ԃقǌ�ɂ�����x��蒼���Ă��������B" -foregroundcolor red}else{Write-Host "[ERROR] ���炩�̃G���[���������܂����B�C���^�[�l�b�g�ڑ����m�F���邩�Agithub�̃T�[�o�[�������Ă��Ȃ������m�F�����̂��A�ēx�����Ă��������B`n�G���[���O : $_" -foregroundcolor red};break}
}


if ($env:checkupdatetoggle -eq "true") {Disablemax; Updater} else {Disablemax}
if ($env:Powersheller -eq "RefreshCursor") {RefreshCursor}
if ($env:Powersheller -eq "Fullupdater") {Fullupdater}
if ($env:Powersheller -eq "OOBEMusic") {OOBEMusic}
if ($env:Powersheller -eq "Updater") {Updater}
if ($env:Powersheller -eq "Doupdate") {Doupdate}
if ($env:Powersheller -eq "Changelog") {Changelog}


:Powershellerendcode
:: EndID1908
call :getLineNumber endLine EndID1908 0
if "%Powersheller_passed%"=="false" (set Powersheller_passed=true& goto :Powershellercodestart) else (goto :Powersheller_end)

:GetLineNumber <resultVar> <uniqueID> [LineOffset]
SETLOCAL
for /F "usebackq tokens=1 delims=:" %%L IN (`findstr /N "%~2" "%~f0"`) DO set /a lineNr=%~3 + %%L
(
ENDLOCAL
 set "%~1=%LineNr%"
 exit /b
)

rem �{����
:Powersheller_end
set startline=& set endline=& set Powersheller_passed=& set batverforpowersheller=
if "%bootbatnow%"=="no" (set Powersheller=& exit /b)
if "%Powersheller%"=="OOBEMusic" (set Powersheller=& exit /b)
set Powersheller=

rem get updater variable
if "%checkupdatetoggle%"=="true" (goto :Powersheller_get_updater_variable) else (goto :Powersheller_get_updater_variable_end)

:Powersheller_get_updater_variable
rem powershell�̖߂�l��batch�̕ϐ��ɕϊ�
setlocal enabledelayedexpansion
if "%updateinfo%"=="null" (goto :Powersheller_get_updater_variable_end)
if "%updateinfo%"=="die" (set Punish=true& goto :Powersheller_get_updater_variable_end)
for /f "tokens=1-4 delims=," %%a in ("%updateinfo%") do (
  for /f "tokens=1-2 delims==" %%x in ("%%a") do set "%%x=%%y"& for /f "tokens=1-2 delims==" %%x in ("%%b") do set "%%x=%%y"& for /f "tokens=1-2 delims==" %%x in ("%%c") do set "%%x=%%y"& for /f "tokens=1-2 delims==" %%x in ("%%d") do set "%%x=%%y"
)
setlocal disabledelayedexpansion
set updatemyversion=%batver:��=.b%

:Powersheller_get_updater_variable_end
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Powersheller is Ended...)
set updateinfo=
set checkupdatetoggle=
cd /d %batchmainpath%

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
rem �܂��A����̃A�b�v�f�[�g�ɂ���āA%FirstSTFsfile%�ɂ�dogcheck���ǉ����ꂽ�̂ŁA�܂��ݒ�t�@�C����r���ō폜������Ȃ�Ă��Ƃ����ɂ����Ȃ����B

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
rem %Settingsfile%�Ɋ܂܂�Ă���ݒ肪�S���������Ă���ꍇ�́A%Settingsfile%���쐬���Ȃ����@�\�B
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
echo.&echo [%linuxishclr%info%linuxishclr2%] Initial Process ended!&echo.
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] SAB_Manager Calling...&echo.)
)
)
rem Detects whether this is the first start
if exist %Settingsfile% set firststartbat=no& set bootbatnow=yes& goto :batstart
if not exist %Settingsfile% (
if exist %FirstSTFsfile% goto :settingloads
)
if not defined dummy (echo [38;2;5;5;5myou know what i HATE? that's [3mbepis[0m[38;2;5;5;5m.)
if not defined dummy (echo [38;2;5;5;5mTHE TASTE, the smell, the texture... hey.... your [3mdrooling[0m[38;2;5;5;5m......)
ping -n 1 -w 500 localhost >nul
cls


:CursorChangerOOBE_Animation
setlocal enabledelayedexpansion
rem Play CursorChangerOOBE_Animations that appear slowly
if not defined dummy (set /p nothing=[?25l<nul)
set /a count+=10
set clresc=%count%;%count%;%count%
set "show=[2;24H[38;2;%clresc%m�J�[�\���ւ� %batver% �ւ悤���� [0m"
echo.
echo %show%
rem call background_menu to drew bg
call :Background_menu 1
if "%count%" == "200" (ping -n 2 -w 500 localhost >nul& set count=& goto :CursorChangerOOBE_Animation2) else (
    ping -n 0 -w 500 localhost >nul
)
goto :CursorChangerOOBE_Animation

:CursorChangerOOBE_Animation2
rem Play CursorChangerOOBE_Animations that appear slowly but more darker
set /a count+=10
set clresc=%count%;%count%;%count%
set "show2=[5;26H[38;2;%clresc%m[�����L�[�������Ďn�߂�] [0m"
echo.
echo %show%
echo.& echo.
echo %show2%
if "%count%" == "120" (
    set clresc=& pause >nul& echo.& echo %show%& ping -n 1 -w 500 localhost >nul
    set count=200& set count2=120& set clresc=204;204;204
    goto :CursorChangerOOBE_Animation3
) else (
    ping -n 1 -w 500 localhost >nul & goto :CursorChangerOOBE_Animation2
)

:CursorChangerOOBE_Animation3
rem live together, die together.
set /a count-=10& set /a count2-=6
set clresc=%count2%;%count2%;%count2%
set "show2=[5;26H[38;2;%clresc%m[�����L�[�������Ďn�߂�] [0m"
echo.
echo %show%
echo.& echo.
echo %show2%
rem call background_menu to drew bg
call :Background_menu 1
if !count2! leq 12 (
    if !count! leq 20 (ping -n 1 -w 500 localhost >nul& set count=& set count2=0& set clresc=200;200;200& set clrmove=22& goto :CursorChangerOOBE_Animation4)
) else (
    ping -n 0 -w 500 localhost >nul & goto :CursorChangerOOBE_Animation3
)

:CursorChangerOOBE_Animation4
echo %show%
rem Play CursorChangerOOBE_Animations that move left
set "show=[2;%clrmove%H[38;2;%clresc%m�J�[�\���ւ� %batver% �ւ悤����   [0m"
set /a clrmove-=1
if %clrmove% equ 1 (
    goto :CursorChangerOOBE_Animation5
) else (
    ping -n 0 -w 500 localhost >nul & goto :CursorChangerOOBE_Animation4
)

:CursorChangerOOBE_Animation5
rem WOW IT CHANGED INTO SETUP!!!!!!!!!
ping -n 2 -w 500 localhost >nul & cls
set "show=[38;2;%clresc%m  �J�[�\���ւ� %batver% �Z�b�g�A�b�v [0m"
echo.
echo %show%
ping -n 2 -w 500 localhost >nul
set show=& set show2=& set clresc=& set clrmove=& set count2=& set count=
setlocal disabledelayedexpansion


:CursorChangerOOBEdev
rem Now, it's the beginning of a fucking trashy long goofy ahh idiot code.
title �J�[�\���ւ� %batver% �Z�b�g�A�b�v
if not defined dummy (set clr=[3m[97m&set clrhigh=[7m&set clrhighend=[0m&set clrwhi=[48;5;250m[30m&set clr2=[0m&set clrgra=[90m)
if not defined dummy (set moveline=[22;0H) else (set moveline=[22;0H)
if not defined dummy (set /p nothing=[?25l<nul)
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
if %ErrorLevel%==1 goto :OOBEmain
if %ErrorLevel%==2 goto :OOBESkip
if %ErrorLevel%==3 call :OOBEmainshutdown& timeout /t 1 /nobreak >nul&call :exit 

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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEsetting1toggle=false&set OOBEsetting2toggle=false&set OOBEsetting3toggle=false&set OOBEsetting4toggle=true&set OOBEsetting5toggle=true&set YourName=%Username%& goto :OOBEmain8
if %ErrorLevel%==2 color 07&cls&goto :CursorChangerOOBEdev
if %ErrorLevel%==3 color 07&cls&goto :CursorChangerOOBEdev

:OOBEmain
curl -silent http://www.msftconnecttest.com/connecttest.txt | find "Microsoft Connect Test" >nul
if "%errorlevel%"=="1" (call :OOBEmainblank & timeout /t 1 /nobreak >nul & goto :OOBEmain2)
curl -silent http://www.msftncsi.com/ncsi.txt | find "Microsoft NCSI" >nul
if "%errorlevel%"=="1" (call :OOBEmainblank & timeout /t 1 /nobreak >nul & goto :OOBEmain2)
ping -n 1 google.com >nul
if "%errorlevel%"=="1" (call :OOBEmainblank & timeout /t 1 /nobreak >nul & goto :OOBEmain2)
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
echo.
echo          %clrgra%(Y�������Ɩ�15MB���x�̃_�E�����[�h���������܂��B)%clr2%
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
if %ErrorLevel%==1 goto :OOBEmainmusic
if %ErrorLevel%==2 call :OOBEmainblank&timeout /t 1 /nobreak >nul&goto :OOBEmain2


:OOBEmainmusic
call :OOBEmainmusicmessage
set Powersheller=OOBEMusic&call :Powersheller
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


:OOBEmainshutdown
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
echo.
echo   Cursor Changer %batver% Setup
echo ================================O
echo.
echo.
echo          �V���b�g�_�E����...
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
echo          �A���`�E�B���X�\�t�g���m�F����
echo          Github���L�����ǂ����m�F����
echo          Github��API���[�g�����ɓ��B���Ă��Ȃ����ǂ���
echo          Powershell�����p�\���ǂ���
echo.
echo          (5�b��ɃZ�b�g�A�b�v�𑱍s���܂�)
echo.
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
echo          %Settingsfile%��%FirstSTFsfile%�̓�ł��B
echo.
echo          %Settingsfile%�̓J�[�\���ւ��̐ݒ��ۑ����Ă��܂��B
echo          ���̃t�@�C���͔��ɏd�v�ȃt�@�C���ł��B
echo.
echo          %FirstSTFsfile%�̓J�[�\����ύX�������ǂ����̔���ɗ��p���Ă��܂��B
echo          ������܂��d�v�ȃt�@�C���ł��B
echo.
echo          �������[�U�[(%USERNAME%�A���Ȃ��ł�)�������̃t�@�C�����폜����ƁA
echo          ���̃J�[�\���ւ��͐���ɓ��삵�Ȃ��Ȃ�ꍇ������܂��B
echo          �ł�����A�����̃t�@�C�����΂ɍ폜���Ȃ��ł��������B��΂ɁB
echo.
echo          (Y �L�[�ő��s)
echo.
set /p nothing=%clr2%%clrwhi%     Y=���s                                                                  1/3%moveline%%clrwhi% <nul&choice /c Y /n >nul
if %ErrorLevel%==1 goto :OOBEmain3


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
if %ErrorLevel%==1 goto :OOBEmain4


:OOBEmain4
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 1/5 (���ӎ����̊m�F)
echo.
echo.
echo          ���̃J�[�\���ւ���windows 10 1803�ȍ~�ł̓���𐄏����Ă��܂��B
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
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain5_1
if %ErrorLevel%==2 goto :OOBEmain5ifno


:OOBEmain5ifno
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain5_1
if %ErrorLevel%==2 call :OOBEmainshutdown & timeout /t 1 /nobreak >nul&call :exit 


:OOBEmain5_1
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
echo.
echo.
echo          �J�[�\���ւ������Ȃ��̎������ƌĂ�ŗ~����������͂ł��܂��B
echo          �f�t�H���g�ł́A�J�[�\���ւ��͂��Ȃ��̂��Ƃ�"%USERNAME%"�ƌĂт܂��B
echo          �ύX���܂����H
echo.
echo.
echo          (Y=�͂��A�ύX���܂��B)
echo          (N=�������A���̂܂܂ŁB)
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�͂�     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain5_2
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain6


:OOBEmain5_2
set YourName=
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
echo.
echo.
echo          �ł́A�ȉ��ɂȂ�ƌĂ΂ꂽ��������͂��Ă��������B
echo.
echo.
echo          ���͗� :
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
if not defined dummy (
set /p nothing=%clr2%%clrwhi%                                                                                %moveline%%clrwhi% <nul&set /p YourName=%clr2%[10;18H
)
if %ErrorLevel%==2 goto :OOBEmain5_2c


:OOBEmain5_2c
if not defined Yourname goto :OOBEmain5_2c_error
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
echo.
echo.
echo          "%YourName%"�Ɠ��͂��܂����B
echo          ����ł����ł����H
echo.
echo.
echo          (Y=�͂��I)
echo          (N=������)
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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain6
if %ErrorLevel%==2 goto :OOBEmain5_2


:OOBEmain5_2c_error
color 07
cls
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 2/5 (���̊m�F)
echo.
echo.
echo          ���Ȃ��̖��O�ɂ͕K����������͂��Ă��������B
echo          ���O�Ȃ��ő��s���邱�Ƃ͂ł��܂���I
echo.
echo.
echo          (�����L�[�������đ��s...)
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
set /p nothing=%clr2%%clrwhi%                                                                                %moveline%%clrwhi% <nul&pause >nul
goto :OOBEmain5_2



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
if %ErrorLevel%==1 goto :OOBEmain6theme1
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto :OOBEmain7


:OOBEmain6theme1
if "%OOBEundiscard%"=="true" (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto :OOBEmain7)
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
if %ErrorLevel%==1 goto :OOBEmain6theme2
if %ErrorLevel%==2 goto :OOBEmain6theme2
if %ErrorLevel%==3 goto :OOBEmain6theme2
if %ErrorLevel%==4 goto :OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto :OOBEmain6theme1


:OOBEmain6theme2
if "%OOBEundiscard%"=="true" (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto :OOBEmain7)
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
if %ErrorLevel%==1 goto :OOBEmain6theme2
if %ErrorLevel%==2 goto :OOBEmain6theme3
if %ErrorLevel%==3 goto :OOBEmain6theme2
if %ErrorLevel%==4 goto :OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto :OOBEmain6theme2
if %ErrorLevel%==6 goto :OOBEmain6theme2confirm
if %ErrorLevel%==7 goto :OOBEmain6theme2confirm


:OOBEmain6theme3
if "%OOBEundiscard%"=="true" (call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&set OOBEundiscard=&goto :OOBEmain7)
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
if %ErrorLevel%==1 goto :OOBEmain6theme2
if %ErrorLevel%==2 goto :OOBEmain6theme3
if %ErrorLevel%==3 goto :OOBEmain6theme2
if %ErrorLevel%==4 goto :OOBEmain6theme3
if %ErrorLevel%==5 call :OOBEmain6themeifback&goto :OOBEmain6theme3
if %ErrorLevel%==6 goto :OOBEmain6theme3confirm
if %ErrorLevel%==7 goto :OOBEmain6theme3confirm


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
if %ErrorLevel%==1 goto :OOBEmain6theme2
if %ErrorLevel%==2 goto :OOBEmain6theme2
if %ErrorLevel%==3 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto :OOBEmain7
if %ErrorLevel%==4 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set oobetheme=dark&goto :OOBEmain7



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
if %ErrorLevel%==1 goto :OOBEmain6theme3
if %ErrorLevel%==2 goto :OOBEmain6theme3
if %ErrorLevel%==3 set oobetheme=white&call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain7
if %ErrorLevel%==4 set oobetheme=white&call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain7


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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain7CustomizeSettings
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain8

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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&set OOBEsetting1toggle=true&set OOBEsetting2toggle=false&set OOBEsetting3toggle=false&set OOBEsetting4toggle=true&set OOBEsetting5toggle=true&goto :OOBEmain8
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings1

:OOBEmain7CustomizeSettings
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
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
echo          I 1 �N�����ɃJ�[�\���ւ��ŋN��   I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEmain7CustomizeSettings1
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting1toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting1toggle%"=="false" (
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsettingclr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsettingclr2%I
echo          O================================O   �J�[�\���ւ��̋N����ɁA
echo          I%OOBEsetting2clr% 2 �N�����̃A�h�~��             %OOBEsetting2clr2%I   �J�[�\���ւ��ɑJ��
echo          O================================O   ���邩��؂�ւ��܂��B
echo          I%OOBEsetting3clr% 3 �N�����ɍX�V�m�F             %OOBEsetting3clr2%I   �L���ɂ���ƁA�J�[�\����������
echo          O================================O   �ύX�ł��܂��B
echo          I%OOBEsetting4clr% 4 Enter�̒����������m����@�\  %OOBEsetting4clr2%I
echo          O================================O   %clrgra%�����ɂ���̂𐄏�%OOBEsettingclr2%
echo          I%OOBEsetting5clr% 5 �N�����̃A�j���[�V����       %OOBEsetting5clr2%I
echo          O================================O
echo                       I  OK  I
echo                       O======O
echo.
echo.
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 1&goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEmain7CustomizeSettings2
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting2toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting2toggle%"=="false" (
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsetting1clr2%I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 2&goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEmain7CustomizeSettings3
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting3toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting3toggle%"=="false" (
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsetting1clr2%I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 3&goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEmain7CustomizeSettings4
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting4toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting4toggle%"=="false" (
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsetting1clr2%I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 4&goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEmain7CustomizeSettings5
if "%oobetheme%"=="white" (color f0) else (color 07)
cls
if "%OOBEsetting5toggle%"=="true" (set OOBEsettingclr=[46m) else if "%OOBEsetting5toggle%"=="false" (
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
)
echo.
echo   �J�[�\���ւ� %batver% �Z�b�g�A�b�v
echo ====================================O
echo �Z�b�g�A�b�v�i�� : 4/5 (�ݒ�̃J�X�^�}�C�Y)
echo.
echo.
echo          O================================O   �ݒ�̃J�X�^�}�C�Y
echo          I%OOBEsetting1clr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsetting1clr2%I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettingsOK
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 call :OOBEsettingstoggle 5&goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

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
echo          I%OOBEsetting1clr% 1 �N�����ɃJ�[�\���ւ��ŋN��   %OOBEsetting1clr2%I
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
set /p nothing=%clr2%%clrwhi%     W,S �������� 1~5=������     Y=�؂�ւ�     N,B=�j��                        %moveline%%clrwhi% <nul&choice /c WS12345YNB6 /n >nul
if "%oobetheme%"=="white" (set OOBEsettingclr=[100m[97m&set OOBEsettingclr2=[0m[107m[30m)
if "%oobetheme%"=="dark" (set OOBEsettingclr=[7m&set OOBEsettingclr2=[0m)
if %ErrorLevel%==1 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettingsOK
if %ErrorLevel%==3 goto :OOBEmain7CustomizeSettings1
if %ErrorLevel%==4 goto :OOBEmain7CustomizeSettings2
if %ErrorLevel%==5 goto :OOBEmain7CustomizeSettings3
if %ErrorLevel%==6 goto :OOBEmain7CustomizeSettings4
if %ErrorLevel%==7 goto :OOBEmain7CustomizeSettings5
if %ErrorLevel%==8 goto :OOBEmain7CustomizeSettingsOKconfirm
if %ErrorLevel%==9 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==10 goto :OOBEmain7CustomizeSettingsdiscard
if %ErrorLevel%==11 goto :OOBEmain7CustomizeSettingsOK

:OOBEsettingstoggle
rem wtf?? goofy ahh if statements. well uh i mean, i dont know how to use "for" commands. so... u know, it cant be helped. fuckkkk
if "%1"=="1" (
    if "%OOBEsetting1toggle%"=="false" (
    if "%oobetheme%"=="white" (set OOBEsetting1clr=[100m[97m&set OOBEsetting1clr2=[0m[107m[30m)
    if "%oobetheme%"=="dark" (set OOBEsetting1clr=[7m&set OOBEsetting1clr2=[0m)
    set OOBEsetting1toggle=true
    ) else if "%OOBEsetting1toggle%"=="true" (
    if "%oobetheme%"=="white" (set OOBEsetting1clr=&set OOBEsetting1clr2=)
    if "%oobetheme%"=="dark" (set OOBEsetting1clr=&set OOBEsetting1clr2=)
        set OOBEsetting1toggle=false
    ) else set OOBEsetting1toggle=true
)
if "%1"=="2" (
    if "%OOBEsetting2toggle%"=="false" (
    if "%oobetheme%"=="white" (set OOBEsetting2clr=[100m[97m&set OOBEsetting2clr2=[0m[107m[30m)
    if "%oobetheme%"=="dark" (set OOBEsetting2clr=[7m&set OOBEsetting2clr2=[0m)
    set OOBEsetting2toggle=true
    ) else if "%OOBEsetting2toggle%"=="true" (
    if "%oobetheme%"=="white" (set OOBEsetting2clr=&set OOBEsetting2clr2=)
    if "%oobetheme%"=="dark" (set OOBEsetting2clr=&set OOBEsetting2clr2=)
        set OOBEsetting2toggle=false
    ) else set OOBEsetting2toggle=true
)
if "%1"=="3" (
    if "%OOBEsetting3toggle%"=="false" (
    if "%oobetheme%"=="white" (set OOBEsetting3clr=[100m[97m&set OOBEsetting3clr2=[0m[107m[30m)
    if "%oobetheme%"=="dark" (set OOBEsetting3clr=[7m&set OOBEsetting3clr2=[0m)
    set OOBEsetting3toggle=true
    ) else if "%OOBEsetting3toggle%"=="true" (
    if "%oobetheme%"=="white" (set OOBEsetting3clr=&set OOBEsetting3clr2=)
    if "%oobetheme%"=="dark" (set OOBEsetting3clr=&set OOBEsetting3clr2=)
        set OOBEsetting3toggle=false
    ) else set OOBEsetting3toggle=true
)
if "%1"=="4" (
    if "%OOBEsetting4toggle%"=="false" (
    if "%oobetheme%"=="white" (set OOBEsetting4clr=[100m[97m&set OOBEsetting4clr2=[0m[107m[30m)
    if "%oobetheme%"=="dark" (set OOBEsetting4clr=[7m&set OOBEsetting4clr2=[0m)
    set OOBEsetting4toggle=true
    ) else if "%OOBEsetting4toggle%"=="true" (
    if "%oobetheme%"=="white" (set OOBEsetting4clr=&set OOBEsetting4clr2=)
    if "%oobetheme%"=="dark" (set OOBEsetting4clr=&set OOBEsetting4clr2=)
        set OOBEsetting4toggle=false
    ) else set OOBEsetting4toggle=true
)
if "%1"=="5" (
    if "%OOBEsetting5toggle%"=="false" (
    if "%oobetheme%"=="white" (set OOBEsetting5clr=[100m[97m&set OOBEsetting5clr2=[0m[107m[30m)
    if "%oobetheme%"=="dark" (set OOBEsetting5clr=[7m&set OOBEsetting5clr2=[0m)
    set OOBEsetting5toggle=true
    ) else if "%OOBEsetting5toggle%"=="true" (
    if "%oobetheme%"=="white" (set OOBEsetting5clr=&set OOBEsetting5clr2=)
    if "%oobetheme%"=="dark" (set OOBEsetting5clr=&set OOBEsetting5clr2=)
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
echo          1 �ύX��̍ċN���̊m�F        : %OOBEsetting1toggle% %clrgra%(false������)%OOBEsettingclr2%
echo          2 �N�����̃A�h�~��            : %OOBEsetting2toggle% %clrgra%(false������)%OOBEsettingclr2%
echo          3 �N�����ɍX�V�m�F            : %OOBEsetting3toggle% %clrgra%(false������)%OOBEsettingclr2%
echo          4 Enter�̒����������m����@�\ : %OOBEsetting4toggle% %clrgra%(true������)%OOBEsettingclr2%
echo          5 �N�����̃A�j���[�V����      : %OOBEsetting5toggle% %clrgra%(true������)%OOBEsettingclr2%
echo.
echo          ���s����ƁA�����̐ݒ肪���ׂĐݒ�t�@�C���ɏ������܂�܂��B
echo          ��낵���ł����H %clrgra%(�ݒ�t�@�C���� "%batchmainpath%"�ɂ���܂��B) %OOBEsettingclr2%
echo.
echo          (Y=�͂�)
echo          (N=�������B����ς�ύX�������ł��B)
echo.
echo.
set /p nothing=%clr2%%clrwhi%     Y=�͂�     N=������                                                        %moveline%%clrwhi% <nul&choice /c YN /n >nul
if %ErrorLevel%==1 if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&goto :OOBEmain8
if %ErrorLevel%==2 goto :OOBEmain7CustomizeSettings1

:OOBEmain8
if "%oobetheme%"=="white" (color f0) else (color 07)
rem setting written, well, wtf is this?? so many goofy ahh if statement. hell no NOT AGAIN!!!!!!!!!!!!
if not exist %Settingsfile% (
    type nul > %Settingsfile%
    echo nodogcheckfor1234567890qwertyuiop >> %Settingsfile% 

    if defined YourName (
        echo YourName=%YourName% >> %Settingsfile%
    ) else if not defined (echo YourName=%USERNAME% >> %Settingsfile%)

    if "%OOBEsetting1toggle%"=="false" (
        echo BootAsCC=false >> %Settingsfile%
    ) else if "%OOBEsetting1toggle%"=="true" (
        echo BootAsCC=true >> %Settingsfile%
    ) else (echo BootAsCC=false >> %Settingsfile%)

    if "%OOBEsetting2toggle%"=="false" (
        echo admin=false >> %Settingsfile%
    ) else if "%OOBEsetting2toggle%"=="true" (
        echo admin=true >> %Settingsfile%
    ) else (echo admin=false >> %Settingsfile%)

    if "%OOBEsetting3toggle%"=="false" (
        echo CheckUpdate=false >> %Settingsfile%
    ) else if "%OOBEsetting3toggle%"=="true" (
        echo CheckUpdate=true >> %Settingsfile%
    ) else (echo CheckUpdate=false >> %Settingsfile%)

    if "%OOBEsetting4toggle%"=="false" (
        echo hatenakeikoku=false >> %Settingsfile%
    ) else if "%OOBEsetting4toggle%"=="true" (
        echo hatenakeikoku=true >> %Settingsfile%
    ) else (echo hatenakeikoku=true >> %Settingsfile%)

    if "%OOBEsetting5toggle%"=="false" (
        echo bootanimation=false >> %Settingsfile%
    ) else if "%OOBEsetting5toggle%"=="true" (
        echo bootanimation=true >> %Settingsfile%
    ) else (echo bootanimation=true >> %Settingsfile%)

    echo s5_linuxboot=false >> %Settingsfile%
    echo s5_simpleboot=false >> %Settingsfile%
    echo s5_rawboot=false >> %Settingsfile%
    echo HazimeBg=true >> %Settingsfile%
    
    if "%OOBEtheme%"=="dark" (
        echo wmode=false >> %Settingsfile%
        set wmodetoggle=false
    ) else if "%OOBEtheme%"=="white" (
        echo wmode=true >> %Settingsfile%
        set wmodetoggle=true
    ) else (echo wmode=false >> %Settingsfile%&set wmodetoggle=false)


if not exist %FirstSTFsfile% (
type nul > %FirstSTFsfile%
echo nodogcheckforfastboot >> %FirstSTFsfile%
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
if %ErrorLevel%==1 call :OOBEmainblank & timeout /t 1 /nobreak >nul&call :OOBEinitialization &set bootbatnow=yes&goto :batstart
if %ErrorLevel%==2 call :OOBEmainblank & timeout /t 1 /nobreak >nul&call :OOBEinitialization &set bootbatnow=yes&goto :batstart

:OOBEinitialization
if "%oobetheme%"=="white" (color f0) else (color 07) & cls
if not defined dummy (set /p nothing=[?25h<nul)
set clrgra=& set clrhigh=& set clrhighend=& set clrwhi=& set moveline=
set oobetheme=
set OOBEsetting1toggle=& set OOBEsetting2toggle=& set OOBEsetting3toggle=& set OOBEsetting4toggle=& set OOBEsetting5toggle=
set OOBEsetting1clr=& set OOBEsetting2clr=& set OOBEsetting3clr=& set OOBEsetting4clr=& set OOBEsetting5clr=
set OOBEsetting1clr2=& set OOBEsetting2clr2=& set OOBEsetting3clr2=& set OOBEsetting4clr2=& set OOBEsetting5clr2=
set OOBEsettingclr=& set OOBEsettingclr2=
set clr1=& set clresc=& set clrmove=& set clr2=&set clr=
2>nul taskkill /im powershell.exe >nul
mode con: cols=75 lines=25
exit /b



:Cursor_Changer_REmenu
cls
mode con: cols=75 lines=25
color 07
rem recovery menu for Cursor Changer, and recovery console
call :batbootcheckwinver dynamic
if "%errorlevel%"=="1" (goto :batbootcheckwinverbad)
if defined bootbatnow (set clr=[7m&set clr2=[0m) else (set clr=[7m&set clr2=[0m)
if not defined dummy (set /p nothing=[?25l<nul)
set bootbatnow=no& set rmsel=0
echo ���J�o���[���j���[��ǂݍ���ł��܂��B ���΂炭���҂���������...& timeout /t 1 /nobreak >nul
:Cursor_Changer_REmenu_main
cls
title �J�[�\���ւ� ^| ���J�o���[���j���[
:Cursor_Changer_REmenu_main_loop
if not defined dummy (set /p nothing=[?25l<nul)
if not defined dummy (set /p nothing=[H<nul)
for /l %%i in (9,1,10) do (set /p nothing=[%%i;7H                                                            [H<nul)
if %rmsel%==0 (set /p nothing=[9;22H ���݂͉����I������Ă��܂���B[H<nul)
if %rmsel%==1 (set /p nothing=[9;25H �J�[�\���ւ����ċN�����܂��B[10;22H ^(��{�I�ɂ͂��ꂪ�������߂ł��B^)[H<nul)
if %rmsel%==2 (set /p nothing=[9;28H �ݒ�����������܂��B[10;23H ^(�S�Ă̐ݒ�����������܂��B^)[H<nul)
if %rmsel%==3 (set /p nothing=[9;21H ���J�o���[�R���\�[���Ɉړ����܂��B[10;17H ^(�f�o�b�O�ړI�̃R�}���h�𗘗p�ł��܂��B^)[H<nul)
if %rmsel%==4 (set /p nothing=[9;26H ���j���[����ޏo���܂��B[10;29H ^(�V���b�g�_�E��^)[H<nul)
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[              
echo.
echo                            %rmcb1%        �ċN��        %clr2%
echo                            %rmcb2%     �ݒ�̏�����     %clr2%
echo                            %rmcb3% ���J�o���[�R���\�[�� %clr2%
echo                            %rmcb4%         �ޏo         %clr2%
echo.
echo                     1~4 �� WS �� �I���A E �� Y �� ����
echo.
echo.
choice /c 1234WSYE /n >nul
if %ErrorLevel%==1 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
if %ErrorLevel%==2 (set rmsel=2& set rmcb2=!clr!& set rmcb1=& set rmcb3=& set rmcb4=)
if %ErrorLevel%==3 (set rmsel=3& set rmcb3=!clr!& set rmcb1=& set rmcb2=& set rmcb4=)
if %ErrorLevel%==4 (set rmsel=4& set rmcb4=!clr!& set rmcb3=& set rmcb2=& set rmcb1=)
if %ErrorLevel%==5 (
    if %rmsel%==0 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
    if %rmsel%==1 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
    if %rmsel%==2 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
    if %rmsel%==3 (set rmsel=2& set rmcb2=!clr!& set rmcb1=& set rmcb3=& set rmcb4=)
    if %rmsel%==4 (set rmsel=3& set rmcb3=!clr!& set rmcb1=& set rmcb2=& set rmcb4=)
)
if %ErrorLevel%==6 (
    if %rmsel%==0 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
    if %rmsel%==1 (set rmsel=2& set rmcb2=!clr!& set rmcb1=& set rmcb3=& set rmcb4=)
    if %rmsel%==2 (set rmsel=3& set rmcb3=!clr!& set rmcb1=& set rmcb2=& set rmcb4=)
    if %rmsel%==3 (set rmsel=4& set rmcb4=!clr!& set rmcb1=& set rmcb2=& set rmcb3=)
    if %rmsel%==4 (set rmsel=4& set rmcb4=!clr!& set rmcb1=& set rmcb2=& set rmcb3=)
)
if %ErrorLevel%==7 (goto :Cursor_Changer_REmenu_main_Core)
if %ErrorLevel%==8 (goto :Cursor_Changer_REmenu_main_Core)
goto :Cursor_Changer_REmenu_main_loop

:Cursor_Changer_REmenu_main_Core
if %rmsel%==0 (set rmsel=1& set rmcb1=!clr!& set rmcb2=& set rmcb3=& set rmcb4=)
if %rmsel%==1 (set runningfromfulldebug=& set FromREConsole=& call :rebootbatch)
if %rmsel%==2 (goto :Cursor_Changer_REWipe)
if %rmsel%==3 (call :Cursor_Changer_REConsole& cls & goto :Cursor_Changer_REmenu_main_loop)
if %rmsel%==4 (goto :batshutdown)

:Cursor_Changer_REWipe
cls
title �J�[�\���ւ� ^| ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[                 
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
call :Wipealldeta
goto :Cursor_Changer_REWipeYippeee
)
if %ErrorLevel%==2 set rmsel=2& goto :Cursor_Changer_REmenu_main

:Cursor_Changer_REWipeYippeee
cls
title �J�[�\���ւ� ^| ���J�o���[���j���[
echo                     �J�[�\���ւ� %batver% ���J�o���[���j���[                 
echo.
echo.  
echo                               �ݒ�̏�������
echo                             ����Ɋ������܂����B
echo.
echo.
echo.
echo.
timeout /t 3 /nobreak >nul
set rmsel=2& goto :Cursor_Changer_REmenu_main


:Cursor_Changer_REConsole
cls
set selected=
set FromREConsole=true
mode con: cols=75 lines=25
color 07
set bootbatnow=no
if not defined dummy (set clr=[7m&set clr2=[0m) else (set clr=[7m&set clr2=[0m)
if not defined dummy (set /p nothing=[?25h<nul)
echo ���J�o���[�R���\�[����ǂݍ���ł��܂�...
timeout /t 2 /nobreak >nul
cls
:Cursor_Changer_REConsolemain
if not defined dummy (set /p nothing=[?25h<nul)
title �J�[�\���ւ� ^| ���J�o���[�R���\�[��
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
echo                                   ���s�������R�}���h����͂��Ă��������B
echo                                            "help" �Ɠ��͂����
echo                                       �S�R�}���h���X�g���Q�Ƃł��܂��B
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
if "%selected%"=="help" (goto :allcommands)
if "%selected%"=="exit" (set FromREConsole=& set rmsel=3& exit /b)
if "%selected%"=="alldefnow1" (goto :AllDefult1)
if "%selected%"=="playdefboot" (set hatenakeikoku=0&cls&goto :firstboot)
if "%selected%"=="debugyesnow" (goto :kurogo)
if "%selected%"=="fulldebug" (goto :fulldebug)
if "%selected%"=="getadmin" (goto :batstartadm)
if "%selected%"=="restoresetting" (
call :Wipealldeta
echo �����B�����L�[�������đ��s...
pause >nul
)
if "%selected%"=="alldefdeletebat" (set hatenakeikoku=0&echo delete bat, confirm to type something...&pause&goto :alldefdeletefinish5)
if "%selected%"=="windowsfiltertest" (goto :batbootcheckwinverbad)
if "%selected%"=="funanimationdeb" (goto :batbootanimationfun)
if "%selected%"=="openie" (goto :openiedev)
if "%selected%"=="setenter" (echo.&set /p hatenakeikoku=pls type:&goto :hazimeboot) else (set selected= &echo �L���ȃR�}���h����͂��Ă��������B&goto :Cursor_Changer_REConsoleask)


rem O========================================= OOBE and Receovery Code Ended =================================================O


:Wipealldeta
rem Wipe Setting file
echo nodogcheckfor1234567890qwertyuiop > %Settingsfile%
echo YourName=%USERNAME% >> %Settingsfile%
echo BootAsCC=false >> %Settingsfile%
echo admin=false >> %Settingsfile%
echo CheckUpdate=false >> %Settingsfile%
echo hatenakeikoku=true >> %Settingsfile%
echo bootanimation=true >> %Settingsfile%
echo s5_linuxboot=false >> %Settingsfile%
echo s5_simpleboot=false >> %Settingsfile%
echo s5_rawboot=false >> %Settingsfile%
echo HazimeBg=true >> %Settingsfile%
echo wmode=false >> %Settingsfile%
exit /b


rem Detects settings related to prompts for administrative privileges,
:batstart
if "%linuxboot%"=="false" (mode con: cols=75 lines=25)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   & set ??????=�����ŉ������Ă���񂾁H �����ɂ���񂾂�H%username%.
if "%settingbypass%"=="true" (goto :hazimemenuskipboot)
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] admin checked.) else (cls)
rem �Ǘ��Ҍ����ݒ�̌��m
find "admin=true" %Settingsfile% > nul
if "%adminbypass%"=="true" (goto :gotadmin)
if "%errorlevel%"=="0" (goto :batstartadm) else (
call :SAB_Manager 0
goto :hazime
)


:batstartadm
if not "%linuxboot%"=="true" (cls)
rem �Ǘ��Ҍ����̎擾
if not "%linuxboot%"=="true" (echo copyright.�J�[�\���ւ� %batver% by tamago_1908)
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    goto :UACPrompt
) else ( goto :gotAdmin )
:UACPrompt
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Requesting Administrative privileges...)
powershell -NoProfile -Command "Start-Process '%~dp0%~n0%~x0' -Verb RunAs" >nul && PowerShell -WindowStyle Hidden -Command Exit && call :exit 0
echo.
if "%linuxboot%"=="true" (echo [%linuxishclred%ERROR%linuxishclr2%] Request for administrative privileges denied. & echo.) else (
echo �Ǘ��Ҍ����̗v�������ۂ���܂����B
echo ^(�q���g: �Ǘ��Ҍ����̗v���͐ݒ�Ŗ����ɂł��܂��B^)
)
timeout /t 2 /nobreak >nul
:gotAdmin
if not "%linuxboot%"=="true" (cls)
pushd "%CD%"
goto :hazime



:hazime
if "%alldefentered%"=="true" (
set alldefno2clr=
set alldefno2clr2=
set alldefclr=
set alldefclr2=
set alldefentered=
)
if "%settingbypass%"=="true" (goto :hazimemenuskipboot)
rem �ݒ�Ƃ��̑��̃��[�h
rem ����ǂݍ��݁A�ǂݍ��񂾌�ǂ���goto����������ϐ��ɑ���K�v set wantload=setting1 set whatloadgoto=hazime �� hazime�֌W�̏ꍇ�͂���I�����[
rem �J�[�\���̐F�Ɋւ��Ă̓��C���̕ύX�����ɂ͎������Ă��܂���B�ύX���Ă���hazime�ɖ߂��ė����悤�ɐ݌v���ĂȂ��̂ŁB
rem �ݒ��ǉ�����ꍇ�͊�{�R�s�y�ő��v�B�����A���j���[�̌����ڂƂ��ɂ��������̂ł̓R�[�h��ǉ����Ȃ��Ƃ����Ȃ�����
:settingloads
cd /d %batchmainpath%
if not exist %Settingsfile% (
cls
title �J�[�\���ւ� ^| �ݒ�G���[
echo �ݒ�t�@�C�������݂��܂���B
pause
echo ���炭�A����N���������ۂɂ��̂܂܃J�[�\���ւ�����Ă���ċN�����Ă��܂����̂������ł��傤�B���ꂩ�A�̈ӂɐݒ�t�@�C��������������...���Ȃ��Ƃ��A�ݒ�t�@�C�������݂��Ȃ��͎̂����ł��B
pause
cls
echo �ݒ�t�@�C�����Đ������܂��B���܂܂ł̐ݒ�͂��ׂč폜����܂��B
pause
cls
call :Wipealldeta
title �J�[�\���ւ� ^| ...
echo �Đ������������܂����B
pause
echo �ύX��K�p���邽�߁A�J�[�\���ւ����ċN�����Ă��������B
pause
call :exit 1 
)
if not exist %FirstSTFsfile% (
type nul > %FirstSTFsfile%
echo nodogcheckforfastboot >> %FirstSTFsfile%
)


rem uh oh
set Die=%random%& set Die2=%random%
if "%Die%"=="%Die2%" (title & color 04
    if not defined dummy (echo [0;0H)
    for /l %%i in (0,1,1000) do (set /p nothing= �����ɂ��� <nul)
timeout 2 /nobreak >nul & call :exit)
set die=& set die2=


if "%bootbatnow%"=="no" (goto :whatload) else (goto :setting1load)
:setting1load
set allsettingerror=0
find "BootAsCC=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting1onoff=�L��
if %ErrorLevel%==1 goto :setting1load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" if not "%bootbatnow%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting1 Loaded as "true")
call :SAB_Manager 1
goto :setting2load
)
goto :whatloadgoto


:setting2load
find "admin=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting2onoff=�L��
if %ErrorLevel%==1 goto :setting2load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting2 Loaded as "true")
call :SAB_Manager 2
goto :setting3load
) 
goto :whatloadgoto

:setting3load
find "CheckUpdate=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting3onoff=�L��
if %ErrorLevel%==1 goto :setting3load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting3 Loaded as "true")
call :SAB_Manager 3
goto :setting4load
) 
goto :whatloadgoto

:setting4load
find "hatenakeikoku=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting4onoff=�L��
if %ErrorLevel%==1 goto :setting4load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting4 Loaded as "true")
call :SAB_Manager 4
goto :setting5load
) 
goto :whatloadgoto

:setting5load
find "bootanimation=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5onoff=�L��
if %ErrorLevel%==1 goto :setting5load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting5 Loaded as "true")
call :SAB_Manager 5
goto :setting5_s1load
) 
goto :whatloadgoto


:setting5_s1load
find "s5_linuxboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_s1onoff=�L��
if %ErrorLevel%==1 goto :setting5_s1load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting5_1 Loaded as "true")
call :SAB_Manager 5
goto :setting5_s2load
) 
goto :whatloadgoto

:setting5_s2load
find "s5_simpleboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_s2onoff=�L��
if %ErrorLevel%==1 goto :setting5_s2load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting5_2 Loaded as "true")
call :SAB_Manager 5
goto :setting5_s3load
) 
goto :whatloadgoto

:setting5_s3load
find "s5_rawboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_s3onoff=�L��
if %ErrorLevel%==1 goto :setting5_s3load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting5_3 Loaded as "true")
call :SAB_Manager 5
goto :setting6load
) 
goto :whatloadgoto

:setting6load
find "HazimeBg=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting6onoff=�L��
if %ErrorLevel%==1 goto :setting6load2
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Setting6 Loaded as "true")
call :SAB_Manager 6
goto :wmodeload
) 
goto :whatloadgoto


:wmodeload
find "wmode=true" %Settingsfile% > nul
if "%ErrorLevel%"=="0" (set wmodeonoff=�_�[�N�e�[�}�ɕύX  &set wmodetoggle=true)
if "%ErrorLevel%"=="1" (goto :wmodeload2)
if "%bootbatnow%"=="yes" (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Wmode Loaded as "true")
call :SAB_Manager 6
goto :loads
) 
goto :whatloadgoto

:allsettingtest
rem �ݒ�̌���������
:setting1load2
find "BootAsCC=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting1onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting1 Loaded as "false")) else if %ErrorLevel%==1 set setting1onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting1 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 1)
if "%bootbatnow%"=="yes" (goto :setting2load) else (goto :whatloadgoto)

:setting2load2
find "admin=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting2onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting2 Loaded as "false")) else if %ErrorLevel%==1 set setting2onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting2 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 2)
if "%bootbatnow%"=="yes" (goto :setting3load) else (goto :whatloadgoto)

:setting3load2
find "CheckUpdate=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting3onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting3 Loaded as "false")) else if %ErrorLevel%==1 set setting3onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting3 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 3)
if "%bootbatnow%"=="yes" (goto :setting4load) else (goto :whatloadgoto)

:setting4load2
find "hatenakeikoku=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting4onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting4 Loaded as "false")) else if %ErrorLevel%==1 set setting4onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting4 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 4)
if "%bootbatnow%"=="yes" (goto :setting5load) else (goto :whatloadgoto)

:setting5load2
find "bootanimation=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting5onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting5 Loaded as "false")) else if %ErrorLevel%==1 set setting5onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting5 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 5)
if "%bootbatnow%"=="yes" (goto :setting5_s1load) else (goto :whatloadgoto)

:setting5_s1load2
find "s5_linuxboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting5_s1onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting5_1 Loaded as "false")) else if %ErrorLevel%==1 set setting5_s1onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting5_1 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 5)
if "%bootbatnow%"=="yes" (goto :setting5_s2load) else (goto :whatloadgoto)

:setting5_s2load2
find "s5_simpleboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting5_s2onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting5_2 Loaded as "false")) else if %ErrorLevel%==1 set setting5_s2onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting5_2 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 5)
if "%bootbatnow%"=="yes" (goto :setting5_s3load) else (goto :whatloadgoto)

:setting5_s3load2
find "s5_rawboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting5_s3onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting5_3 Loaded as "false")) else if %ErrorLevel%==1 set setting5_s3onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting5_3 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 5)
if "%bootbatnow%"=="yes" (goto :setting6load) else (goto :whatloadgoto)

:setting6load2
find "HazimeBg=false" %Settingsfile% > nul
if %ErrorLevel%==0 (set setting6onoff=����& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Setting6 Loaded as "false")) else if %ErrorLevel%==1 set setting6onoff=null&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Setting6 is corrupted. Loaded as "null")
if "%bootbatnow%"=="yes" (call :SAB_Manager 6)
if "%bootbatnow%"=="yes" (goto :wmodeload) else (goto :whatloadgoto)

:wmodeload2
find "wmode=false" %Settingsfile% > nul
if "%ErrorLevel%"=="0" (set wmodeonoff=�z���C�g�e�[�}�ɕύX& set wmodetoggle=false& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] Wmode Loaded as "false")) else if "%ErrorLevel%"=="1" (set wmodeonoff=  null  �e�[�}�ɕύX&set wmodetoggle=false&set /a allsettingerror=allsettingerror+1& if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclred%ERROR%linuxishclr2%] Wmode is corrupted. Loaded as "null"))
if "%bootbatnow%"=="yes" (call :SAB_Manager 6)
if "%bootbatnow%"=="yes" (goto :loads) else (goto :whatloadgoto)

:loads
rem load your name
for /f "tokens=2 delims==" %%a in ('type %Settingsfile% ^| findstr /r "YourName=."') do (
    set YourName=%%a
)
if defined YourName (
    if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo.& echo [%linuxishclr%Info%linuxishclr2%] Hello %YourName%!)
) else if not defined YourName (
    set YourName=%USERNAME%
    if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo.& echo [%linuxishclred%ERROR%linuxishclr2%] Your Name is does not exist. Who are you?)
)
call :SAB_Manager 7

:firststarttest
rem detect %FirstSTFsfile%
setlocal enabledelayedexpansion
if exist %FirstSTFsfile% (
find "nodogcheckforfastboot" %FirstSTFsfile% > nul
if "!ErrorLevel!"=="1" (
set FirstCursorisEdited=true
    )
)
setlocal disabledelayedexpansion
if "%bootbatnow%"=="no" (echo ������...) else (
if "%linuxboot%"=="true" (echo.&echo [%linuxishclr%info%linuxishclr2%] %FirstSTFsfile% is Loaded.)
call :SAB_Manager 8
goto :cursorcolorload
)
if "%whatloadgoto%"=="hazime" (goto :hazimemenu)
goto :cursorcolorload

:cursorcolorload
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows ��" >nul
if "%ErrorLevel%"=="0" (set cursorcolor=��)
if "%ErrorLevel%"=="1" (set cursorcolor=��)
if "%bootbatnow%"=="no" (echo ������...) else (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Cursor Color is Loaded.)
call :SAB_Manager 10
goto :hazimecursorcolor2
)
if "%whatloadgoto%"=="hazime" (goto :hazimemenu)

:hazimecursorcolor2
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows �W��" >nul
if "%ErrorLevel%"=="0" (set cursorcolor=��)
if "%bootbatnow%"=="no" (echo ������...) else (
if "%linuxboot%"=="true" (echo [%linuxishclr%info%linuxishclr2%] Menu stuff All Loaded.)
call :SAB_Manager 10
goto :SAB_Manager_initializeVaribale
)
if "%whatloadgoto%"=="hazime" (goto :hazimemenu)
goto :hazimemenu



:SAB_Manager
if "%linuxboot%"=="true" if "%bootbatnow%"=="yes" (echo [%linuxishclr%info%linuxishclr2%] SAB_Manager Running...)
rem �u�[�g�A�j���[�V�����B
rem ���͓ǂݍ��ݎ��̃e�L�X�g����B
if "%bootbatnow%"=="no" (cls & title �J�[�\���ւ� ^| �ݒ� ������... & echo ������... & goto :whatload) else (title �J�[�\���ւ� ^| �N����...)
if "%simpleboot%"=="true" (cls & echo �N����...& exit /b)
if "%wmodetoggle%"=="false" (set loadscrnprgsclr=[7m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m&set back_to_the_firstline=[18;0H&set back_to_the_loadline=[23;12H)
if "%wmodetoggle%"=="true" (set loadscrnprgsclr=[47m[97m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m[107m[30m&set back_to_the_firstline=[18;0H&set back_to_the_loadline=[23;12H) else (set loadscrnprgsclr=[7m&set loadscrnprgsclrgra=[48;5;244m&set loadscrnprgsclr2=[0m&set back_to_the_firstline=[18;0H&set back_to_the_loadline=[23;12H)
if not defined dummy if not "%linuxboot%"=="true" (set /p nothing=[?25l<nul)
if defined linuxboot if "%linuxboot%"=="true" (exit /b)

rem �ǂݍ��݃o�[��UI (�g) �`��
if not defined SAB_Manager_Drewed (set SAB_Manager_Drewed=true& set batloadprgsDrewrn=12) else if defined SAB_Manager_Drewed (goto :SAB_Manager_Main_Bar)
set /p nothing=%back_to_the_loadline%%loadscrnprgsclr2%<nul
echo %back_to_the_firstline%
echo O=========================================================================O
echo.
echo                       �J�[�\���ւ���ǂݍ���ł��܂�...
echo           O=====================================================O
echo           I                                                     I
echo           O=====================================================O
set /p nothing=%back_to_the_loadline%%loadscrnprgsclrgra%                                                     %loadscrnprgsclr2%<nul
:SAB_Manager_Main_Bar
rem ���ۂ�progress�o�[�{�̂̕`��
set /p nothing=%back_to_the_loadline%<nul
if %1 lss 6 (set /a batloadprgsDrew=%batloadprgsDrew%+4) else (set /a batloadprgsDrew=%batloadprgsDrew%+5)
for /l %%i in (%batloadprgsDrewrn%,1,%batloadprgsDrew%) do (
    set batloadprgsDrewrn=%%i& set /p nothing=[23;%%iH%loadscrnprgsclr% %loadscrnprgsclr2%<nul
    if "%1"=="10" (set /p nothing=%loadscrnprgsclr%   %loadscrnprgsclr2%<nul& exit /b)
)
exit /b

:SAB_Manager_initializeVaribale
set batloadprgsDrewrn=& set batloadprgsDrew=
set loadscrnprgsclr=&set loadscrnprgsclr2=&set loadscrnprgsclrgra=
set batloadprgsdelete=&set back_to_the_firstline=&set back_to_the_loadline=
set SAB_Manager_Drewed=
goto :hazimemenu



:whatload
rem �����̏����A���邩�Ȃ��H���ʂ�setting�̒l���~���������Ȃ�setting1load�Ƃ���goto���������ōs�����whatloadgoto�ɑ������Γ����Ǝv���񂾂���....
if "%wantload%"=="setting1" (goto :setting1load) 
if "%wantload%"=="setting2" (goto :setting2load)
if "%wantload%"=="setting3" (goto :setting3load)
if "%wantload%"=="setting4" (goto :setting4load)
if "%wantload%"=="setting5" (goto :setting5load)
if "%wantload%"=="setting5_1" (goto :setting5_s1load)
if "%wantload%"=="setting5_2" (goto :setting5_s2load)
if "%wantload%"=="setting5_3" (goto :setting5_s3load)
if "%wantload%"=="setting6" (goto :setting6load)
if "%wantload%"=="wmode" (goto :wmodeload)
if "%wantload%"=="syokaihazime" (goto :syokaihazimeload)
if "%wantload%"=="cursorcolor" (goto :cursorcolorload)
if "%wantload%"=="" (goto :hazimemenu)
call :BSOD_Errors 2
pause
exit

:whatloadgoto
set wantload=
exit /b


:batbootanimation
rem Calculate Boot time
set boottime2=%time%
for /f "tokens=1-3 delims=:., " %%i in ("%boottime1%") do (set /a seconds1=^(1%%i%%100*3600^)+^(1%%j%%100*60^)+^(1%%k%%100^)-366100)
for /f "tokens=1-3 delims=:., " %%i in ("%boottime2%") do (set /a seconds2=^(1%%i%%100*3600^)+^(1%%j%%100*60^)+^(1%%k%%100^)-366100)
set /a BootTime=seconds2-seconds1
set seconds1=& set seconds2=& set boottime1=& set boottime2=

if "%settingbypass%"=="true" (goto :hazimemenuskipboot)
rem �������[�[�[�[�[�[�[�[�[�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I�I
if "%linuxboot%"=="true" (setlocal enabledelayedexpansion & set /a yay=%random%*17/32767& set yayshow=�[
for /l %%i in (0,1,!yay!) do (set yayshow=!yayshow!�[)
setlocal disabledelayedexpansion)

if "%linuxboot%"=="true" (echo.&echo [%linuxishclr%info%linuxishclr2%] �N������! �������[%yayshow% :D& echo [%linuxishclr%info%linuxishclr2%] ^(�N������ : %BootTime% �b^)& title �J�[�\���ւ� ^| �������[%yayshow%& set yay=& set yayshow=& timeout /t 2 /nobreak >nul& cls) else (cls)
if "%rawboot%"=="true" (echo off)
if "%firststartbat%"=="yes" (goto :batbootanimationbypassfun)
if "%setting5onoff%"=="����" (goto :checksum)
rem �u�[�g�A�j���[�V�������Đ��B64����1�̊m���܂���512����1�̊m���ŕʃo�[�W�������Đ������Bramdom�̎d�l(�H)�ɂ���ē��A����random�����Ȃ��Ƃ����Ȃ��B
if not defined dummy (set /p nothing=[?25l<nul)
set /a bootegg=%random%*65/32767
set /a bootegg2=%random%*65/32767
if "%bootegg%"=="%bootegg2%" (goto :batbootanimationfun)
set /a bootegg=%random%*257/32767
set /a bootegg2=%random%*257/32767
if "%bootegg%"=="%bootegg2%" (call :BSOD_Errors THERE_IS_NO_PROBLEMS)
set /a bootegg=%random%*513/32767
set /a bootegg2=%random%*513/32767
if "%bootegg%"=="%bootegg2%" (goto :batbootanimationscary)
set bootegg=
set bootegg2=
:batbootanimationbypassfun
title �J�[�\���ւ� ^| �悤����
if "%wmodetoggle%"=="true" (set welcomelineclr=[38;2;135;135;135m& set welcomelineclr2=[0m[107m[30m& set welcomelineclr3=[30m) else (set welcomelineclr=[38;2;120;120;120m& set welcomelineclr2=[0m& set welcomelineclr3=[39m)
if "%wmodetoggle%"=="true" (for /l %%i in (0,1,3) do (set /p nothing=[%%i;0H[48;2;230;230;230m                                                                           [0;0H<nul)) else (for /l %%i in (0,1,3) do (set /p nothing=[%%i;0H[48;2;20;20;20m                                                                           [0;0H<nul))
echo.
if not defined dummy (echo [30a�J�[�\���ւ�%batver%)
echo.
echo %welcomelineclr%O=========================================================================O%welcomelineclr2%
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
if "%wmodetoggle%"=="true" (for /l %%i in (22,1,25) do (set /p nothing=[%%i;0H[48;2;230;230;230m                                                                           [22;0H<nul)) else (for /l %%i in (22,1,25) do (set /p nothing=[%%i;0H[48;2;20;20;20m                                                                           [22;0H<nul))
echo %welcomelineclr%O=========================================================================O%welcomelineclr3%
echo.
if not defined dummy (echo [23a2021-2024 tamago_1908 %batbuild%)
set welcomelineclr=& set welcomelineclr2=& set welcomelineclr3=
timeout /t 2 /nobreak >nul
cls
rem �ݒ�̌������m�F
goto :checksum

:batbootanimationfun
set bootegg=
set bootegg2=
mode con: cols=85 lines=29
if "%wmodetoggle%"=="false" (set c=[7m&set c2=[0m)
if "%wmodetoggle%"=="true" (set c=[100m[97m&set c2=[0m[107m[30m)
if "%wmodetoggle%"=="true" (set welcomelineclr=[38;2;135;135;135m& set welcomelineclr2=[0m[107m[30m& set welcomelineclr3=[30m) else (set welcomelineclr=[38;2;120;120;120m& set welcomelineclr2=[0m& set welcomelineclr3=[39m)
if not defined dummy (set /p nothing=[?25l<nul)
cls
:batbootanimationfun_a
title �J�[�\���ւ� ^| �������J�[�\���ւ��I�������ɂł��Ȃ����Ƃ𕽑R�Ƃ���Ă̂���b�I�����ɂ��т�铲��那���I
echo                                  %c% %c2%                %c% %c2%                                 
echo                                %c%   %c2%                 %c%  %c2%                               
echo                             %c%    %c2%                     %c%   %c2%                            
echo                 %c%             %c2%                           %c%             %c2%               
echo                              %c% %c2%                         %c%  %c2%               %c% %c2%           
echo        %c%   %c2%   %c%                     %c2%                 %c%            %c2%  %c%      %c2%             
echo           %c%  %c2%         %c%     %c2%                                 %c%     %c2%       %c%    %c2%         
echo          %c%   %c2% %c%                  %c2%                 %c%                         %c2%           
echo                        %c%         %c2%                 %c% %c2%   %c%    %c2%                  %c%  %c2%       
echo              %c%          %c2%       %c%     %c2%               %c%   %c2%      %c%        %c2%        %c%  %c2%       
echo                             %c%   %c2%                     %c%    %c2%                 %c%        %c2%   
echo       %c%             %c2%                                                     %c%     %c2%  %c%    %c2% 
echo        %c%    %c2%                                                           %c%     %c2%         
echo           %c%       %c2%                                              %c%    %c2%  %c%     %c2%          
echo               %c%                                                    %c2%  %c%      %c2%          
echo                  %c%  %c2%  %c%                                    %c2%      %c%       %c2%              
echo                  %c%  %c2%     %c% %c2%    %c% %c2%     %c% %c2%       %c% %c2%      %c% %c2%       %c%             %c2%             
echo                   %c%                                      %c2% %c%             %c2%              
echo    %c%      %c2%    %c%                                          %c2%     %c%       %c2%                
echo    %c%    %c2%  %c%  %c2%  %c%    %c%                         %c2%       %c% %c2%      %c%         %c2%                   
echo       %c% %c2%    %c%     %c2%   %c%  %c2%    %c%  %c2%       %c%  %c2%     %c%  %c2%      %c%   %c2%    %c%     %c2%                       
echo       %c%    %c2%       %c%          %c%  %c2%      %c%  %c2%     %c%              %c2%                            
echo       %c%    %c2%           %c%                            %c2%                                   
echo        %c%    %c2%                   %c%         %c2%                                             
echo           %c%   %c2%                                                                       
if "%wmodetoggle%"=="true" (for /l %%i in (26,1,29) do (set /p nothing=[%%i;0H[48;2;230;230;230m                                                                                     [26;0H<nul)) else (for /l %%i in (26,1,29) do (set /p nothing=[%%i;0H[48;2;20;20;20m                                                                                     [26;0H<nul))
echo %welcomelineclr%O===================================================================================O%welcomelineclr3%
echo.
echo                         �J�[�\���ւ�%batver% �悤���� 2021-2024 
timeout /t 3 /nobreak >nul
mode con: cols=75 lines=25
set c=& set c2=& set funanimationclr=& set welcomelineclr=& set welcomelineclr2=& set welcomelineclr3=
goto :checksum


:batbootanimationscary
rem no comment about this
if not defined dummy (set /p nothing=[?25l<nul)
find "wmode=true" %Settingsfile% >nul
if "%errorlevel%"=="0" (color f0&set funanimationclr=f0) else (set funanimationclr=07)
set bootegg=
set bootegg2=
cls
title
mode con: cols=75 lines=25
color 04
set "batbootanimationscaryihatevscaf=("
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
echo                                     : %batbootanimationscaryihatevscaf%
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
timeout /t 2 /nobreak >nul
PowerShell -WindowStyle hidden -Command Exit
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"������\", '', 'OK', 'Error');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"������\", '', 'OK', 'None')"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�����܂����B\", '', [System.Windows.Forms.MessageBoxButtons]::'Yesno', 'None');exit $result;"
if "%errorlevel%"=="6" (goto :batbootanimationscaryif1)
if "%errorlevel%"=="7" (goto :batbootanimationscaryif2)
call :exit 0
:batbootanimationscaryif1
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�������[ :)\", '', 'OK', 'none')"
color %funanimationclr%
if not defined dummy (set /p nothing=[?25h<nul)
cls
PowerShell -WindowStyle normal -Command Exit
set batbootanimationscaryihatevscaf=
goto :checksum
:batbootanimationscaryif2
cls
taskkill /f /im explorer.exe >nul
PowerShell -WindowStyle normal -Command Exit
for /l %%i in (1,1,2500) do set /p "nothing=  :(  "<nul
PowerShell -WindowStyle hidden -Command Exit
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�����Ăق������������Ȃ̂� :%batbootanimationscaryihatevscaf%\", '', 'OK', 'information')"
start explorer.exe
call :exit 0



:checksum
if "%wmodetoggle%"=="true" (color f0) else (color 07)
if not defined dummy (set /p nothing=[?25h<nul)
if %allsettingerror% gtr 0 if %allsettingerror% lss 10 (set "allsettingerrorshow= %allsettingerror%") else (set "allsettingerrorshow=  %allsettingerror%")
if %allsettingerror% gtr 0 (
    if not defined dummy (set clrgra=[90m&set clr2=[0m)
    if "%wmodetoggle%"=="false" (set clrgra=[90m&set clr2=[0m)
    if "%wmodetoggle%"=="true" (set clrgra=[0m[107m&set clr2=[90m[107m[30m)
)
if %allsettingerror% gtr 0 (
    title �J�[�\���ւ� ^| �ݒ�̔j��
    mode con: cols=60 lines=29
    echo.
    echo                      �ݒ肪�j�����Ă��܂��I           
    echo.
    echo   O======================================================O
    echo   I                                                      I
    echo   I                        �G���[!                       I
    echo   I                                                      I
    echo   I       �ݒ肪 %allsettingerrorshow% �j�����Ă��邩�A���݂��܂���B     I
    echo   I        �ݒ�t�@�C����ύX�������A�ړ����Ă��Ȃ�      I
    echo   I                  �����m�F���Ă��������B              I
    echo   I                                                      I
    echo   I    �J�[�\���ւ��̍X�V��ɂ��̃��b�Z�[�W���\�����ꂽ  I
    echo   I      �ꍇ�A�V�����ݒ肪�ǉ����ꂽ�\���������ł�    I
    echo   I                                                      I
    echo   I        ���̏ꍇ�A�ݒ���C�����邩�A�j�����Ă���      I
    echo   I            �ӏ����蓮�ŕύX���邱�Ƃɂ����          I
    echo   I                      �C���ł��܂��B                  I
    echo   I                                                      I
    echo   I  �C������ۂɂ́A�ݒ�ɍs���A�j�����Ă���� ^(Null^) I
    echo   I      ��؂�ւ��Ă��������B��������ƁA�����I��      I
    echo   I                 �j�������C������܂��B             I
    echo   I       �C���̍ۂɂ́A�f�t�H���g�̒l�ɐݒ�͕ύX       I
    echo   I                        ����܂��B                    I
    echo   I                                                      I
    echo   I                 %clrgra%�����L�[�������đ��s...%clr2%              I
    echo   I                                                      I
    echo   O======================================================O
    echo.
    pause >nul
)
set allsettingerrorshow=&set clrgra=&set clr2= 
if %allsettingerror% gtr 5 (goto :fixallsetting) else (if "%Setting1onoff%"=="�L��" (goto :cursorchange) else (goto :hazimemenu))
echo.
:fixallsetting
rem �����C��
timeout /t 2 /nobreak >nul
mode con: cols=75 lines=25
echo.
SET /P selected=�����C���𗘗p�ł��܂��B�����C�������s����Ƃ���܂ł̐ݒ肪���ׂď���������A�f�t�H���g�̐ݒ�Ƀ��Z�b�g����܂��B���s���܂����H(yes�܂���no):
if "%selected%"=="yes" (
call :Wipealldeta
echo.
echo �C�����������܂����B
pause
call :exit 1
)
if "%selected%"=="y" (
call :Wipealldeta
echo.
echo �C�����������܂����B
pause
call :exit 1
)
if "%selected%"=="no" (hazimemenuskipboot)
if "%selected%"=="n" (hazimemenuskipboot)

goto :hazimemenu


rem ���j���[�̐����̏���
:hazimemenu
if "%bootbatnow%"=="no" (goto :hazimemenuskipboot)
if "%bootbatnow%"=="yes" (set bootbatnow=no& goto :batbootanimation)
:hazimemenuskipboot
cls
mode con: cols=75 lines=25
if "%runningfromfulldebug%"=="true" (set runningfromfulldebug=& exit /b)
if "%FromREConsole%"=="true" (cls & goto :Cursor_Changer_REConsolemain)
if "%hazimeeaster%"=="true" (set hazimebuild=%batbuild%)
if not defined dummy (set /p nothing=[?25h<nul)
if "%batverdev%"=="dev" (set hazimemenubuild=Dev)
if "%Punish%"=="true" (call :DEATHEASTEREGG)
set clrhelp=& set clrhelp2=
set settinghelptoggle=false
set wantload=
rem ���j���[�̕`��
title �J�[�\���ւ� ^| ���C�����j���[
:hazimemenudrew
cls
if not "%MenuRedrew%"=="true" (call :background_menu)
rem center = 37 (75). �����𒆉��ɐݒu����ꍇ�͓񕪂̈�cols�̒l���璆���ɐݒu�����������́A�������̔��������������̋󔒂�}������΂悢
echo                              �J�[�\���ւ�%batver%  %hazimebuild%
echo.
echo   O=====================================================================O
echo   I     1 �J�[�\���ւ�          2 �A�v���P�[�V����           3 �I��     I
echo   I                                                                     I
echo   I                   4 �o�[�W�������          5 �ݒ�                  I
echo   O=====================================================================O
echo.
if "%MenuRedrew%"=="true" (set MenuRedrew=& exit /b) else (call :hazimeMessages)
if "%errorlevel%"=="1" (cls&set Updateavailable=& goto :hazimemenudrew) else if "%errorlevel%"=="0" (goto :hazimemenudrewend)
:hazimemenudrewend
set selected=
rem ask select
echo            ���s�����������܂��̓A���t�@�x�b�g����͂��Ă��������B
if "%FirstCursorisEdited%"=="true" (set /p "selected=[13;37H") else if "%hazimemenuMessageshowed%"=="true" (set /p selected=[13;37H) else if not defined hazimemenuMessageshowed (set /p selected=[11;37H)
echo.& if "%selected%"=="" (goto :hatenahazime) else (echo %selected% ���I������܂����B)
set hatenaita=0


rem �I���̕���
if "%selected%"=="1" (goto :cursorchange)
if "%selected%"=="a" (goto :cursorchange)
if "%selected%"=="2" (goto :Appmenu)
if "%selected%"=="b" (goto :Appmenu)
if "%selected%"=="3" (goto :exitmenu)
if "%selected%"=="c" (goto :exitmenu)
if "%selected%"=="4" (goto :batver)
if "%selected%"=="d" (goto :batver)
if "%selected%"=="5" (goto :setting)
if "%selected%"=="e" (goto :setting)

rem �C�[�X�^�[�G�b�O
if "%selected%"=="egg1" (color 1f&call :BSOD_Errors 4)
if "%selected%"=="egg2" (goto :Dogcheck)
if "%selected%"=="wwssdadaba" (set hatenaita=0&goto :littleeasteregg)
if "%selected%"=="tamago1908" (echo :P&pause&goto :hazime)
if "%selected%"=="himazinnoob1908" (echo :D&pause&goto :hazime)
if "%selected%"=="mskg1908" (echo xD&pause&goto :hazime)
if "%selected%"=="1908" (goto :1908hell)
if "%selected%"=="helloworld" (call :Hello_World& goto :hazimemenu)
if "%selected%"=="���͖����ł�" (echo �������I&pause& goto :hazime)

rem �f�o�b�O�p�R�}���h�̎Q��
if "%selected%"=="help" (goto :allcommands)

rem �f�o�b�O�p
if "%selected%"=="crashtest" (exit /b)
if "%selected%"=="checkmem" (call :checkmem& goto :hazimemenu)
if "%selected%"=="boottime" (echo.& echo �N������ : %BootTime% �b& echo.& pause & goto :hazimemenu)
if "%selected%"=="alldefnow1" (goto :AllDefult1)
if "%selected%"=="playdefboot" (cls&goto :CursorChangerOOBE_Animation)
if "%selected%"=="debugyesnow" (goto :kurogo)
if "%selected%"=="reload" (cls&set bootbatnow=yes&goto :batstart)
if "%selected%"=="fulldebug" (goto :fulldebug)
if "%selected%"=="getadmin" (goto :batstartadm)
if "%selected%"=="bypassfirstboot" (set firststartbat=no&call :Wipealldeta)
if "%selected%"=="alldefdeletebat" (echo delete bat, confirm to type something...&pause&goto :alldefdeletefinish5)
if "%selected%"=="windowsfiltertest" (goto :batbootcheckwinverbad)
if "%selected%"=="funanimationdeb" (goto :batbootanimationfun)
if "%selected%"=="openie" (goto :openiedev)
if "%selected%"=="setenter" (echo.&set /p hatenaita=pls type:&goto :hazime)

rem FUCK YOU!!!!!!
if "%selected%"=="fucku" (echo fuck you too&pause&goto :hazime)
if "%selected%"=="fuckyou" (echo fuck you too&pause&goto :hazime)
if "%selected%"=="fucu" (echo fuck you too&pause&goto :hazime)
if "%selected%"=="fucyou" (echo fuck you too&pause&goto :hazime)

rem Power Commands
if "%selected%"=="exit" (goto :exitmenu)
if "%selected%"=="shutdown" (goto :batshutdown)
if "%selected%"=="reboot" (echo.& echo �ċN�����Ă��܂�...& call :rebootbatch)
if "%selected%"=="counttestdeb" (set hatenaita=0&goto :stupidtest) else echo. &echo �����ȁi�������͎g�p�s�ȁj�I���ł��I�L���ȓ��͂����Ă��������B&pause&goto :hazimemenudrew

rem �������͂��Ȃ������ꍇ�̋A�ҏ���
:hatenahazime
echo ?
echo.
pause
echo ���݂܂���B�������͂��Ă���܂��񂩁H
echo.
pause
if "%hatenakeikoku%"=="����" (goto :hazimemenu)

rem �����������m���邽�߂̋@�\
set /a hatenaita=hatenaita+1
if %hatenaita% gtr 20  (goto :hatenaokotest1)
goto :hazime

:hatenaokotest1
if not %hatenaita% gtr 50 (goto :hatenaoko1)
if %hatenaita% gtr 50 (goto :hatenaokotest2)

:hatenaokotest2
if not %hatenaita% gtr 100 (goto :hatenaoko2)
if %hatenaita% gtr 100 (goto :hatenaokotest3)

:hatenaokotest3
if not %hatenaita% gtr 130 (goto :hatenaoko3)
if %hatenaita% gtr 130 (goto :hatenaokotest4)

:hatenaokotest4
if not %hatenaita% gtr 200 (goto :hatenaoko4)
if %hatenaita% gtr 200 (goto :hatenaokotest5)

:hatenaokotest5
if not %hatenaita% gtr 250 (goto :hatenaoko5)
if %hatenaita% gtr 250 (goto :hatenaoko6)

rem �������̌x�����b�Z�[�W�W
:hatenaoko1
if %hatenaita% gtr 21 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"...�����Ă��...�H\", '...', 'OK', 'none');exit $result;"
goto :hazime

:hatenaoko2
if %hatenaita% gtr 51 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"...�Ȃ�ŉ������͂����ɃG���^�[���������Ă�́I�H...����������...\", '>:/', 'OK', 'none');exit $result;"
goto :hazime

:hatenaoko3
if %hatenaita% gtr 101 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�ӂ������܂ŉ����ł����ɃG���^�[�����Ȃ�����I�I�I���������ɂ���I�I�I\", '>:(', 'OK', 'none');exit $result;"
goto :hazime

:hatenaoko4
if %hatenaita% gtr 131 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�������ɂ��낻���߂Ă���\", '...', 'OK', 'none');exit $result;"
goto :hazime

:hatenaoko5
if %hatenaita% gtr 201 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ȏ��������������܂��B200���...\", '�Ō�̌x��', 'OK', 'Warning');exit $result;"
goto :hazime

:hatenaoko6
if %hatenaita% gtr 251 (goto :hazime)
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"...\", '...', 'OK', 'Error');exit $result;"
shutdown /r /t 5 /c "������邪�悢�B"
taskkill /im cmd.exe
goto :reboot


:hazimeMessages
rem Display messages. FirstCursorisEdited message, and updateavailable message
Call :hazimeMessagesTimecheck & set tcmrand=&set tcmrand2=
if not "%errorlevel%"=="1" (
if "%FirstCursorisEdited%"=="true" (echo [22a�ȒP��  ����������ꂽ  �ł���H&echo.)
) else (set hazimemenuMessageshowed=true)
if "%Updateavailable%"=="true" (
    title �J�[�\���ւ� ^| �X�V�����p�\ ^(�����I^)
  setlocal enabledelayedexpansion
    if "%batbeta%"=="True" (set batbetamessage=^(�q���g : ���̃o�[�W�����̓x�[�^�łł��B�o�O���肪����\��������܂��B ^))
  echo �A�b�v�f�[�g�����p�\�ł��I ^(%updatemyversion% to %updateversion%^)
  echo �A�b�v�f�[�g���܂����H^(�A�b�v�f�[�g����Ɖp��ł֋����I�ɕύX����܂�^) !batbetamessage!
  set batbetamessage=
  SET /P updateselected=^(Y �܂��� N^) :
  if "!updateselected!"=="y" (set updateselected=&set updateavailable=&echo.&echo �A�b�v�f�[�g��...���΂炭���҂����������B&cd %~dp0&set Powersheller=Doupdate&call :Powersheller&cd %batchmainpath%&echo �A�b�v�f�[�g�ɐ������܂����B&pause&exit)
if "!updateselected!"=="n" (set updateselected=&set updateavailable=&echo.&echo �A�b�v�f�[�g�̓L�����Z������܂����B�N�����ɃA�b�v�f�[�g���m�F����@�\�͐ݒ肩�疳���ɂł��܂��B&pause&set checkupdatetoggle=false&cls&exit /b 1)
setlocal disabledelayedexpansion
)
exit /b 0

:hazimeMessagesTimecheck
rem Display messages for specific dates
if "%timecheckmessageshowed%"=="true" (set hazimemenuMessageshowed=& exit /b 0) else (set timecheckmessageshowed=true)
if "%date:~0,4%"=="1999" (echo [25a�E�[�p�[���[�p�[�͂ǂ��H& echo.& exit /b 1)
if "%date:~5%"=="01/01" (echo [22a�����܂��Ă��߂łƂ��������܂��B& echo.& exit /b 1)
if "%date:~5%"=="04/01" (echo [15a�J�[�\���ւ��𗘗p���������5000���~�����ȁI& echo.& exit /b 1)
if "%date:~5%"=="10/31" (echo [27a�n�b�s�[�n���E�B���I& echo.& exit /b 1)
if "%date:~5%"=="12/25" (echo [28a�����[�N���X�}�X�I& echo.& exit /b 1)
if "%date:~5%"=="12/31" (echo [13a���낢�날��������  ���Ԃ��  ����ς�  ���Ԃ񂾁B& echo.& exit /b 1)
set tcmrand=0& set tcmrand2=0
set /a tcmrand=%random%*33/32767& set /a tcmrand2=%random%*33/32767
setlocal enabledelayedexpansion
rem you're bit lucky if you see this.
if "!tcmrand!"=="!tcmrand2!" (
set tcmrand=0
set /a tcmrand=%random%*11/32767& set /a tcmrand=%random%*11/32767
if "!tcmrand!"=="0" (echo [29a���ׂĂ����Ӗ���&echo.& exit /b 1) else if "!tcmrand!"=="1" (echo [14a�N�����̃��b�Z�[�W�����ۂɓǂ�ł���񂾂낤�H& echo.& exit /b 1) else if "!tcmrand!"=="2" (echo [22a�N�����̃o�b�`���C�ɂ��Ă��Ȃ��B& echo.& exit /b 1) else if "!tcmrand!"=="3" (echo [22a�l���A���C���X�g�[�����Ȃ���& echo.& exit /b 1) else if "!tcmrand!"=="4" (echo [31a�P�[�L�͉R��& echo.& exit /b 1) else if "!tcmrand!"=="5" (echo [28a���Ȃ��͖{����%YourName%�H& echo.& exit /b 1) else if "!tcmrand!"=="6" (echo [15a�N�B�̃o�b�`�t�@�C���́A�S�Ď��������������B& echo.& exit /b 1) else if "!tcmrand!"=="7" (echo [30aHello world :D& echo.& exit /b 1) else if "!tcmrand!"=="8" (echo [27aDebios�������Ă݂悤& echo.& exit /b 1) else if "!tcmrand!"=="9" (echo [24aShivtanium OS�������Ă݂悤& echo.& exit /b 1) else if "!tcmrand!"=="10" (goto :hazimemenuMessagesTimecheckEASTEREGG)
)
setlocal disabledelayedexpansion
exit /b 0

:hazimemenuMessagesTimecheckEASTEREGG
rem small test easter egg.
set name=& set namecount=
cls
color 04
title 
:hazimemenuMessagesTimecheckEASTEREGG_ASK
cls
if not defined dummy (echo [19a�ł��ō��ȃo�b�`�t�@�C���̖��O�͉��H)
set name=
if "%namecount%" gtr "2" start /min powershell -WindowStyle Hidden -Command "& {Add-Type -AssemblyName System.Windows.Forms; Start-Sleep -Milliseconds 100; $welcomeText = \"�J�[�\���ւ�\"; foreach ($char in $welcomeText.ToCharArray()) {[System.Windows.Forms.SendKeys]::SendWait($char); Start-Sleep -Milliseconds 125}; Start-Sleep -Milliseconds 500; [System.Windows.Forms.SendKeys]::SendWait('{ENTER}'); exit}"
rem where is my location?
rem powershell -Command "& { Add-Type -AssemblyName System.Windows.Forms; Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class KeyboardHelper { [DllImport(\"user32.dll\", SetLastError = true)] public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo); public const byte VK_LWIN = 0x5B; public const byte VK_S = 0x53; public const uint KEYEVENTF_KEYUP = 0x0002; public static void SendWinS() { keybd_event(VK_LWIN, 0, 0, UIntPtr.Zero); keybd_event(VK_S, 0, 0, UIntPtr.Zero); keybd_event(VK_S, 0, KEYEVENTF_KEYUP, UIntPtr.Zero); keybd_event(VK_LWIN, 0, KEYEVENTF_KEYUP, UIntPtr.Zero); } }'; Start-Sleep -Milliseconds 500; [KeyboardHelper]::SendWinS(); Start-Sleep -Milliseconds 250; $welcomeText = 'Where is my location?'; foreach ($char in $welcomeText.ToCharArray()) { [System.Windows.Forms.SendKeys]::SendWait($char); Start-Sleep -Milliseconds 50; }; Start-Sleep -Milliseconds 3500; [System.Windows.Forms.SendKeys]::SendWait('{ESC}') }"
if not defined dummy (set /p "name=[30a")
if not "%name%"=="�J�[�\���ւ�" (set /a namecount=namecount+1) else (goto :hazimemenuMessagesTimecheckEASTEREGG_RIGHT)
if "%namecount%"=="1" (echo [29a�c�O�A�s�����I)
if "%namecount%"=="2" (echo [34a�Ⴄ) else if %namecount% gtr 2 (echo [35a...)
ping -n 2 -w 500 localhost >nul
goto :hazimemenuMessagesTimecheckEASTEREGG_ASK
:hazimemenuMessagesTimecheckEASTEREGG_RIGHT
if not defined dummy (echo [31a���̒ʂ�I)
if "%wmodetoggle%"=="true" (color f0) else (color 07)
timeout /t 2 /nobreak >nul
set name=& set namecount=
goto :hazimemenu


:background_menu
rem Honestly, I have no idea HOW this is working.
if "%setting7onoff%"=="����" (exit /b)
if not defined dummy (set /p nothing=[?25l<nul)
setlocal enabledelayedexpansion
rem argument 1 is for OOBE. give 0~200 (every 10) value.
rem initialize variable
if "%wmodetoggle%"=="true" (
    if not defined dummy (set thmclr2=[107m[30m)
    set thml=26& set thml2=25
) else (if not defined dummy (set thmclr2=[0m))
if "%wmodetoggle%"=="true" (set thmlfor=194,9,243) else (set thmlfor=61,-9,12)
rem Drew bg. thml means theme line.
for /l %%i in (!thmlfor!) do (
    rem I think there is a simpler way to do this without having to bother with the calculations, but... well, it's working anyway.
    if "%wmodetoggle%"=="true" (set /a thml2-=1& set /a thml-=1) else (set /a thml=19+%%i/10& set /a thml2=thml-1)
    if "%1"=="1" (set /a thmldrew=^(%%i-57^)+^(!count!*^(61-12^)^)/170) else (set thmldrew=%%i)
    rem                                  ��      and      �� Difference is must be 4. 170 is (100/) + 61+12. maybe.
    if "%1"=="1" (if !thmldrew! lss 12 (set thmldrew=12))
    set thmclr=[48;2;!thmldrew!;!thmldrew!;!thmldrew!m
    for /l %%a in (1,1,3) do (set /p nothing=[!thml!d!thmclr!                         !thmclr2!<nul)
    echo [!thml2!d
)
rem delete variables
set thml=& set thml2=& set thmclr=& set thmldrew=& set thmlfor=
if not "%1"=="1" (setlocal disabledelayedexpansion & set /p nothing=[?25h<nul)
if not defined dummy (set /p nothing=[0;0H<nul)
exit /b


:checkmem
setlocal enabledelayedexpansion
rem stores the output of the set command as a string at a time
set "nl=??"& set length=0& set /a crlf_count=0
for /f "delims=" %%i in ('set') do (set "output=!output!%%i%nl%")
for /l %%a in (0,1,8192) do (if "!output:~%%a,1!"=="" (set /a length=%%a& goto :checkmem_count_done))
:checkmem_count_done
rem Consider CRLF line breaks (2 bytes)
for /l %%j in (0,1,!length!) do (if "!output:~%%j,1!"=="%nl%" (set /a crlf_count+=1))
rem 1KB = 1024Bytes
set /a total_length=length+crlf_count
set /a memWholeKB=total_length/1024
set /a memFractionKB=(total_length %% 1024)*100/1024
echo.
echo �������g�p�� (�T�Z) : %memWholeKB%.%memFractionKB% KB (%total_length% �o�C�g)
echo.
pause
set output=& set nl=& set length=& set crlf_count=& set total_length=& set memWholeKB=& set memFractionKB=
setlocal disabledelayedexpansion
exit /b


:exitmenu
rem Preparing of Menu and Variables
rem Smart Processing!!!! DO NOT CARE ABOUT SO MANY OF IF STATEMENTS. PLS
cls
title �J�[�\���ւ� ^| �I�� 
set exitmenucurrent=0& call :exitmenu_exit
if not defined dummy (set clr=[7m&set clred=[41m&set clrgrn=[42m&set clrcyan=[46m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clred=[41m&set clrgrn=[42m&set clrgra=[90m&set clrcyan=[46m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clred=[41m&set clrgrn=[42m&set clrgra=[0m[107m&set clrcyan=[46m&set clr2=[0m[90m[107m[30m)
if not defined dummy (set /p nothing=[?25l<nul)

:exitmenu_main
rem Main Exit Menu
if "%exitmenuexit%"=="true" (set exitmenucurrent=& call :exitmenu_exit & goto :hazime)
if not defined exitmenuboot (set MenuRedrew=true& set /p nothing=%clrgra%<nul & call :hazimemenudrew & echo %clr2% & set exitmenuboot=true)
call :exitmenu_Core_Drew
if not defined dummuy (set ccmmul=[4m)
if not defined dummy (
echo.
echo.
echo [3;22H O====================O 
echo [4;22H I �J�[�\���ւ��̏I�� I 
echo [5;22H O==========O====%ccmmul%===%clr2%===O===========O 
echo [6;22H I%emb%     ^|    %clr2%I%emb2%   /   \  %clr2%I%emb3%           %clr2%I 
echo [7;22H I%emb%   / ^| \  %clr2%I%emb2%  V    �� %clr2%I%emb3%  ^-^-^-^-^-^-^>  %clr2%I 
echo [8;22H I%emb%   \___/  %clr2%I%emb2%   \___/  %clr2%I%emb3%           %clr2%I 
echo [9;22H O==========O==========O===========O 
echo [10;22H I[10;57HI 
echo [11;22H O=================================O 
echo [12;20H%clrgra%1~3�A��������A,D�ňړ��AY,E�Ō���AB�ŏI��%clr2%
)
choice /c 123adyeb /n >nul
if %ErrorLevel%==1 set exitmenucurrent=1& goto :exitmenu_main
if %ErrorLevel%==2 set exitmenucurrent=2& goto :exitmenu_main
if %ErrorLevel%==3 set exitmenucurrent=3& goto :exitmenu_main
if %ErrorLevel%==4 call :exitmenu_Core a
if %ErrorLevel%==5 call :exitmenu_Core d
if %ErrorLevel%==6 call :exitmenu_Core y
if %ErrorLevel%==7 call :exitmenu_Core e
if %ErrorLevel%==8 call :exitmenu_Core b
goto :exitmenu_main


:exitmenu_Core
rem Processing of each move
if "%1"=="1c" (set exitmenucurrent=1& exit /b)
if "%1"=="2c" (set exitmenucurrent=2& exit /b)
if "%1"=="a" (set /a exitmenucurrent-=1
    if "%Exitmenucurrent%"=="1c" (set exitmenucurrent=1)
    if "%Exitmenucurrent%"=="2c" (set exitmenucurrent=1)
    if "%exitmenucurrent%"=="0" (set exitmenucurrent=1)
    if "%exitmenucurrent%"=="1" (set exitmenucurrent=1)
    exit /b
)
if "%1"=="d" (set /a exitmenucurrent+=1
    if "%exitmenucurrent%"=="3" (set exitmenucurrent=3)
    exit /b
)
if "%1"=="b" (
    if "%Exitmenucurrent%"=="1c" (set exitmenucurrent=1)
    if "%Exitmenucurrent%"=="2c" (set exitmenucurrent=2) else (set exitmenuexit=true)
    exit /b
)
if "%1"=="y" (
    call :exitmenuselect_core
    if "%exitmenucurrent%"=="3" (set exitmenuexit=true)
    exit /b
)
if "%1"=="e" (
    call :exitmenuselect_core
    if "%exitmenucurrent%"=="3" (set exitmenuexit=true)
    exit /b
)


:exitmenuselect_core
rem Processing of Confirm key, like Y and E.
if "%Exitmenucurrent%"=="0" (set exitmenucurrent=1& exit /b)
if "%Exitmenucurrent%"=="1" (set exitmenucurrent=1c& exit /b)
if "%Exitmenucurrent%"=="2" (set exitmenucurrent=2c& exit /b)
if "%Exitmenucurrent%"=="1c" (set exitmenucurrent=1& goto :batshutdown)
if "%Exitmenucurrent%"=="2c" (call :exitmenuexit &call :rebootbatch)
exit /b

:exitmenu_Core_Drew
rem drawer of Text and Colors.
if not defined dummy (echo [10;24H                                 )
if "%Exitmenucurrent%"=="0" (echo [10;24H �����I������Ă��܂���B& exit /b)
if "%Exitmenucurrent%"=="1" (echo [10;24H �V���b�g�_�E��& set emb=%clred%& set emb2=& set emb3=& exit /b)
if "%Exitmenucurrent%"=="2" (echo [10;24H �ċN��& set emb2=%clrgrn%& set emb=& set emb3=& exit /b)
if "%Exitmenucurrent%"=="3" (echo [10;24H �߂�& set emb3=%clrcyan%& set emb2=& set emb=& exit /b)
if "%Exitmenucurrent%"=="1c" (echo [10;24H �{���ɃV���b�g�_�E�����܂����H& exit /b)
if "%Exitmenucurrent%"=="2c" (echo [10;24H �{���ɍċN�����܂����H& exit /b)
exit /b

:exitmenu_exit
rem initialize of variable
set exitmenuexit=& set emb=& set emb2=& set emb3=& set exitmenuboot=& set clred=& set clrgrn=& set clrcyan=& set clrgra=
if not defined dummy (set /p nothing=[?25h<nul)
exit /b


:batshutdown
if not defined dummy (set /p nothing=[?25l<nul)
title �J�[�\���ւ� ^| �A���[���F�f���`
cls
if "%wmodetoggle%"=="true" (set welcomelineclr=[38;2;135;135;135m& set welcomelineclr2=[0m[107m[30m& set welcomelineclr3=[30m) else (set welcomelineclr=[38;2;120;120;120m& set welcomelineclr2=[0m& set welcomelineclr3=[39m)
if "%wmodetoggle%"=="true" (for /l %%i in (0,1,3) do (set /p nothing=[%%i;0H[48;2;230;230;230m                                                                           [0;0H<nul)) else (for /l %%i in (0,1,3) do (set /p nothing=[%%i;0H[48;2;20;20;20m                                                                           [0;0H<nul))
echo.
if not defined dummy (echo [30a�J�[�\���ւ�%batver%)
echo.
echo %welcomelineclr%O=========================================================================O%welcomelineclr2%
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
if "%wmodetoggle%"=="true" (for /l %%i in (22,1,25) do (set /p nothing=[%%i;0H[48;2;230;230;230m                                                                           [22;0H<nul)) else (for /l %%i in (22,1,25) do (set /p nothing=[%%i;0H[48;2;20;20;20m                                                                           [22;0H<nul))
echo %welcomelineclr%O=========================================================================O%welcomelineclr3%
echo.
if not defined dummy (echo [23a2021-2024 tamago_1908 %batbuild%)
set welcomelineclr=& set welcomelineclr2=& set welcomelineclr3=
call :exitmenuexit
timeout /t 3 /nobreak >nul
call :exit 0

:exitmenuexit
set clrcyan=& set clrgra=& set clred=& set clrgrn=& set clryel=& set clrmag=& exit /b




rem �ݒ胁�j���[�̕`��
:setting
set wantload=
set settinghelptoggle=false
if not defined dummy (set clr=[7m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clr2=[0m[107m[30m)
rem �ݒ�t�@�C�������݂��邩�����m
cd /d %batchmainpath%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if not exist %Settingsfile% (goto :dogcheck)
title �J�[�\���ւ� ^| �ݒ� 
set selected=
if not defined "%clrgra%" (set clrgra=[90m)
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �J�e�S���[���I������Ă��܂���B              I
echo I                        I                                                I
echo I========================I                                                I
echo I  �J�e�S���[  �ォ����  I                                                I
echo I========================I                                                I
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
if %ErrorLevel%==1 goto :settingcategory1
if %ErrorLevel%==2 goto :settingcategory2
if %ErrorLevel%==3 goto :settingcategory1
if %ErrorLevel%==4 goto :settingcategory1
if %ErrorLevel%==5 goto :settingcategory1
if %ErrorLevel%==6 goto :hazime
if %ErrorLevel%==7 goto :settingcategory1
if %ErrorLevel%==8 goto :settingcategory1
if %ErrorLevel%==9 goto :settingcategoryhelpmode

:settingcategory1
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I%clr%                        %clr2%I                                                I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I  �J�[�\���ւ��̋@�\�Ɋւ���ݒ�ł��B          I
echo I%clr%                        %clr2%I                                                I
echo I========================I                                                I
echo I  �J�e�S���[  �ォ����  I                                                I
echo I========================I                                                I
Echo I                        I                                                I
echo I �J�[�\���ւ�  �����ڌn I                                                I
echo I                        I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1
if %ErrorLevel%==2 goto :settingcategory2
if %ErrorLevel%==3 goto :settingcategory1
if %ErrorLevel%==4 goto :settingcategory2
if %ErrorLevel%==5 goto :settingcategory1int
if %ErrorLevel%==6 goto :hazime
if %ErrorLevel%==7 goto :settingcategory1int
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategoryhelpmode

:settingcategory2
rem �ݒ�t�@�C�������݂��邩�����m
cd /d %batchmainpath%
rem �ꏊ OS���������h���C�u:\Users\���[�U�[��
rem (�� ���[�U�[�̖��O��test�������ꍇ�ƁAOS���������ꏊ��C�h���C�u�������ꍇ���� C:\Users\Test)
if not exist %Settingsfile% (goto :dogcheck)
title �J�[�\���ւ� ^| �ݒ� 
set selected=
if not defined "%clrgra%" (set clrgra=[90m)
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �J�[�\���ւ��̌����ڂɊւ���ݒ�ł��B        I
echo I                        I %clrgra%�i�e�[�}�Ȃǁj%clr2%                                 I
echo I========================I                                                I
echo I  �J�e�S���[  �ォ����  I                                                I
echo I========================I                                                I
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
if %ErrorLevel%==1 goto :settingcategory1
if %ErrorLevel%==2 goto :settingcategory2
if %ErrorLevel%==3 goto :settingcategory1
if %ErrorLevel%==4 goto :settingcategoryhelpmode
if %ErrorLevel%==5 goto :settingcategory2int
if %ErrorLevel%==6 goto :hazime
if %ErrorLevel%==7 goto :settingcategory2int
if %ErrorLevel%==8 goto :settingcategory2int
if %ErrorLevel%==9 goto :settingcategoryhelpmode

rem �J�e�S���[����

:settingcategory1int
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �N�����ɃJ�[�\���ւ��ŋN��        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1
if %ErrorLevel%==2 goto :settingcategory2
if %ErrorLevel%==3 goto :settingcategory1
if %ErrorLevel%==4 goto :settingcategory2
if %ErrorLevel%==5 goto :settingcategory1intsetting1
if %ErrorLevel%==6 goto :settingcategory1
if %ErrorLevel%==7 goto :settingcategory1intsetting1
if %ErrorLevel%==8 goto :settingcategory1intsetting1
if %ErrorLevel%==9 goto :settingcategoryhelpmode

:settingcategory1intsetting1
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I %clr%1 �N�����ɃJ�[�\���ւ��ŋN��%clr2%        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1intsetting1
if %ErrorLevel%==2 goto :settingcategory1intsetting2
if %ErrorLevel%==3 goto :settingcategory1intsetting3
if %ErrorLevel%==4 goto :settingcategory1intsetting4
if %ErrorLevel%==5 goto :settingcategory1intsetting5
if %ErrorLevel%==6 goto :settingcategory1intsetting1
if %ErrorLevel%==7 goto :settingcategory1intsetting2
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategory1int
if %ErrorLevel%==10 goto :setting1
if %ErrorLevel%==11 goto :setting1

:settingcategory1intsetting2
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �N�����ɃJ�[�\���ւ��ŋN��        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I %clr%2 �N�����̃A�h�~��%clr2%                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1intsetting1
if %ErrorLevel%==2 goto :settingcategory1intsetting2
if %ErrorLevel%==3 goto :settingcategory1intsetting3
if %ErrorLevel%==4 goto :settingcategory1intsetting4
if %ErrorLevel%==5 goto :settingcategory1intsetting5
if %ErrorLevel%==6 goto :settingcategory1intsetting1
if %ErrorLevel%==7 goto :settingcategory1intsetting3
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategory1int
if %ErrorLevel%==10 goto :setting2
if %ErrorLevel%==11 goto :setting2


:settingcategory1intsetting3
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �N�����ɃJ�[�\���ւ��ŋN��        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %clr%3 �N�����ɍX�V�m�F%clr2%                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1intsetting1
if %ErrorLevel%==2 goto :settingcategory1intsetting2
if %ErrorLevel%==3 goto :settingcategory1intsetting3
if %ErrorLevel%==4 goto :settingcategory1intsetting4
if %ErrorLevel%==5 goto :settingcategory1intsetting5
if %ErrorLevel%==6 goto :settingcategory1intsetting2
if %ErrorLevel%==7 goto :settingcategory1intsetting4
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategory1int
if %ErrorLevel%==10 goto :setting3
if %ErrorLevel%==11 goto :setting3


:settingcategory1intsetting4
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �N�����ɃJ�[�\���ւ��ŋN��        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I %clr%4 Enter�̒����������m����@�\%clr2%       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I 5 �������܂��̓A���C���X�g�[��                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1intsetting1
if %ErrorLevel%==2 goto :settingcategory1intsetting2
if %ErrorLevel%==3 goto :settingcategory1intsetting3
if %ErrorLevel%==4 goto :settingcategory1intsetting4
if %ErrorLevel%==5 goto :settingcategory1intsetting5
if %ErrorLevel%==6 goto :settingcategory1intsetting3
if %ErrorLevel%==7 goto :settingcategory1intsetting5
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategory1int
if %ErrorLevel%==10 goto :setting4
if %ErrorLevel%==11 goto :setting4


:settingcategory1intsetting5
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O===========O==========O
echo I%clr%                        %clr2%I 1 �N�����ɃJ�[�\���ւ��ŋN��        I   %setting1onoff%   I
echo I%clr%  �J�[�\���ւ�  �@�\�n  %clr2%I                                     O==========O
echo I%clr%                        %clr2%I 2 �N�����̃A�h�~��                  I   %setting2onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 �N�����ɍX�V�m�F                  I   %setting3onoff%   I
echo I========================I                                     O==========O
Echo I                        I 4 Enter�̒����������m����@�\       I   %setting4onoff%   I
echo I �J�[�\���ւ�  �����ڌn I                                     O==========O
echo I                        I %clr%5 �������܂��̓A���C���X�g�[��%clr2%                 I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12345wsabye /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory1intsetting1
if %ErrorLevel%==2 goto :settingcategory1intsetting2
if %ErrorLevel%==3 goto :settingcategory1intsetting3
if %ErrorLevel%==4 goto :settingcategory1intsetting4
if %ErrorLevel%==5 goto :settingcategory1intsetting5
if %ErrorLevel%==6 goto :settingcategory1intsetting4
if %ErrorLevel%==7 goto :settingcategory1intsetting5
if %ErrorLevel%==8 goto :settingcategory1int
if %ErrorLevel%==9 goto :settingcategory1int
if %ErrorLevel%==10 goto :AllDefult
if %ErrorLevel%==11 goto :AllDefult

:settingcategory2int
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I 1 �N�����̃A�j���[�V�����̐ݒ�      I     ^>    I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I 2 ���C�����j���[�ɔw�i��\��        I   %setting6onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 %wmodeonoff%                         I
echo I========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsdbye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting1
if %ErrorLevel%==2 goto :settingcategory2intsetting2
if %ErrorLevel%==3 goto :settingcategory1
if %ErrorLevel%==4 goto :settingcategoryhelpmode
if %ErrorLevel%==5 goto :settingcategory2intsetting1
if %ErrorLevel%==6 goto :settingcategory2
if %ErrorLevel%==7 goto :settingcategory2intsetting1
if %ErrorLevel%==8 goto :settingcategory2intsetting1
if %ErrorLevel%==9 goto :settingcategoryhelpmode

:settingcategory2intsetting1
set sc2s5s1lock=&set sc2s5s2lock=&set sc2s5s3lock=&set sc2s5s1lock2=&set sc2s5s2lock2=&set sc2s5s3lock2=&set setting5_stg_whereyou=
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[  
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I %clr%1 �N�����̃A�j���[�V�����̐ݒ�%clr2%      I     ^>    I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I 2 ���C�����j���[�ɔw�i��\��        I   %setting6onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 %wmodeonoff%                         I
echo I========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsabyed3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting1
if %ErrorLevel%==2 goto :settingcategory2intsetting2
if %ErrorLevel%==3 goto :settingcategory2intsetting1
if %ErrorLevel%==4 goto :settingcategory2intsetting2
if %ErrorLevel%==5 goto :settingcategory2int
if %ErrorLevel%==6 goto :settingcategory2int
if %ErrorLevel%==7 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==8 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==9 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==10 goto :settingcategory2intsetting3

:settingcategory2intsetting2
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I 1 �N�����̃A�j���[�V�����̐ݒ�      I     ^>    I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %clr%2 ���C�����j���[�ɔw�i��\��%clr2%        I   %setting6onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I 3 %wmodeonoff%                         I
echo I========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsabye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting1
if %ErrorLevel%==2 goto :settingcategory2intsetting2
if %ErrorLevel%==3 goto :settingcategory2intsetting1
if %ErrorLevel%==4 goto :settingcategory2intsetting3
if %ErrorLevel%==5 goto :settingcategory2int
if %ErrorLevel%==6 goto :settingcategory2int
if %ErrorLevel%==7 goto :setting6
if %ErrorLevel%==8 goto :setting6
if %ErrorLevel%==9 goto :settingcategory2intsetting3

:settingcategory2intsetting3
title �J�[�\���ւ� ^| �ݒ� 
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I 1 �N�����̃A�j���[�V�����̐ݒ�      I     ^>    I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I 2 ���C�����j���[�ɔw�i��\��        I   %setting6onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %clr%3 %wmodeonoff%%clr2%                         I
echo I========================I                                                I
Echo I%clr%                        %clr2%I                                                I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                                I
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 12wsabye3 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting1
if %ErrorLevel%==2 goto :settingcategory2intsetting2
if %ErrorLevel%==3 goto :settingcategory2intsetting2
if %ErrorLevel%==4 goto :settingcategory2intsetting3
if %ErrorLevel%==5 goto :settingcategory2int
if %ErrorLevel%==6 goto :settingcategory2int
if %ErrorLevel%==7 goto :wmode
if %ErrorLevel%==8 goto :wmode
if %ErrorLevel%==9 goto :settingcategory2intsetting3



:settingcategory2intsetting5_stg0
set setting5_stg_whereyou=stg0
title �J�[�\���ւ� ^| �ݒ� 
call :settingcategory2intsetting5blockcheck
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O O====================O
echo I      �J�e�S���[        I                  I �ݒ� I I �ݒ�5/...          I
echo O========================O==================O======O=O====================O
echo I                        I %clr%1 �N���A�j���[�V����%clr2%                I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %sc2s5s1lock%2 ���i�b�N�X���N���A�j���[�V����%sc2s5s1lock2%    I   %setting5_s1onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %sc2s5s2lock%3 �V���v���ȋN���A�j���[�V����%sc2s5s2lock2%      I   %setting5_s2onoff%   I
echo I========================I                                     O==========O
Echo I%clr%                        %clr2%I %sc2s5s3lock%4 ���̋N���A�j���[�V����%sc2s5s3lock2%            I   %setting5_s3onoff%   I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                     O==========O
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 123wsabye4 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==2 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==3 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==4 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==5 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==6 goto :settingcategory2intsetting1
if %ErrorLevel%==7 goto :settingcategory2intsetting1
if %ErrorLevel%==8 goto :setting5
if %ErrorLevel%==9 goto :setting5
if %ErrorLevel%==10 goto :settingcategory2intsetting5_stg3


:settingcategory2intsetting5_stg1
if "%setting5onoff%"=="����" if "%linuxboot%"=="false" if "%setting5_stg_whereyou%"=="stg1" (goto :settingcategory2intsetting5_stg0)
if "%setting5onoff%"=="����" if "%setting5_stg_whereyou%"=="stg2" (goto :settingcategory2intsetting5_stg0) else if "%linuxboot%"=="false" if "%setting5onoff%"=="����" if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg2)
if "%simpleboot%"=="true" if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg2) else if "%setting5_stg_whereyou%"=="stg2" (goto :settingcategory2intsetting5_stg0)
if "%rawboot%"=="true" if "%setting5_stg_whereyou%"=="stg3" (goto :settingcategory2intsetting5_stg3) else if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg3)
set setting5_stg_whereyou=stg1
title �J�[�\���ւ� ^| �ݒ�  
call :settingcategory2intsetting5blockcheck
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O O====================O
echo I      �J�e�S���[        I                  I �ݒ� I I �ݒ�5/...          I
echo O========================O==================O======O=O====================O
echo I                        I 1 �N���A�j���[�V����                I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %clr%2 ���i�b�N�X���N���A�j���[�V����%clr2%    I   %setting5_s1onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %sc2s5s2lock%3 �V���v���ȋN���A�j���[�V����%sc2s5s2lock2%      I   %setting5_s2onoff%   I
echo I========================I                                     O==========O
Echo I%clr%                        %clr2%I %sc2s5s3lock%4 ���̋N���A�j���[�V����%sc2s5s3lock2%            I   %setting5_s3onoff%   I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                     O==========O
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 123wsabye4 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==2 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==3 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==4 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==5 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==6 goto :settingcategory2intsetting1
if %ErrorLevel%==7 goto :settingcategory2intsetting1
if %ErrorLevel%==8 goto :setting5_1
if %ErrorLevel%==9 goto :setting5_1
if %ErrorLevel%==10 goto :settingcategory2intsetting5_stg3


:settingcategory2intsetting5_stg2
if "%linuxboot%"=="true" if "%setting5_stg_whereyou%"=="stg1" (goto :settingcategory2intsetting5_stg1) else if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg0)
if "%rawboot%"=="true" if "%setting5_stg_whereyou%"=="stg3" (goto :settingcategory2intsetting5_stg0) else if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg3)
set setting5_stg_whereyou=stg2
title �J�[�\���ւ� ^| �ݒ� 
call :settingcategory2intsetting5blockcheck
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O O====================O
echo I      �J�e�S���[        I                  I �ݒ� I I �ݒ�5/...          I
echo O========================O==================O======O=O====================O
echo I                        I 1 �N���A�j���[�V����                I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %sc2s5s1lock%2 ���i�b�N�X���N���A�j���[�V����%sc2s5s1lock2%    I   %setting5_s1onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %clr%3 �V���v���ȋN���A�j���[�V����%clr2%      I   %setting5_s2onoff%   I
echo I========================I                                     O==========O
Echo I%clr%                        %clr2%I %sc2s5s3lock%4 ���̋N���A�j���[�V����%sc2s5s3lock2%            I   %setting5_s3onoff%   I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                     O==========O
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 123wsabye4 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==2 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==3 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==4 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==5 goto :settingcategory2intsetting5_stg3
if %ErrorLevel%==6 goto :settingcategory2intsetting1
if %ErrorLevel%==7 goto :settingcategory2intsetting1
if %ErrorLevel%==8 goto :setting5_2
if %ErrorLevel%==9 goto :setting5_2
if %ErrorLevel%==10 goto :settingcategory2intsetting5_stg3

:settingcategory2intsetting5_stg3
if "%setting5onoff%"=="����" if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg0) else if "%setting5_stg_whereyou%"=="stg2" (goto :settingcategory2intsetting5_stg2)
if "%linuxboot%"=="true" if "%setting5_stg_whereyou%"=="stg1" (goto :settingcategory2intsetting5_stg1)  else if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg0)
if "%simpleboot%"=="true" if "%setting5_stg_whereyou%"=="stg2" (goto :settingcategory2intsetting5_stg2) else if "%setting5_stg_whereyou%"=="stg0" (goto :settingcategory2intsetting5_stg0)
set setting5_stg_whereyou=stg3
title �J�[�\���ւ� ^| �ݒ� 
call :settingcategory2intsetting5blockcheck
set selected=
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O O====================O
echo I      �J�e�S���[        I                  I �ݒ� I I �ݒ�5/...          I
echo O========================O==================O======O=O====================O
echo I                        I 1 �N���A�j���[�V����                I   %setting5onoff%   I
echo I  �J�[�\���ւ�  �@�\�n  I                                     O==========O
echo I                        I %sc2s5s1lock%2 ���i�b�N�X���N���A�j���[�V����%sc2s5s1lock2%    I   %setting5_s1onoff%   I
echo I========================I                                     O==========O
echo I  �J�e�S���[  �ォ����  I %sc2s5s2lock%3 �V���v���ȋN���A�j���[�V����%sc2s5s2lock2%      I   %setting5_s2onoff%   I
echo I========================I                                     O==========O
Echo I%clr%                        %clr2%I %clr%4 ���̋N���A�j���[�V����%clr2%            I   %setting5_s3onoff%   I
echo I%clr% �J�[�\���ւ�  �����ڌn %clr2%I                                     O==========O
echo I%clr%                        %clr2%I                                                I
echo O========================O==O=====================O==========O============O
echo I%clrhelp%      �w���v���[�h      %clrhelp2%I  I �ړ� : W A S D ���� I �߂� : B I ���� : Y E I
echo O========================O  O=====================O==========O============O
echo.
echo.
choice /c 123wsabye4 /n /m "�ύX������̂𐔎��Ŏw�薔��wasd�ňړ����Ďw�肵�Ă�������"
if %ErrorLevel%==1 goto :settingcategory2intsetting5_stg0
if %ErrorLevel%==2 goto :settingcategory2intsetting5_stg1
if %ErrorLevel%==3 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==4 goto :settingcategory2intsetting5_stg2
if %ErrorLevel%==5 goto :settingcategory2intsetting5_stg3
if %ErrorLevel%==6 goto :settingcategory2intsetting1
if %ErrorLevel%==7 goto :settingcategory2intsetting1
if %ErrorLevel%==8 goto :setting5_3
if %ErrorLevel%==9 goto :setting5_3
if %ErrorLevel%==10 goto :settingcategory2intsetting5_stg3

:settingcategory2intsetting5blockcheck
set sc2s5s1lock=&set sc2s5s1lock2=&set sc2s5s2lock=&set sc2s5s2lock2=&set sc2s5s3lock=&set sc2s5s3lock2=&
if "%linuxboot%"=="true" (
    if "%wmodetoggle%"=="true" (
    set sc2s5s2lock=[0m[107m&set sc2s5s2lock2=[0m[107m[30m
    set sc2s5s3lock=[0m[107m&set sc2s5s3lock2=[0m[107m[30m
    ) else (
    set sc2s5s2lock=[0m[90m&set sc2s5s2lock2=[0m
    set sc2s5s3lock=[0m[90m&set sc2s5s3lock2=[0m
    )
    if "%setting5onoff%"=="����" (
    if "%wmodetoggle%"=="true" (
    set sc2s5s2lock=[0m[107m&set sc2s5s2lock2=[0m[107m[30m
    set sc2s5s3lock=[0m[107m&set sc2s5s3lock2=[0m[107m[30m
    ) else (
    set sc2s5s2lock=[0m[90m&set sc2s5s2lock2=[0m
    set sc2s5s3lock=[0m[90m&set sc2s5s3lock2=[0m
    )
    exit /b
  )
)
if "%simpleboot%"=="true" (
    if "%wmodetoggle%"=="true" (
    set sc2s5s1lock=[0m[107m&set sc2s5s1lock2=[0m[107m[30m
    set sc2s5s3lock=[0m[107m&set sc2s5s3lock2=[0m[107m[30m
    ) else (
    set sc2s5s1lock=[0m[90m&set sc2s5s1lock2=[0m
    set sc2s5s3lock=[0m[90m&set sc2s5s3lock2=[0m
    )
) 
if "%rawboot%"=="true" (
    if "%wmodetoggle%"=="true" (
    set sc2s5s1lock=[0m[107m&set sc2s5s1lock2=[0m[107m[30m
    set sc2s5s2lock=[0m[107m&set sc2s5s2lock2=[0m[107m[30m
    ) else (
    set sc2s5s1lock=[0m[90m&set sc2s5s1lock2=[0m
    set sc2s5s2lock=[0m[90m&set sc2s5s2lock2=[0m
    )
)
if "%setting5onoff%"=="����" (
    if "%wmodetoggle%"=="true" (
    set sc2s5s1lock=[0m[107m&set sc2s5s1lock2=[0m[107m[30m
    set sc2s5s3lock=[0m[107m&set sc2s5s3lock2=[0m[107m[30m
    ) else (
    set sc2s5s1lock=[0m[90m&set sc2s5s1lock2=[0m
    set sc2s5s3lock=[0m[90m&set sc2s5s3lock2=[0m
    )
)
exit /b



:settingcategoryhelpmode
rem ���� �����̕����true�̂Ƃ���ɁAclr�̐F��ς��鏈����ǉ��������Bchoice�̒���ɕ���ł��Ƃɖ߂��������ǉ�����
if "%settinghelptoggle%"=="true" (set settinghelp=�L��)
if "%settinghelptoggle%"=="false" (set settinghelp=����)
title �J�[�\���ւ� ^| �ݒ� 
set selected=
if not defined "%clrgra%" (set clrgra=[90m)
if "%settinghelptoggle%"=="true" (set clr=[46m)
Cls
echo.
Echo                                 �ݒ胁�j���[
echo. 
echo O========================O                  O======O
echo I      �J�e�S���[        I                  I �ݒ� I
echo O========================O==================O======O======================O
echo I                        I                                                I
echo I  �J�[�\���ւ�  �@�\�n  I  �w���v���[�h�ł��B���̋@�\��I��������A      I
echo I                        I  �T�v���������ݒ��I������ƁA                I
echo I========================I  ���̐ݒ�̊T�v�����邱�Ƃ��ł��܂��B          I
echo I  �J�e�S���[  �ォ����  I                                                I
echo I========================I  �w���v���[�h�𖳌��ɂ������ꍇ�́A            I
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
if "%wmodetoggle%"=="false" (set clr=[7m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clr2=[0m[107m[30m)
if %ErrorLevel%==1 goto :settingcategory1
if %ErrorLevel%==2 goto :settingcategory2
if %ErrorLevel%==3 goto :settingcategory2
if %ErrorLevel%==4 goto :settingcategoryhelpmode
if %ErrorLevel%==5 goto :hazime
if %ErrorLevel%==6 goto :settingcategoryhelpmodetoggle
if %ErrorLevel%==7 goto :settingcategoryhelpmodetoggle
if %ErrorLevel%==8 goto :settingcategoryhelpmode

:settingcategoryhelpmodetoggle
if "%settinghelptoggle%"=="true" (set settinghelptoggle=false&set clrhelp=&set clrhelp2=&goto :settingcategoryhelpmode)
if "%settinghelptoggle%"=="false" (set settinghelptoggle=true&goto :settingcategoryhelpmodetoggleiftrue)


:settingcategoryhelpmodetoggleiftrue
if "%wmodetoggle%"=="false" (set clr=[46m&set clrhelp=[7m&set clrhelp2=[0m)
if "%wmodetoggle%"=="true" (set clr=[46m&set clrhelp=[100m[97m&set clrhelp2=[0m[107m[30m)
goto :settingcategoryhelpmode





rem �ݒ�̓K�p�Ɗm�F
rem �ݒ肪���݂��邩�̌���
:setting1
if "%settinghelptoggle%"=="true" (goto :setting1help)
find "BootAsCC=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting1setonoff=�L��&goto :setting1okey
if %ErrorLevel%==1 set setting1setonoff=�C�����A����ȏ��& goto :setting1onoff

:setting1onoff
find "BootAsCC=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting1setonoff=����

:setting1okey
cls
set selected=
echo �N�����ɃJ�[�\���ւ��ŋN������̂�%setting1setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting1y)
if "%selected%"=="n" (goto :setting1n)
if "%selected%"=="back" (goto :settingcategory1intsetting1)
if "%selected%"=="b" (goto :settingcategory1intsetting1)
goto :setting1okey

:setting1y
find "BootAsCC=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting1ygo3test
if %ErrorLevel%==0 goto :setting1ygo1

:setting1ygo3test
find "BootAsCC=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo BootAsCC=false >> %Settingsfile%
if %ErrorLevel%==0 goto :setting1ygo2

:setting1ygo2
powershell "(gc %Settingsfile%) -replace 'BootAsCC=true','BootAsCC=false' | sc %Settingsfile%"
goto :setting1yokey

:setting1ygo1
powershell "(gc %Settingsfile%) -replace 'BootAsCC=false','BootAsCC=true' | sc %Settingsfile%"
goto :setting1yokey

:setting1yokey
cls
Echo ����ɕύX����܂����B
Pause
set wantload=setting1
call :SAB_Manager
goto :settingcategory1intsetting1

:setting1n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory1intsetting1

:setting2
if "%settinghelptoggle%"=="true" (goto :setting2help)
find "admin=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting2setonoff=�L��&goto :setting2okey
if %ErrorLevel%==1 set setting2setonoff=�C�����A����ȏ��&goto :setting2onoff

:setting2onoff
find "admin=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting2setonoff=����

:setting2okey
cls
echo �N�����̊Ǘ��Ҍ����̗v����%setting2setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting2y)
if "%selected%"=="n" (goto :setting2n)
if "%selected%"=="back" (goto :settingcategory1intsetting2)
if "%selected%"=="b" (goto :settingcategory1intsetting2)
goto :setting2okey

:setting2y
find "admin=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting2ygo3test
if %ErrorLevel%==0 goto :setting2ygo1

:setting2ygo3test
find "admin=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo admin=true >> %Settingsfile%
if %ErrorLevel%==0 goto :setting2ygo2

:setting2ygo2
powershell "(gc %Settingsfile%) -replace 'admin=true','admin=false' | sc %Settingsfile%"
goto :setting2yokey

:setting2ygo1
powershell "(gc %Settingsfile%) -replace 'admin=false','admin=true' | sc %Settingsfile%"
goto :setting2yokey

:setting2yokey
cls
Echo ����ɕύX����܂����B
Pause
set wantload=setting2
call :SAB_Manager
goto :settingcategory1intsetting2

:setting2n
cls
Echo �N�����̊Ǘ��Ҍ����̗v����%setting2onoff%�ɂȂ�܂���ł���
Pause
goto :settingcategory1intsetting2

:setting3
if "%settinghelptoggle%"=="true" (goto :setting3help)
find "CheckUpdate=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting3setonoff=�L��&goto :setting3onoff
if %ErrorLevel%==1 set setting3setonoff=�C�����A����ȏ��&goto :setting3onoff

:setting3onoff
find "CheckUpdate=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting3setonoff=����&set setting3warning=
:setting3okey
cls
echo �N�����ɍX�V���m�F����@�\��%setting3setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting3y)
if "%selected%"=="n" (goto :setting3n)
if "%selected%"=="back" (goto :settingcategory1intsetting3)
if "%selected%"=="b" (goto :settingcategory1intsetting3)
goto :setting3okey

:setting3y
find "CheckUpdate=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting3ygo3test
if %ErrorLevel%==0 goto :setting3ygo1

:setting3ygo3test
find "CheckUpdate=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo CheckUpdate=false >> %Settingsfile%
if %ErrorLevel%==0 goto :setting3ygo2

:setting3ygo2
powershell "(gc %Settingsfile%) -replace 'CheckUpdate=true','CheckUpdate=false' | sc %Settingsfile%"
goto :setting3yokey

:setting3ygo1
powershell "(gc %Settingsfile%) -replace 'CheckUpdate=false','CheckUpdate=true' | sc %Settingsfile%"
goto :setting3yokey

:setting3n
cls
Echo �����N���͗L���ɂȂ�܂���ł���
Pause
goto :settingcategory1intsetting3

:setting3yokey
cls
Echo �����N����%setting3setonoff%�ɂ��܂����B
Pause
set wantload=setting3
call :SAB_Manager
goto :settingcategory1intsetting3

:setting4
if "%settinghelptoggle%"=="true" (goto :setting4help)
find "hatenakeikoku=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting4setonoff=�L��&goto :setting4okey
if %ErrorLevel%==1 set setting4setonoff=�C�����A����ȏ��&goto :setting4onoff

:setting4onoff
find "hatenakeikoku=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting4setonoff=����

:setting4okey
cls
echo �G���^�[�L�[�̒��������m�@�\��%setting4setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting4y)
if "%selected%"=="n" (goto :setting4n)
if "%selected%"=="back" (goto :settingcategory1intsetting4)
if "%selected%"=="b" (goto :settingcategory1intsetting4)
goto :setting4okey

:setting4y
find "hatenakeikoku=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting4ygo3test
if %ErrorLevel%==0 goto :setting4ygo1

:setting4ygo3test
find "hatenakeikoku=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo hatenakeikoku=true >> %Settingsfile%
if %ErrorLevel%==0 goto :setting4ygo2

:setting4ygo2
powershell "(gc %Settingsfile%) -replace 'hatenakeikoku=true','hatenakeikoku=false' | sc %Settingsfile%"
goto :setting4yokey

:setting4ygo1
powershell "(gc %Settingsfile%) -replace 'hatenakeikoku=false','hatenakeikoku=true' | sc %Settingsfile%"
goto :setting4yokey

:setting4yokey
cls
Echo ����ɓK�p����܂����B
Pause
set wantload=setting4
call :SAB_Manager
goto :settingcategory1intsetting4

:setting4n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory1intsetting4

:setting5
if "%settinghelptoggle%"=="true" (goto :setting5help)
find "bootanimation=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5setonoff=�L��&goto :setting5okey
if %ErrorLevel%==1 set setting5setonoff=�C�����A����ȏ��&goto :setting5onoff

:setting5onoff
find "bootanimation=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5setonoff=����

:setting5okey
cls
echo �N�����̃u�[�g�A�j���[�V������%setting5setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting5y)
if "%selected%"=="n" (goto :setting5n)
if "%selected%"=="back" (goto :settingcategory2intsetting5_stg0)
if "%selected%"=="b" (goto :settingcategory2intsetting5_stg0)
goto :setting5okey

:setting5y
find "bootanimation=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting5ygo3test
if %ErrorLevel%==0 goto :setting5ygo1

:setting5ygo3test
find "bootanimation=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo bootanimation=true >> %Settingsfile%
if %ErrorLevel%==0 goto :setting5ygo2

:setting5ygo2
powershell "(gc %Settingsfile%) -replace 'bootanimation=true','bootanimation=false' | sc %Settingsfile%"
goto :setting5yokey

:setting5ygo1
powershell "(gc %Settingsfile%) -replace 'bootanimation=false','bootanimation=true' | sc %Settingsfile%"
goto :setting5yokey

:setting5yokey
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting5
call :SAB_Manager
goto :settingcategory2intsetting5_stg0


:setting5n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory2intsetting5_stg0


:setting5_1
if "%settinghelptoggle%"=="true" (goto :setting5_1help)
find "s5_linuxboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_1setonoff=�L��&goto :setting5_1okey
if %ErrorLevel%==1 set setting5_1setonoff=�C�����A����ȏ��&goto :setting5_1onoff

:setting5_1onoff
find "s5_linuxboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_1setonoff=����

:setting5_1okey
cls
echo �N������linux���̋N���A�j���[�V������%setting5_1setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting5_1y)
if "%selected%"=="n" (goto :setting5_1n)
if "%selected%"=="back" (goto :settingcategory2intsetting5_stg0)
if "%selected%"=="b" (goto :settingcategory2intsetting5_stg0)
goto :setting5_1okey

:setting5_1y
find "s5_linuxboot=false" %Settingsfile% > nul
echo �ݒ��K�p��...

if %ErrorLevel%==1 goto :setting5_1ygo3test
if %ErrorLevel%==0 goto :setting5_1ygo1

:setting5_1ygo3test
find "s5_linuxboot=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo s5_linuxboot=false >> %Settingsfile%
if %ErrorLevel%==0 goto :setting5_1ygo2

:setting5_1ygo2
powershell "(gc %Settingsfile%) -replace 's5_linuxboot=true','s5_linuxboot=false' | sc %Settingsfile%"
set linuxboot=false
goto :setting5_1yokey

:setting5_1ygo1
powershell "(gc %Settingsfile%) -replace 's5_linuxboot=false','s5_linuxboot=true' | sc %Settingsfile%"
set linuxboot=true
goto :setting5_1yokey

:setting5_1yokey
if "%linuxboot%"=="true" (
if "%wmodetoggle%"=="true" (set linuxishclr2=[107m[30m) else (set linuxishclr2=[0m)
set linuxishclred=[91m& set linuxishclr=[92m
) else (set linuxishclred=& set linuxishclr=& set linuxishclr2=)
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting5_1
call :SAB_Manager
goto :settingcategory2intsetting5_stg1

:setting5_1n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory2intsetting5_stg1


:setting5_2
if "%settinghelptoggle%"=="true" (goto :setting5_2help)
find "s5_simpleboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_2setonoff=�L��&goto :setting5_2okey
if %ErrorLevel%==1 set setting5_2setonoff=�C�����A����ȏ��&goto :setting5_2onoff

:setting5_2onoff
find "s5_simpleboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_2setonoff=����

:setting5_2okey
cls
echo �N�����̃V���v���ȃu�[�g�A�j���[�V������%setting5_2setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting5_2y)
if "%selected%"=="n" (goto :setting5_2n)
if "%selected%"=="back" (goto :settingcategory2intsetting5_stg1)
if "%selected%"=="b" (goto :settingcategory2intsetting5_stg1)
goto :setting5_2okey

:setting5_2y
find "s5_simpleboot=false" %Settingsfile% > nul
echo �ݒ��K�p��...
if %ErrorLevel%==1 goto :setting5_2ygo3test
if %ErrorLevel%==0 goto :setting5_2ygo1

:setting5_2ygo3test
find "s5_simpleboot=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo s5_simpleboot=false >> %Settingsfile%
if %ErrorLevel%==0 goto :setting5_2ygo2

:setting5_2ygo2
powershell "(gc %Settingsfile%) -replace 's5_simpleboot=true','s5_simpleboot=false' | sc %Settingsfile%"
set simpleboot=false
goto :setting5_2yokey

:setting5_2ygo1
powershell "(gc %Settingsfile%) -replace 's5_simpleboot=false','s5_simpleboot=true' | sc %Settingsfile%"
set simpleboot=true
goto :setting5_2yokey

:setting5_2yokey
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting5_2
call :SAB_Manager
goto :settingcategory2intsetting5_stg2

:setting5_2n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory2intsetting5_stg2



:setting5_3
if "%settinghelptoggle%"=="true" (goto :setting5_3help)
find "s5_rawboot=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_3setonoff=�L��&goto :setting5_3okey
if %ErrorLevel%==1 set setting5_3setonoff=�C�����A����ȏ��&goto :setting5_3onoff

:setting5_3onoff
find "s5_rawboot=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting5_3setonoff=����

:setting5_3okey
cls
echo �N�����̐��A�j���[�V������%setting5_3setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting5_3y)
if "%selected%"=="n" (goto :setting5_3n)
if "%selected%"=="back" (goto :settingcategory2intsetting5_stg3)
if "%selected%"=="b" (goto :settingcategory2intsetting5_stg3)
goto :setting5_3okey

:setting5_3y
find "s5_rawboot=false" %Settingsfile% > nul
echo �ݒ��K�p��...

if %ErrorLevel%==1 goto :setting5_3ygo3test
if %ErrorLevel%==0 goto :setting5_3ygo1

:setting5_3ygo3test
find "s5_rawboot=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo s5_rawboot=false >> %Settingsfile%
if %ErrorLevel%==0 goto :setting5_3ygo2

:setting5_3ygo2
powershell "(gc %Settingsfile%) -replace 's5_rawboot=true','s5_rawboot=false' | sc %Settingsfile%"
set rawboot=false
goto :setting5_3yokey

:setting5_3ygo1
powershell "(gc %Settingsfile%) -replace 's5_rawboot=false','s5_rawboot=true' | sc %Settingsfile%"
set rawboot=true
goto :setting5_3yokey

:setting5_3yokey
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting5_3
call :SAB_Manager
goto :settingcategory2intsetting5_stg3

:setting5_3n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory2intsetting5_stg3


:setting6
if "%settinghelptoggle%"=="true" (goto :setting6help)
find "HazimeBg=false" %Settingsfile% > nul
if %ErrorLevel%==0 set setting6setonoff=�L��&goto :setting6okey
if %ErrorLevel%==1 set setting6setonoff=�C�����A����ȏ��&goto :setting6onoff

:setting6onoff
find "HazimeBg=true" %Settingsfile% > nul
if %ErrorLevel%==0 set setting6setonoff=����

:setting6okey
cls
echo ���C�����j���[�̔w�i��%setting6setonoff%�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
echo %selected% ���I������܂����B
if "%selected%"=="y" (goto :setting6y)
if "%selected%"=="n" (goto :setting6n)
if "%selected%"=="back" (goto :settingcategory2intsetting2)
if "%selected%"=="b" (goto :settingcategory2intsetting2)
goto :setting6okey

:setting6y
find "HazimeBg=false" %Settingsfile% > nul
echo �ݒ��K�p��...

if %ErrorLevel%==1 goto :setting6ygo3test
if %ErrorLevel%==0 goto :setting6ygo1

:setting6ygo3test
find "HazimeBg=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo HazimeBg=true >> %Settingsfile%& goto :setting6yokey
if %ErrorLevel%==0 goto :setting6ygo2

:setting6ygo2
powershell "(gc %Settingsfile%) -replace 'HazimeBg=true','HazimeBg=false' | sc %Settingsfile%"
goto :setting6yokey

:setting6ygo1
powershell "(gc %Settingsfile%) -replace 'HazimeBg=false','HazimeBg=true' | sc %Settingsfile%"
goto :setting6yokey

:setting6yokey
cls
Echo �ݒ��ύX���܂����B
Pause
set wantload=setting6
call :SAB_Manager
goto :settingcategory2intsetting2

:setting6n
cls
Echo �ݒ��ύX���܂���ł���
Pause
goto :settingcategory2intsetting2



:wmode
if "%settinghelptoggle%"=="true" (goto :wmodehelp)
cd /d %batchmainpath%
:wmodetest
find "wmode=false" %Settingsfile% > nul
if %ErrorLevel%==0 set wmodesetonoff=�z���C�g
if %ErrorLevel%==1 set wmodesetonoff=�e�[�}�̐ݒ���C�����A�����& goto :wmodeonoff

:wmodeonoff
find "wmode=true" %Settingsfile% > nul
if %ErrorLevel%==0 set wmodesetonoff=�_�[�N

cls
echo �J�[�\���ւ��̃e�[�}��%wmodesetonoff%�e�[�}�ɂ��܂����H(Y=�͂� N=������ B=�߂�)
SET /P selected= :
rem �e�[�}�̕���
if "%selected%"=="y" (goto :wmodey)
if "%selected%"=="yes" (goto :wmodey)
if "%selected%"=="egg" (goto :secret)
if "%selected%"=="n" (goto :no01)
if "%selected%"=="no" (goto :no01)
if "%selected%"=="back" (goto :settingcategory2intsetting3)
if "%selected%"=="b" (goto :settingcategory2intsetting3)
if "%selected%"=="def" (goto :defultwok)
if "%selected%"=="defult" (goto :defultwok)
goto :wmode

:wmodey
find "wmode=false" %Settingsfile% > nul
echo �e�[�}��K�p��...
if %ErrorLevel%==1 goto :wmodeygo3test
if %ErrorLevel%==0 goto :wmodeygo1

:wmodeygo3test
find "wmode=true" %Settingsfile% > nul
if %ErrorLevel%==1 echo wmode=false >> %Settingsfile%&goto :wmodeygo1
if %ErrorLevel%==0 goto :wmodeygo2

:wmodeygo2
powershell "(gc %Settingsfile%) -replace 'wmode=true','wmode=false' | sc %Settingsfile%"
goto :wmodeyokey

:wmodeygo1
powershell "(gc %Settingsfile%) -replace 'wmode=false','wmode=true' | sc %Settingsfile%"
goto :wmodeyokey

:wmodeyokey
find "wmode=false" %Settingsfile% > nul
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto :wmodeonoffkenti
:wmodeonoffkenti
find "wmode=true" %Settingsfile% > nul
if %ErrorLevel%==0 color f0
cls
echo %wmodesetonoff%�e�[�}�ɕύX���܂����B
Pause
set wantload=wmode
call :SAB_Manager
if "%wmodetoggle%"=="false" (set clr=[7m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clr2=[0m[107m[30m)
if "%linuxboot%"=="true" (
    if "%wmodetoggle%"=="false" (set linuxishclr2=[0m)
    if "%wmodetoggle%"=="true" (set linuxishclr2=[107m[30m) else (set linuxishclr2=[0m)
)
goto :settingcategory2intsetting3

:no01
cls
echo %wmodesetonoff%�e�[�}�ɂ͕ύX���܂���ł����B
pause
goto :settingcategory2intsetting3

rem �ݒ�̃w���v
:setting1help
cls
echo ���̐ݒ�́A�N����ɃJ�[�\���ւ� (���C�����j���[��1�̍��ڂɂ���@�\) �ɑJ�ڂ��邩��؂�ւ��܂��B
echo �����L���ɂ���ƁA�N������Ƀ��C�����j���[�ɑJ�ڂ������ɃJ�[�\���ւ��ɑJ�ڂ���̂ŁA�f�����J�[�\����ύX�ł��܂��B
echo ���̐ݒ�̓f�t�H���g�ł͖����ł��B
pause
goto :settingcategory1intsetting1

:setting2help
cls
echo ���̐ݒ�́A�Ǘ��Ҍ����ŃJ�[�\���ւ������s���邱�Ƃɂ���āA�J�[�\����ύX����ۂɃG���[���N���Ȃ��悤�ɂ��邽�߂ɂ���܂��B
echo �������ɁA�J�[�\����ύX����ۂɃG���[�������͕ύX�ł��Ȃ������ꍇ�݂̂ɂ��̐ݒ��L���ɂ��邱�Ƃ𐄏����܂��B
echo ���̐ݒ��L���ɂ��邱�Ƃɂ���ċN�����Ԃ��Z�k�����ꍇ������܂��B
echo ���̐ݒ�̓f�t�H���g�ł͖����ł��B
pause
goto :settingcategory1intsetting2

:setting3help
cls
echo ���̋@�\�̓J�[�\���ւ��̋N�����ɍX�V���m�F���邩�ۂ��̐ݒ�ł��B
echo ���̋@�\��L���ɂ���ƁA���N�����ɃA�b�v�f�[�g�̊m�F���s���܂��B
echo �A�b�v�f�[�g�����p�\�Ȃ�K�p���邱�Ƃ��ł��܂��B
echo ���g���̃C���^�[�l�b�g����̑��x�ɂ���Ă͋N�����Ԃ��x���Ȃ�\��������܂��B
echo �ꎞ�Ԃɂ�������50��ȏ�A�����ċN������ƁAgithub��API���[�g�����ɓ��B����\��������܂��B(�����I��3~4��ق�API�𗘗p���邽�߁A������)
echo ���̐ݒ�̓f�t�H���g�ł͖����ł��B
pause
goto :settingcategory1intsetting3

:setting4help
cls
echo ���̐ݒ�͏��X�킩��ɂ����ł����A�ȒP�Ɍ����ƃo�b�`���N�������Ƃ��ɕ\��������ʂ̂܂܂ŉ������͂����ɃG���^�[�𒷉��������Ƃ��ɏo�Ă���
echo �x�����b�Z�[�W��off/on�ɂł���@�\�ł��B
echo ����͎��ۂɑ̌����Ă�������ق����킩��₷���̂ł����A�܂����50��~250�񂭂炢�̊ԃG���^�[�𒷉����������Ă���ƁA
echo �x�������\������銴���ɂȂ�܂��ˁB���������ɂ͂��ꂪ�����Ƃ������Ǝv���l�����邩�Ǝv���܂��̂ŁA���̋@�\���I�t�ɂł���ݒ��ǉ����܂����B
echo ���̐ݒ�̓f�t�H���g�ł͗L���ł��B
pause
goto :settingcategory1intsetting4

:setting5help
cls
echo ���̐ݒ�́A�N�����ɕK�����񗬂��u�[�g�A�j���[�V�����A����΋N����ʂ𖳌��ɂ���\���ɂ���ݒ�ł��B
echo ���̐ݒ�𖳌��ɂ��邱�Ƃɂ���āA�N�����Ԃ̒Z�k�₤���Ƃ������̌y���ɂȂ���܂��B
echo ���̐ݒ�̓f�t�H���g�ł͗L���ł��B
pause
goto :settingcategory2intsetting5_stg0

:setting5_1help
cls
echo ���̐ݒ�̓��i�b�N�X���̋N���A�j���[�V�������Đ�����悤�ɂ���ݒ�ł��B
echo �N�����Ȃ̂��킩��₷���A�����ڂ��ǂ��ł��B�܂��A�N�����ɃG���[�����������ۂɁA�G���[���������������킩��₷���Ȃ邱�Ƃ�����܂��B
echo ���̐ݒ��simpleboot�����rawboot�ƕ��p�ł��܂���B
echo ���̐ݒ�͕W���ł�false�ł��B
pause
goto :settingcategory2intsetting5_stg1

:setting5_2help
cls
echo ���̐ݒ�͋N������"�N����..."�Ƃ����e�L�X�g�݂̂ŋN��������悤�ɂ���ݒ�ł��B
echo ������������₷���A�V���v���ł��B�������܂�Ȃ�������\��������}�X�B
echo ���̐ݒ��linuxboot�����rawboot�ƕ��p�ł��܂���B
echo ���̐ݒ�͕W���ł�false�ł��B
pause
goto :settingcategory2intsetting5_stg2

:setting5_3help
cls
echo ���̐ݒ�͋N������echo on�̏�ԂŋN������悤�ɂ���ݒ�ł��B
echo �V���v���ł킩��₷���A���݉������s����Ă��邩����ڂł킩��܂��B�܂��A�n�b�J�[�C���ɂ��Ȃ�܂��B
echo ���̐ݒ��linuxboot�����simpleboot�ƕ��p�ł��܂���B
echo ���̐ݒ�͕W���ł�false�ł��B
pause
goto :settingcategory2intsetting5_stg3

:setting6help
cls
echo ���̐ݒ�̓��C�����j���[�Ŕw�i��L���ɂ��邩�ǂ�����
echo �ݒ�ł��܂��B�����L���ɂ���ƁA���ǂ������ڂɂȂ�܂��B
echo �������A�R���s���[�^�[�̐��\�ɂ���Ă̓��C�����j���[�̃��X�|���X�������Ȃ�\��������܂��B
echo ���̐ݒ�̓f�t�H���g��true�ł��B
pause
goto :settingcategory2intsetting2

:wmodehelp
cls
echo �����CMD�̉�ʂ𔒐F�܂��͍��F�ɕς��镨�ł��B
echo ������g�p����ƁA�Ⴆ�Ή�ʂ̓z���C�g�e�[�}�œ��ꂳ������A�܂����̂ق����D���Ƃ����l�ɂ��Ή��ł���悤�ɂȂ�܂��B
echo �W���ł͍��F�ł����A���F�ɂ�����A����N�������Ƃ��Ɏ����I�ɉ�ʂ����F�ɂȂ�悤�ɂȂ�܂��B
echo �܂��A������Ƃ������b�ł������̐ݒ�́A1.10�ȑO�܂ł̓z�[�����ɐݒu����Ă��܂����B�܂��A���̋@�\�͐ݒ�̓����\���̂��ƂɂȂ��Ă��܂��B
echo �W���ł̓_�[�N�e�[�}�ł��B
pause
goto :settingcategory2intsetting3
 
:alldefhelp
cls
echo ����̓A���C���X�g�[�����j���[�ł��B���̃��j���[�̓J�[�\���ւ��̃A���C���X�g�[�����s���܂��B
echo ���̃��j���[�ɂ͐ݒ�t�@�C���i�ݒ肪�L�^����Ă���e�L�X�g�t�@�C���j�̃p�X��\������@�\�A�ݒ��������(�f�t�H���g��)����@�\���܂܂�Ă��܂��B
echo �A���C���X�g�[�������s����ꍇ�A�J�[�\���ւ��{�̂��폜����A�i�C�Ӂj�J�[�\�����f�t�H���g�ɍ폜����܂��B�i�C�Ӂj�ݒ�A����N�������m���邽�߂̃t�@�C�������S�ɍ폜����܂��B
echo ���s����ۂ͂��ꂮ������ȐӔC�Ŏ��s���Ă��������B
pause
goto :settingcategory1intsetting5




:batver
set batvercurrent=0& call :batver_exit
if "%batverdev%"=="dev" (set batverdevshow=Dev)
if "%batverdev%"=="beta" (set batverdevshow=Beta)
if "%batverdev%"=="stable" (set batverdevshow=Stable)
if not defined dummy (set /p nothing=[?25l<nul)
if not defined dummy (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clrgra=[0m[107m&set clr2=[90m[107m[30m)

:batver_main
rem Main Bat Version Menu
title �J�[�\���ւ� ^| �o�[�W�������
if "%batverexit%"=="true" (set batvercurrent=& call :batver_exit & goto :hazimemenu)
if not defined batverboot (set MenuRedrew=true& set /p nothing=%clrgra%<nul& call :hazimemenudrew & echo %clr2% & set batverboot=true)
rem I'm doing this because when I use ANSI ESC sequences in Virtual Studio Code, the parentheses are colored incorrectly and I don't like that
call :batver_Core_Drew
if not defined dummuy (set ccmmul=[4m)
if not defined dummy (
echo [6;12H O=================================================O 
echo [7;12H I             �J�[�\���ւ�  �o�[�W����            I 
echo [8;12H I                                                 I 
echo [9;12H I          ���݂̃o�[�W���� :[9;63HI 
echo [10;12H I          ���݂̃r���h     :[10;63HI 
echo [11;12H I                                                 I 
echo [12;12H I    O====================O         O========O    I 
echo [13;12H I    I%bvb% �A�b�v�f�[�g�̊m�F %clr2%I         I%bvb2% ���� %clr2%I    I 
echo [14;12H I    O====================O         O========O    I 
echo [15;12H I                                                 I 
echo [16;12H O=================================================O 
echo [17;20H %clrgra%1~2��A,D�œ������AY,E�Ō���AB�ŏI��%clr2%
)
choice /c 12adyeb /n >nul
if %ErrorLevel%==1 set batvercurrent=1& goto :batver_main
if %ErrorLevel%==2 set batvercurrent=2& goto :batver_main
if %ErrorLevel%==3 call :batver_Core a
if %ErrorLevel%==4 call :batver_Core d
if %ErrorLevel%==5 call :batver_Core y
if %ErrorLevel%==6 call :batver_Core e
if %ErrorLevel%==7 call :batver_Core b
goto :batver_main


:batver_Core
rem Processing of each move
if "%1"=="a" (set /a batvercurrent-=1
    if "%batvercurrent%"=="0" (set batvercurrent=1)
    if "%batvercurrent%"=="1" (set batvercurrent=1)
    exit /b
)
if "%1"=="d" (set /a batvercurrent+=1
    if "%batvercurrent%"=="2" (set batvercurrent=2)
    exit /b
)
if "%1"=="b" (set batverexit=true& exit /b)
if "%1"=="y" (call :batverselect_core& exit /b)
if "%1"=="e" (call :batverselect_core& exit /b)


:batverselect_core
rem Processing of Confirm key, like Y and E.
if "%batvercurrent%"=="0" (set batvercurrent=1& exit /b)
if "%batvercurrent%"=="1" (call :batverupdate& set batverboot=& exit /b)
if "%batvercurrent%"=="2" (set batverexit=true& exit /b)
exit /b

:batver_Core_Drew
rem drawer of Text and Colors.
if not defined dummy (echo [9;42H %batver% ^(%batverdevshow%^))
if not defined dummy (echo [10;42H %batbuild:~6%)
if not defined dummy (set /p nothing=[25;0H%clrgra%�J���� : tamago_1908%clr2%<nul)
if "%batvercurrent%"=="0" (echo [18;27H %clrgra%�����I������Ă��܂���...%clr2%) else (echo [18;29H                                 )
if "%batvercurrent%"=="1" (set bvb=%clr%& set bvb2=& exit /b)
if "%batvercurrent%"=="2" (set bvb2=%clr%& set bvb=& exit /b)
exit /b

:batver_exit
rem initialize of variable
set batverexit=& set bvb=& set bvb2=& set batverboot=& set batverdevshow=& set clrgra=
if not defined dummy (set /p nothing=[?25h<nul)
exit /b

:batverupdate
cd %~dp0
cls
title �J�[�\���ւ� ^| �A�b�v�f�[�^�[
echo �A�b�v�f�[�g �v���Z�X���J�n���Ă��܂�...
set Powersheller=Fullupdater& call :Powersheller
pause
cd %batchmainpath%
mode con: cols=75 lines=25
exit /b


:Appmenu
cls
rem initialize variable
mode con: cols=67 lines=20
if not defined dummy (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clrgra=[0m[107m&set clr2=[90m[107m[30m)
if not defined dummy (set /p nothing=[?25l<nul)
set Appmenucurrent=0

:Appmenu_main
title �J�[�\���ւ� ^| �A�v���P�[�V�������j���[ (�����I)
if "%Appmenuexit%"=="true" (call :Appmenu_exit& goto :hazimemenu)
call :Appmenu_Core_Drew
if not defined dummy (set /p nothing=[0;0H<nul)
if not defined dummmy (
echo.
echo                        �A�v���P�[�V�������j���[                
echo.
echo      O==============================O========================O     
echo      I                              I          ���          I
echo      I   1 : %amb1%�V���v���d��%clr2%           I[6;62HI
echo      I                              I[7;62HI
echo      I   2 : %amb2%2048 �Q�[��%clr2%            I[8;62HI
echo      I                              I[9;62HI
echo      I   3 : %amb3%Internet Explorer 11%clr2%   I[10;62HI
echo      I                              I[11;62HI
echo      O==============================O========================O
echo      I   ������@ :                                          I
echo      I   W,S �� 1~3 �ňړ��AY �� E �ŋN�����܂�              I
echo      I   N �� B �ŏI��                                       I
echo      O=======================================================O
echo.
echo             %clrgra%���s�������A�v���P�[�V������I�����Ă��������B%clr2%
echo.
)
choice /c 123wsyebn /n >nul
if %ErrorLevel%==1 set Appmenucurrent=1
if %ErrorLevel%==2 set Appmenucurrent=2
if %ErrorLevel%==3 set Appmenucurrent=3
if %ErrorLevel%==4 call :Appmenu_Core w
if %ErrorLevel%==5 call :Appmenu_Core s
if %ErrorLevel%==6 call :Appmenu_Core y
if %ErrorLevel%==7 call :Appmenu_Core e
if %ErrorLevel%==8 call :Appmenu_Core b
if %ErrorLevel%==9 call :Appmenu_Core n
goto :Appmenu_main


:Appmenu_Core
rem Processing of each move

if "%1"=="w" (
    if "%Appmenucurrent%"=="0" (set Appmenucurrent=1& exit /b)
    if "%Appmenucurrent%"=="1" (set Appmenucurrent=1& exit /b)
    if "%Appmenucurrent%"=="3" (set Appmenucurrent=2& exit /b)
    set /a Appmenucurrent-=1
    exit /b
) else if "%1"=="s" (
    if "%Appmenucurrent%"=="0" (set Appmenucurrent=1& exit /b)
    if "%Appmenucurrent%"=="1" (set Appmenucurrent=2& exit /b)
    if "%Appmenucurrent%"=="3" (set Appmenucurrent=3& exit /b)
    set /a Appmenucurrent+=1
    exit /b
)

if "%1"=="y" (
call :Appmenuselect_core
exit /b
) else if "%1"=="e" (
call :Appmenuselect_core
exit /b
)

if "%1"=="b" (
set Appmenuexit=true
exit /b
) else if "%1"=="n" (
set Appmenuexit=true
exit /b
)

:Appmenuselect_core
rem Processing of Confirm key, like Y and E.
if "%Appmenucurrent%"=="0" (set Appmenucurrent=1& exit /b)
if "%Appmenucurrent%"=="1" (call :Startcal)
if "%Appmenucurrent%"=="2" (call :2048_game)
if "%Appmenucurrent%"=="3" (call :Openie)
rem I know it works the same way as cls when mode con is changed, but well... whatever.
mode con: cols=67 lines=20
cls & call :Appmenu_Core_Drew
exit /b

:Appmenu_Core_Drew
rem drawer of Text and Colors.
if "%Appmenucurrent%"=="0" (echo [7;38H �����I������Ă��܂���) else (for /l %%i in (6,1,10) do (echo [%%i;38H                        ))
if "%Appmenucurrent%"=="1" (echo [7;42H �V���v���ȓd��& echo [8;41H �o�J�ł��g���܂��B)
if "%Appmenucurrent%"=="2" (echo [7;44H 2048 �Q�[���B& echo [8;44H �����Ɋy����& echo [9;44H �ŋ��̃Q�[���B& echo [10;42H %clrgra%������ƒx������%clr2%)
if "%Appmenucurrent%"=="3" (echo [7;41H Internet Explorer& echo [8;43H IE���J���܂��B)
if "%Appmenucurrent%"=="1" (set amb1=%clr%& set amb2=& set amb3=& exit /b)
if "%Appmenucurrent%"=="2" (set amb2=%clr%& set amb1=& set amb3=& exit /b)
if "%Appmenucurrent%"=="3" (set amb3=%clr%& set amb1=& set amb2=& exit /b)
exit /b

:Appmenu_exit
rem initialize of variable
set Appmenucurrent=& set Appmenuexit=& set amb1=& set amb2=& set amb3=& set Appmenuboot=& set clrgra=
if not defined dummy (set /p nothing=[?25h<nul)
exit /b



:startcal
rem �d��
set q=0
set number1=0
set number2=0
set number3=0
cls
echo 2147483647�̌v�Z�܂�(int�^�̏�� �d�l�ケ�����̌v�Z�͕s��)
echo.
title �J�[�\���ւ� ^| �J�[�\���d��

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
if "%q%"=="back" (exit /b)
if "%q%"=="b" (exit /b)
if "%q%"=="1" (set whatnumber=������鑤&goto :startcal2)
if "%q%"=="2" (set whatnumber=������鑤&goto :startcal2) 
if "%q%"=="3" (goto :advancemodecal) else (
echo �����ȑI���ł�&pause&goto :startcal)

:startcal2
echo.
set /p number1=%whatnumber%����� :
if "%q%"=="1" (goto :pcal)
if "%q%"=="2" (goto :mcal)

:pcal
set /p number3=����������� :
set /a number1=number1+number3
echo ���� : %number1%
pause
cls
goto :simplemodecal

:mcal
set /p number3=����������� :
set /a number1=number1-number3
echo ���� : %number1%
pause
cls
goto :simplemodecal

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
goto :loopcal


:openie
title �J�[�\���ւ� ^| �C���^�[�l�b�g�G�N�X�v���[���[���J��
cls
echo �C���^�[�l�b�g�G�N�X�v���[���[���J���Ă��܂�...
powershell -command "$ie = New-Object -ComObject InternetExplorer.Application; $ie.Visible = $true"
ping -n 2 127.0.0.1 > nul 2>&1
exit /b


:2048_game
setlocal enabledelayedexpansion
title �J�[�\���ւ� ^| 2048 �Q�[��
mode con: cols=33 lines=31
set bestscore=0
:2048_startgame
set /a score=0,winstate=0&for /l %%g in (0,1,15)do set board[%%g]=0
set /a moves=0,h=0&for /l %%g in (0,1,15)do if !board[%%g]!==0 set /a h+=1
if %h%==16 call :2048_tilespawn&call :2048_tilespawn
:2048_startloop
if %score% gtr %bestscore% set bestscore=%score%
call :2048_drawboard 0&choice /c wasdbn /n /m ""
echo ������...
if %errorlevel%==1 call :2048_youwin&call :2048_youwin&call :2048_youwin&call :2048_compress&call :2048_merge&call :2048_compress&call :2048_compress&call :2048_youwin
if %errorlevel%==2 call :2048_compress&call :2048_merge&call :2048_compress&call :2048_compress
if %errorlevel%==3 call :2048_youwin&call :2048_compress&call :2048_merge&call :2048_compress&call :2048_compress&call :2048_youwin&call :2048_youwin&call :2048_youwin
if %errorlevel%==4 call :2048_youwin&call :2048_youwin&call :2048_compress&call :2048_merge&call :2048_compress&call :2048_compress&call :2048_youwin&call :2048_youwin
if %errorlevel%==5 goto :2048_end
if %errorlevel%==6 (set /a score=0,winstate=0&set moves=0&for /l %%g in (0,1,15)do set board[%%g]=0
call :2048_tilespawn&call :2048_tilespawn&goto :2048_startloop)
set /a boardchanged=0,tiles=0&for /l %%g in (0,1,15)do (if !board[%%g]! neq !tmpboard[%%g]! set boardchanged=1
if !board[%%g]! neq 0 set /a tiles+=1
if !board[%%g]!==2048 if %winstate%==0 set winstate=1)
if %boardchanged%==1 set /a boardfull=1&for /l %%g in (0,1,15)do if !board[%%g]!==0 set boardfull=0
if %boardchanged%==1 if %boardfull%==1 goto :2048_youlost
if %boardchanged%==1 call :2048_tilespawn&set /a moves+=1
if %winstate%==1 goto :2048_youwin
set /a youlost=0,v=0
:2048_1
set /a v+=1
set /a w=%v%%%4,x=%v%/4,y=%v%-1,z=%v%-4
if %tiles%==15 (if %w% neq 0 if !board[%v%]! equ !board[%y%]! set youlost=1
if %x% neq 0 if !board[%v%]! equ !board[%z%]! set youlost=1)
if %tiles%==15 if %v% neq 15 goto :2048_1
if %tiles%==15 if %boardchanged%==1 if %youlost%==0 goto :2048_youlost
goto :2048_startloop
:2048_tilespawn
set /a randtile=%random%%%16
if !board[%randtile%]! gtr 0 goto :2048_tilespawn
set /a board[%randtile%]=%random%%%10/9*2+2&exit /b
:2048_compress
set x=-1
:2048_2
set /a w=0,x+=1,y=-1&for /l %%g in (0,1,3) do set tmparray[%%g]=0
:2048_3
set /a y+=1&set /a z=%x%*4+!y!
if !board[%z%]! neq 0 set /a tmparray[%w%]=!board[%z%]!&set /a w+=1
if %y% neq 3 goto :2048_3
for /l %%g in (0,1,3)do set /a z=%x%*4+%%g&set /a board[!z!]=!tmparray[%%g]!
if %x% neq 3 goto :2048_2
exit /b
:2048_merge
set x=-1
:2048_4
set /a x+=1,y=-1
:2048_5
set /a y+=1&set /a w=%x%*4+!y!&set /a z=!w!+1
if !board[%w%]!==!board[%z%]! set /a board[%w%]*=2,score+=!board[%w%]!*2&set board[%z%]=0
if %y% neq 2 goto :2048_5
if %x% neq 3 goto :2048_4
exit /b
:2048_youwin
set i=12
for /l %%g in (0,1,15)do set /a tmparray[%%g]=board[!i!],i-=4&if !i! lss 0 set /a i+=17
for /l %%g in (0,1,15)do set /a board[%%g]=!tmparray[%%g]!
exit /b
:2048_youwin
set winstate=2&call :2048_drawboard 1&call &choice /c cnx /n /m ""
if %errorlevel%==1 goto :2048_startloop
if %errorlevel%==2 goto :2048_startgame
if %errorlevel%==3 exit /b
:2048_youlost
call :2048_drawboard 2&for /l %%g in (0,1,15)do set board[%%g]=0
set /a score=0,winstate=0&call &choice /c nx /n /m ""
if %errorlevel%==1 goto :2048_startgame
if %errorlevel%==2 exit /b
:2048_drawboard
for /l %%g in (0,1,15)do (set "board2[%%g]=      !board[%%g]!"&if !board[%%g]!==0 set "board2[%%g]=      "
if %moves% gtr 0 if %%g==%randtile% set board2[%%g]=   + !board[%%g]!
set board2[%%g]=!board2[%%g]:~-6!)

:2048_drawboard
for /l %%g in (0,1,15)do (set "board2[%%g]=      !board[%%g]!"&if !board[%%g]!==0 set "board2[%%g]=      "
if %moves% gtr 0 if %%g==%randtile% set board2[%%g]=   + !board[%%g]!
set board2[%%g]=!board2[%%g]:~-6!)
cls&echo   ___     ___    _  _      ___&echo  ^|__ ?   / _ ?  ^| ^|^| ^|    / _ ?&echo     ) ^| ^| ^| ^| ^| ^| ^|^| ^|_  ^| (_) ^|&echo    / /  ^| ^| ^| ^| ^|__   _^|  ^> _ ^<&echo   / /_  ^| ^|_^| ^|    ^| ^|   ^| (_) ^|&echo  ^|____^|  ?___/     ^|_^|    ?___/&echo(&echo        �^�C���𑫂����킹�āA  &echo   �@2048�̃^�C�������܂��傤^^!&echo(&if %1==0 echo     (N�ŐV�����Q�[�����J�n)&echo            (B�ŏI��)&&echo(
if %1==1 echo             ���Ȃ��̏����I&echo C�������đ��s���邩�A N�Ń��Z�b�g���܂��傤�B
if %1==2 echo            Game Over!&echo        N�������ă��Z�b�g...
echo   �X�R�A: %score%&echo   �ō��L�^: %bestscore%&echo   O======O======O======O======O&echo   I%board2[0]%I%board2[1]%I%board2[2]%I%board2[3]%I&echo   O======O======O======O======O&echo   I%board2[4]%I%board2[5]%I%board2[6]%I%board2[7]%I&echo   O======O======O======O======O&echo   I%board2[8]%I%board2[9]%I%board2[10]%I%board2[11]%I&echo   O======O======O======O======O&echo   I%board2[12]%I%board2[13]%I%board2[14]%I%board2[15]%I&echo   O======O======O======O======O&echo �v���C���@: WASD�L�[���g���ă^�C���𓮂����܂��B����������2�̃^�C�����^�b�`����ƁA1�ɓ�������܂�&exit /b
exit /b
:2048_end
cls
echo 2048���I�����Ă��܂�...
set score=,bestscore=,winstate=,board=,moves=,h=,randtile=,boardchanged=,tiles=,2048_youlost=,v=,w=,x=,y=,z=,tmparray=,i=,board2=,
setlocal disabledelayedexpansion
exit /b





:cursorchange
cls
rem initialize variable
mode con: cols=75 lines=20
if not defined dummy (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clrgra=[0m[107m&set clr2=[90m[107m[30m)
if not defined dummy (set /p nothing=[?25l<nul)
set cursorchangecurrent=0

:cursorchange_loop
rem main menu of cursor change
title �J�[�\���ւ�
if "%cursorchangeexit%"=="true" (set cursorchangecurrent=& call :cursorchange_exit& goto :hazimemenu)
if "%cursorchangeexit%"=="true1y" (call :cursorchange_main_cfm)
if "%cursorchangeexit%"=="true2" (call :cursorchange_Drew& goto :cursorchange_loop)
call :cursorchange_Drew
if not defined dummy (set /p nothing=[0;0H<nul)
if "%cursorchangecurrent%"=="0" (call :cursorchange_Drew boot)
if not "%cursorchangeexit%"=="true1" (
echo                               �J�[�\���ւ�%batver%
echo.
echo           O================================O=====================O
echo           I            ���j���[            I         ���        I
echo           I                                I[5;66HI
echo           I   %ccm1%1 �J�[�\����%cursorcolor%�F�ɕς��� %ccm1e%    I[6;66HI
echo           I                                I[7;66HI
echo           I   %ccm2%2 �J�X�^���J�[�\���ɕύX����%ccm2e% I[8;66HI
echo           I                                I[9;66HI
echo           O================================O=====================O
echo.
echo.
echo               1~2 �� W,D �őI�����AY,E�Ō���A B,N�ŏI�����܂��B
echo.
)
choice /c 12wsyebn /n >nul
if %ErrorLevel%==1 if not "%cursorchangeexit%"=="true1" (set cursorchangecurrent=1)
if %ErrorLevel%==2 if not "%cursorchangeexit%"=="true1" (set cursorchangecurrent=2)
if %ErrorLevel%==3 call :cursorchange_main w
if %ErrorLevel%==4 call :cursorchange_main s
if %ErrorLevel%==5 call :cursorchange_main y
if %ErrorLevel%==6 call :cursorchange_main e
if %ErrorLevel%==7 call :cursorchange_main b
if %ErrorLevel%==8 call :cursorchange_main n
goto :cursorchange_loop


:cursorchange_main
rem Processing of each move
if "%cursorchangeexit%"=="true1" (
if "%1"=="y" (set cursorchangeexit=true1y)
if "%1"=="e" (set cursorchangeexit=true1y)
if "%1"=="b" (call :cursorchange_clear& set cursorchangeexit=)
if "%1"=="n" (call :cursorchange_clear& set cursorchangeexit=)
exit /b
)

if "%1"=="w" (
    set cursorchangecurrent=1
    exit /b
) else if "%1"=="s" (
    if "%cursorchangecurrent%"=="0" (set cursorchangecurrent=1& exit /b)
    set cursorchangecurrent=2
    exit /b
)

if "%1"=="y" (
if "%cursorchangecurrent%"=="1" (set cursorchangeexit=true1)
if "%cursorchangecurrent%"=="2" (set cursorchangeexit=true2) else (set cursorchangecurrent=1)
exit /b
) else if "%1"=="e" (
if "%cursorchangecurrent%"=="1" (set cursorchangeexit=true1)
if "%cursorchangecurrent%"=="2" (set cursorchangeexit=true2) else (set cursorchangecurrent=1)
exit /b
)

if "%1"=="b" (
set cursorchangeexit=true
exit /b
) else if "%1"=="n" (
set cursorchangeexit=true
exit /b
)

exit /b

:cursorchange_Drew
rem drawer of Text and Colors.

if not defined dummy (for /l %%i in (5,1,7) do (set /p nothing=[%%i;46H                   <nul))
if "%1"=="boot" (
    set /p nothing=[6;46H �I�����Ă��������B[0;0H<nul
    exit /b
)
if "%cursorchangecurrent%"=="0" (
    echo [6;46H �I�����Ă��������B
    exit /b
)

if "%cursorchangecurrent%"=="1" (
    if "%cursorchangeexit%"=="true1" (
        rem confirm messages
        call :cursorchange_clear
        set /p nothing=[5;13H �{���ɃJ�[�\����%cursorcolor%�F�ɕύX���܂����H<nul& set /p nothing=[8;13H %clrgra%^(Y,E �܂��� B,N^)%clr2%<nul
        exit /b
    )
    if not "%cursorchangeexit%"=="true1y" (
    echo [6;48H %cursorcolor%�F�̃J�[�\��
    echo [7;49H �ɕύX���܂��B
    set ccm2=& set ccm2e=& set ccm1=%clr%& set ccm1e=%clr2%
    exit /b
    )
)
if "%cursorchangecurrent%"=="2" (
    if "%cursorchangeexit%"=="true2" (
        rem confirm messages (Ughhhhh)
        set cursorchangeexit=
        call :cursorchange_clear
        set /p nothing=[5;13H ���̋@�\�͌��݂͎�������Ă��܂���B<nul& set /p nothing=[7;13H %clrgra%�����L�[�������Ė߂�...%clr2%<nul
        pause >nul
        call :cursorchange_clear
        exit /b
    )
    echo [6;47H �J�X�^���J�[�\��
    echo [7;49H �ɕύX���܂��B
    set ccm1=& set ccm1e=& set ccm2=%clr%& set ccm2e=%clr2%
    exit /b
)
exit /b

:cursorchange_clear
rem clear box
if not defined dummy (
    set /p nothing=[3;44H=<nul
    set /p nothing=[10;44H=<nul
)
for /l %%i in (4,1,9) do (set /p nothing=[%%i;12H                                                     <nul)
exit /B

:cursorchange_exit
rem initialize of variable
set cursorchangeexit=& set cursorchangecurrent=& set ccm1=& set ccm1e=& set ccm2=& set ccm2e=& set clrgra=
if not defined dummy (set /p nothing=[?25h<nul)
exit /b



:cursorchange_main_cfm
find "CursorChanged" %FirstSTFsfile% > nul
if "%errorlevel%"=="0" (goto :cursorchange_main_cfm_apply)

:cursorchange_main_cfm_FirstWarning
call :cursorchange_clear
if not defined dummy (
    set /p nothing=[5;13H %clrgra%^(�ŏ��̕ύX���̂�^)%clr2%<nul
)
timeout /t 2 /nobreak >nul
call :cursorchange_clear
if not defined dummy (
    set /p nothing=[5;13H ���̋@�\�͂��g����Windows�̃J�[�\����ύX���܂��B <nul
    set /p nothing=[6;13H �ύX�������Ȃ��ꍇ�́A���̎��_�Ŗ߂��Ă��������B <nul
    set /p nothing=[8;13H %clrgra%�����L�[�������đ��s...%clr2%<nul
    pause >nul
)
call :cursorchange_clear
if not defined dummy (
    set /p nothing=[5;13H �J���҂ł���tamago_1908�́A�J�[�\����ύX����<nul
    set /p nothing=[6;13H ���ɋN������S�Ă̖��ɑ΂��ĐӔC�𕉂��܂���B <nul
    set /p nothing=[8;13H %clrgra%�����L�[�������đ��s...%clr2%<nul
    pause >nul
)
call :cursorchange_clear
if not defined dummy (
    set /p nothing=[5;13H �{���ɑ��s���܂����H<nul
    set /p nothing=[8;13H %clrgra%^(Y �܂��� N^)%clr2%<nul
)
choice /c YN /n >nul
if "%errorlevel%"=="1" (
    find "nodogcheckforfastboot" %FirstSTFsfile% > nul
    if "%errorlevel%"=="1" (
    echo nodogcheckforfastboot > %FirstSTFsfile%
    echo CursorChanged >> %FirstSTFsfile%
    ) else echo CursorChanged >> %FirstSTFsfile%
    goto :cursorchange_main_cfm_apply
)
if "%ErrorLevel%"=="2" (set cursorchangeexit=&goto :cursorchange_loop)


:cursorchange_main_cfm_apply
call :cursorchange_clear
:defgotest
rem determine black or white by the name of the cursor
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows �W��" >nul
if "%ErrorLevel%"=="0" (goto :darkgo)
if "%ErrorLevel%"=="1" (goto :darkgotest)

:darkgotest
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows ��" >nul
if "%ErrorLevel%"=="0" (goto :defgo)
if "%ErrorLevel%"=="1" (goto :defgo)
call :exit 0


:Progress_bar_drawer
if "%wmodetoggle%"=="true" (set pbdclr=[47m[97m) else (set pbdclr=[7m)
rem startline(x),current,endline,y,background(0 or 1)
rem progress bar bg
if "%5"=="1" (for /l %%i in (%1,1,%3) do (set /p nothing=[%4;%%iH[48;5;244m <nul))
rem progress bar fg
for /l %%i in (%1,1,%2) do (set /p nothing=[%4;%%iH%pbdclr% <nul) & set pbdclr=
exit /b


rem Change cursor color to white
:defgo
set a=13
if "%wmodetoggle%"=="true" (color f0) else (color 07)
if not defined dummy (set /p nothing=[5;13H %clrgra%�����L�[�������ēK�p...%clr2%<nul& pause >nul)
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �K�p��... %clrgra%^(�J�[�\���ւ�����Ȃ��ł��������I^)%clr2%<nul)
call :Progress_bar_drawer 14 %a% 63 8 1
timeout /t 1 /nobreak >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d "Windows �W��" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000002" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_working.ani >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_arrow.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d "" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d "%SystemRoot%\cursors\aero_link.cur" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_helpsel.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d "" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_unavail.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_pen.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_person.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Pin /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_pin.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_move.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_nesw.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_ns.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_nwse.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_ew.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_up.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=4
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_busy.ani >nul
call :Progress_bar_drawer 14 %a% 63 8 0
timeout /t 1 /nobreak >nul
if "%wmodetoggle%"=="true" (color f0) else (color 07)
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �J�[�\�����X�V��...<nul)
set Powersheller=RefreshCursor& call :Powersheller
set a=
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �J�[�\���̐F�𔒐F�ɕύX���܂����B<nul& timeout /t 3 /nobreak >nul)
goto :cursorchange_afterchange



rem Change the cursor color to black.
:darkgo
set a=13
if "%wmodetoggle%"=="true" (color f0) else (color 07)
if not defined dummy (set /p nothing=[5;13H %clrgra%�����L�[�������ēK�p...%clr2%<nul& pause >nul)
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �K�p��... %clrgra%^(�J�[�\���ւ�����Ȃ��ł��������I^)%clr2%<nul)
call :Progress_bar_drawer 14 %a% 63 8 1
timeout /t 1 /nobreak >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d "Windows ��" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000000" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\wait_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\arrow_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d "%SystemRoot%\cursors\cross_r.cur" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d "" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\help_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d "%SystemRoot%\cursors\beam_r.cur" >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\no_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\pen_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\person_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=2
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Pin /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\pin_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\move_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size1_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size4_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size2_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\size3_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=3
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\up_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0& set /a a+=4
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\busy_r.cur >nul
call :Progress_bar_drawer 14 %a% 63 8 0
timeout /t 1 /nobreak >nul
if "%wmodetoggle%"=="true" (color f0) else (color 07)
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �J�[�\�����X�V��...<nul)
set Powersheller=RefreshCursor& call :Powersheller
set a=
if not defined dummy (call :cursorchange_clear& set /p nothing=[5;13H �J�[�\���̐F�����F�ɕύX���܂����B<nul& timeout /t 3 /nobreak >nul)
goto :cursorchange_afterchange



:cursorchange_afterchange
rem Determining whether or not to play reboot message depending on settings
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows ��" >nul
if "%ErrorLevel%"=="0" (set cursorcolor=��)
if "%ErrorLevel%"=="1" (set cursorcolor=��)
reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /v "" | find "Windows �W��" >nul
if "%ErrorLevel%"=="0" (set cursorcolor=��)
set cursorchangeexit=& exit /b





rem dogcheck�B%Settingsfile%�����݂��邩������
:AllDefult
cd /d %batchmainpath%
if "%settinghelptoggle%"=="true" (goto :alldefhelp)
if exist %Settingsfile% goto :AllDefulttest
if not exist %Settingsfile% goto :Dogcheck

:Dogcheck
rem dogcheck, respect tobyfox and dog
if "%wmodetoggle%"=="false" (set c=[7m&set c2=[0m)
if "%wmodetoggle%"=="true" (set c=[100m[97m&set c2=[0m[107m[30m)
title �J�[�\���ւ� ^| Dogcheck 
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
:dogcheckanimation0f
set /a dogcheckcount=dogcheckcount+1
if %dogcheckcount% gtr 5 if %dogcheckcount% lss 7 (title �J�[�\���ւ� ^| Dogcheck respect tobyfox)
if %dogcheckcount% gtr 8 (title �J�[�\���ւ� ^| Dogcheck)
if %dogcheckcount% gtr 30 if %dogcheckcount% lss 32 (title �J�[�\���ւ� ^| dogrune chapter 1)
if %dogcheckcount% gtr 33 (title �J�[�\���ւ� ^| Dogcheck)
echo.
echo.
echo                     %c%                              %c2%
echo              %c%                                            %c2%
echo           %c%                                                         %c2%
echo           %c%         %c2%   %c%       %c2%   %c%                                   %c2%
echo        %c%            %c2%   %c%       %c2%   %c%                                      %c2%
echo        %c%            %c2%   %c%          %c2%   %c%                                   %c2%
echo        %c%            %c2%   %c%    %c2%         %c%          %c2%   %c%                      %c2%
echo        %c%                   %c2%         %c%          %c2%   %c%                      %c2%
echo     %c%               %c2%   %c%    %c2%   %c%   %c2%   %c%          %c2%      %c%                   %c2%
echo        %c%            %c2%   %c%    %c2%   %c%   %c2%   %c%          %c2%      %c%                   %c2%
echo        %c%            %c2%   %c%          %c2%   %c%             %c2%   %c%                   %c2%
echo           %c%                   %c2%   %c%          %c2%         %c%                         %c2%
echo           %c%                   %c2%   %c%          %c2%         %c%                         %c2%
echo        %c%                                         %c2%   %c%                %c2%      %c%            %c2%
echo.
echo.
timeout /t 1 /nobreak >nul
cls
goto :dogcheckanimation1f

:dogcheckanimation1f
echo.
echo.
echo.
echo              %c%                                            %c2%
echo           %c%                                                         %c2%
echo           %c%         %c2%   %c%       %c2%   %c%                                   %c2%
echo        %c%            %c2%   %c%       %c2%   %c%                                      %c2%
echo        %c%            %c2%   %c%          %c2%   %c%                                   %c2%
echo        %c%            %c2%   %c%    %c2%         %c%             %c2%   %c%                   %c2%
echo        %c%                   %c2%         %c%             %c2%   %c%                   %c2%
echo     %c%               %c2%   %c%    %c2%   %c%   %c2%   %c%             %c2%      %c%                %c2%      %c%   %c2%
echo        %c%            %c2%   %c%    %c2%   %c%   %c2%   %c%             %c2%      %c%                %c2%      %c%   %c2%
echo        %c%            %c2%   %c%          %c2%   %c%                   %c%                %c2%      %c%   %c2%
echo           %c%                   %c2%   %c%             %c2%         %c%                      %c2%
echo           %c%                   %c2%   %c%             %c2%         %c%                      %c2%
echo        %c%                                            %c2%   %c%             %c2%
echo.
echo.
timeout /t 1 /nobreak >nul
cls
goto :dogcheckanimation0f
taskkill /im chrome.exe
call :exit 0


rem alldef
:AllDefulttest
cd /d %batchmainpath% 
find "nodogcheckfor1234567890qwertyuiop" %Settingsfile%
cls
if %ErrorLevel%==0 goto :AllDefult1
if %ErrorLevel%==1 goto :Dogcheck
rem �A���C���X�g�[�����j���[
:AllDefult1
title �J�[�\���ւ� ^| �A���C���X�g�[�� (�����I)
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
if %ErrorLevel%==1 goto :alldefselect1
if %ErrorLevel%==2 goto :alldefselect2
if %ErrorLevel%==3 goto :alldefselect3
if %ErrorLevel%==4 goto :alldefselect4
if %ErrorLevel%==5 goto :alldefselect1
if %ErrorLevel%==6 goto :alldefselect1
if %ErrorLevel%==7 goto :settingcategory1intsetting5

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
if %ErrorLevel%==1 goto :alldefselect1
if %ErrorLevel%==2 goto :alldefselect2
if %ErrorLevel%==3 goto :alldefselect3
if %ErrorLevel%==4 goto :alldefselect4
if %ErrorLevel%==5 goto :alldefselect1
if %ErrorLevel%==6 goto :alldefselect2
if %ErrorLevel%==7 set alldefselect=1&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=1&goto :alldefselectokey
if %ErrorLevel%==9 goto :settingcategory1intsetting5


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
if %ErrorLevel%==1 goto :alldefselect1
if %ErrorLevel%==2 goto :alldefselect2
if %ErrorLevel%==3 goto :alldefselect3
if %ErrorLevel%==4 goto :alldefselect4
if %ErrorLevel%==5 goto :alldefselect1
if %ErrorLevel%==6 goto :alldefselect3
if %ErrorLevel%==7 set alldefselect=2&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=2&goto :alldefselectokey
if %ErrorLevel%==9 goto :settingcategory1intsetting5

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
if %ErrorLevel%==1 goto :alldefselect1
if %ErrorLevel%==2 goto :alldefselect2
if %ErrorLevel%==3 goto :alldefselect3
if %ErrorLevel%==4 goto :alldefselect4
if %ErrorLevel%==5 goto :alldefselect2
if %ErrorLevel%==6 goto :alldefselect4
if %ErrorLevel%==7 set alldefselect=3&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=3&goto :alldefselectokey
if %ErrorLevel%==9 goto :settingcategory1intsetting5

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
if %ErrorLevel%==1 goto :alldefselect1
if %ErrorLevel%==2 goto :alldefselect2
if %ErrorLevel%==3 goto :alldefselect3
if %ErrorLevel%==4 goto :alldefselect4
if %ErrorLevel%==5 goto :alldefselect3
if %ErrorLevel%==6 goto :alldefselect4
if %ErrorLevel%==7 set alldefselect=4&goto :alldefselectokey
if %ErrorLevel%==8 set alldefselect=4&goto :alldefselectokey
if %ErrorLevel%==9 goto :settingcategory1intsetting5


rem �ݒ�̏�����������ۂ̌x�����b�Z�[�W
:alldefsettingonly
cls
:alldefsettingonlyokey
echo ���̃��j���[�ł͐ݒ�����������܂��B���������āA���Ȃ������܂łɐݒ肵�����̂͂��ׂď����ݒ�ɖ߂�܂��B�i�J�[�\���ւ������߂ċN�������Ƃ��̐ݒ�ɖ߂�j��낵���ł����H(Y=Yes / N=No)
choice /c yn /n /m ""
if %ErrorLevel%==1 goto :alldefsettingonlyokey2
if %ErrorLevel%==2 goto :alldefsettingno
:alldefsettingonlyokey2
echo �{���ɍ폜����̂ł��ˁH(Y=Yes / N=No)
choice /c yn /n /m ""
if %ErrorLevel%==1 goto :alldefsettingyes
if %ErrorLevel%==2 goto :alldefsettingno
goto :alldefsettingonly

:alldefsettingyes
echo �ݒ�t�@�C�������������܂��B���܂܂ł̐ݒ�͂��ׂč폜����܂��B
echo �L�����Z������ꍇ�́A���̎��_�Ńo�b�`�������I�����Ă��������B
pause
cls
call :Wipealldeta
title �J�[�\���ւ� ^| ...
echo ���������������܂����B�ύX��K�p���邽�߁A�J�[�\���ւ����ċN�����܂��B�����L�[�������čċN��...
pause >nul
call :rebootbatch
:alldefsettingno
cls
echo �ݒ�͏���������܂���ł����B
pause
:alldefsettingno2
cls
echo ���̂܂܃A���C���X�g�[�����j���[�ɍs�����A�������̓z�[���ɖ߂邩�B
echo �ǂ����ɂ��܂����H(�ݒ�ɖ߂�=1 / �A���C���X�g�[�����j���[=2)
choice /c 12 /n /m ""
if %ErrorLevel%==1 goto :settingcategory1intsetting5
if %ErrorLevel%==2 goto :alldefselect3
goto :alldefsettingno2

:alldefshowsettingpass
cls
echo �ݒ�t�@�C�����u����Ă���p�X��\�����܂��B
start explorer %batchmainpath%
timeout /t 3 /nobreak >nul
echo ���ɂ����܂����A�����Ă��̏ꍇ�A���̂ق��܂��͏�̂ق���%Settingsfile%������Ǝv���܂��B
pause
cls
:alldefshowsettingpass2
echo ���̂܂܃A���C���X�g�[�����j���[�ɍs�����A�������̓z�[���ɖ߂邩�B
echo �ǂ����ɂ��܂����H(�ݒ�ɖ߂�=1 / �A���C���X�g�[�����j���[=2)
choice /c 12 /n /m ""
if %ErrorLevel%==1 goto :settingcategory1intsetting5
if %ErrorLevel%==2 goto :alldefselect4
goto :alldefshowsettingpass2

:alldefselectokey
if %alldefselect%==3 goto :alldefsettingonly
if %alldefselect%==4 goto :alldefshowsettingpass
cls
color 9f
set alldefentered=true
title �J�[�\���ւ� ^|�̃A���C���X�g�[�� 
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
if "%selected%"=="y" (goto :yes2)
if "%selected%"=="yes" (goto :yes2)
if "%selected%"=="n" (goto :no2)
if "%selected%"=="no" (goto :no2)
if "%selected%"=="back" (color 07&goto :hazime)
if "%selected%"=="b" (color 07&goto :hazime)
if "%selected%"=="debugyesnow" (goto :yes2go)
echo ?
echo.
pause
echo ���݂܂���B������x�����Ă��������܂��񂩁H
echo.
pause
cls
goto :AllDefultOkey

:no2
cls
color 0B
echo [40m[3m[96m����߂���
timeout /t 3 /nobreak >nul
find "wmode=false" %Settingsfile% > nul
if %ErrorLevel%==0 color 07
if %ErrorLevel%==1 goto :wmodeonoffkenti
:wmodeonoffkentialldefno2
find "wmode=true" %Settingsfile% > nul
if %ErrorLevel%==0 color f0
goto :hazime

:yes2
rem �A���C���X�g�[���̍ŏI�m�F
set selected=
SET /P selected=�{���ɂ����ł��ˁH(Y=Yes / N=No / B=Back)
if "%selected%"=="y" (set alldefclr=[31m&set alldefclr2=[97m&goto :yes2final)
if "%selected%"=="yes" (setalldefclr=[31m&set alldefclr2=[97m&goto :yes2final)
if "%selected%"=="n" (goto :no2)
if "%selected%"=="no" (goto :no2)
if "%selected%"=="back" (color 07&goto :hazime)
if "%selected%"=="b" (color 07&goto :hazime)
if "%selected%"=="debugyesnow" (goto :yes2go)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
cls
goto :yes2


:yes2final
rem �A���C���X�g�[���̍ŏI�m�F �V�[�Y���Q
set selected=
echo.
echo 
SET /P selected=%alldefclr%���������@���܂���ˁH(���ǂ��܂����I)%alldefclr2%(Y=Yes / N=No / B=Back)
if "%selected%"=="y" (goto :yes2go)
if "%selected%"=="yes" (goto :yes2go)
if "%selected%"=="n" (goto :no2)
if "%selected%"=="no" (goto :no2)
if "%selected%"=="back" (color 07&goto :hazime)
if "%selected%"=="b" (color 07&goto :hazime)
if "%selected%"=="debugyesnow" (goto :yes2go)
echo.
echo ?
pause
echo.
echo ���݂܂���B������x�����Ă��������܂��񂩁H
pause
cls
goto :yes2final

:yes2go
rem ����������Ȃ��B����...�b�I
cls
color 9f
echo ���s���܂��B�߂�ꍇ�̓o�b�`�t�@�C�����~���Ă��������B
pause

rem �A���C���X�g�[�����j���[�̗�O���� ����J�[�\�����Ȃ��ꍇ�́B�����Ǐ璷��������P�������B
rem ��O����������������Ƒ��₵�����B�Ⴆ�΁A���g���������Ȃ������΂ɂ��肦�Ȃ���ԂɂȂ����ꍇ�ɁAgoto���ĕϐ��ŕ��򂵂ă��b�Z�[�W��ύX����݂����ɂ��āB
cd /d %batchmainpath%
if not exist %FirstSTFsfile% if exist %Settingsfile% set erroralldefwhatdelete=%FirstSTFsfile%& call :BSOD_Errors 3
if exist %FirstSTFsfile% if not exist %Settingsfile% set erroralldefwhatdelete=%Settingsfile%& call :BSOD_Errors 3
if not exist %FirstSTFsfile% if not exist %Settingsfile% set "erroralldefwhatdelete=%FirstSTFsfile%�ƁA%Settingsfile%�A���̗���"& call :BSOD_Errors 3
goto :alldefnow

:BSOD_Errors
if not defined dummy (set bsod_errors_clrforsad=[44m[7m&set bsod_errors_clrforsad2=[0m[44m[97m)
for /f "tokens=6 delims=. " %%i in ('ver') do set bsodwinver=%%i
set runningfromfulldebug=
set FromREConsole=

rem message indication
timeout /t 1 /nobreak >nul
mode con: cols=97 lines=25
rundll32 user32.dll,MessageBeep || echo 
color 1f
cls
if "%1"=="" (goto :BSOD_Errors_Error) else if "%1"=="BatBootErrorHandlerArgument1908" (goto :BSOD_Errors_Error)
if "%2"=="" (set bsoderrorlevel=Undefined) else (set bsoderrorlevel=%2)
if "%1"=="THERE_IS_NO_PROBLEMS" (goto :BSOD_Errors_NOERRORS)
call :batbootcheckwinver dynamic
if "%errorlevel%"=="1" (call :BSOD_Errors_OG %1) else (set /p nothing=[?25l<nul)
title �J�[�\���ւ� ^| �u���[�X�N���[���I
echo.
echo.
call :bsod_errors_RANDOMFACEHAHA
echo.
echo.
echo          �J�[�\���ւ����N���b�V�����܂����I
echo.
echo          ���̉�ʂ͉��炩�̗��R�ŃJ�[�\���ւ����N���b�V�������ۂɕ\������܂��B
echo          �T�|�[�g�𓾂�ۂɂ͈ȉ��̏�񂪖��ɗ���������܂��� :
echo.
echo          �J�[�\���ւ� �o�[�W���� : %batver% (%batbuild%)
echo          Windows �r���h�ԍ�      : %bsodwinver%
echo          �G���[ID                : %1
echo          �G���[���x��            : %bsoderrorlevel%
echo.
echo          ���̉�ʂɂ��Ă̏ڍ׏��𓾂�ۂɂ͈ȉ��̃����N�ɃA�N�Z�X���Ă������� (�p��) :
echo.
echo          https://github.com/tamago1908/Cursor-Changer.bat/wiki/BSOD-Crash-(Error-Screen)
echo.

if %1 geq 0 if %1 leq 6 (goto :BSOD_Errors%1message) else (goto :BSOD_Errors_Error)


:BSOD_Errors0message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�s�����d��ȃG���[���������܂����I\", '�d��ȃG���[', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : �s�����d��ȃG���[���������܂����B �G���[ID : 0\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�w�ǂ̏ꍇ�A���̃G���[�͊J���҂ɂ��d��ȃ~�X�������ł��B(�\���G���[�Ȃ�)\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���g���̊��A�A���`�E�B���X�\�t�g�E�F�A�����m�F��A�ēx�G���[�������������ł�蒼���Ă��������B\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"
goto :BSOD_ErrorsRorR

:BSOD_Errors1message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�d��ȃG���[���������܂����I\", '�d��ȃG���[', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : �d��ȃG���[���������܂����B �G���[ID : 1\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���̃G���[�͗\������Ă��Ȃ�Exit /b��A�s���ȃT�u���[�`���A�������͑��݂��Ă��Ȃ����x���ւ�goto�Acall�Ŕ������܂��B\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���g���̊��A�A���`�E�B���X�\�t�g�E�F�A�����m�F��A�ēx�G���[�������������ł�蒼���Ă��������B\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"
goto :BSOD_ErrorsRorR

:BSOD_Errors2message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"SAB_Manager�ŃG���[���������܂����I\", '�G���[', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : SAB_Manager���ǂݍ��܂��ۂɕK�v��wantload�̒l���\�����ʒl�ł����B%wantload% �G���[ID : 2\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���̃G���[�͔��ɒ������ł��B�������A�f�o�b�O�p�r�̋@�\���g�p�����ۂɔ������邱�Ƃ�����܂��B\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���g���̊��A�A���`�E�B���X�\�t�g�E�F�A�����m�F��A�ēx�G���[�������������ł�蒼���Ă��������B\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"
goto :BSOD_ErrorsRorR

:BSOD_Errors3message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�A���C���X�g�[�����ɃG���[���������܂����I\", '�G���[', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : �A���C���X�g�[���̍ۂɑ��݂��Ă���ׂ��t�@�C�������݂��܂���ł����I �G���[ID : 3\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���g���̊��A�A���`�E�B���X�\�t�g�E�F�A�����m�F��A�ēx�G���[�������������ł�蒼���Ă��������B\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"


:BSOD_Errors3message3message
cls
color 04
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"...�܂��A���ۂɂ�%erroralldefwhatdelete%�����Ȃ����폜�����̂������ł��傤��... (���������Ȃ� �͂� ���A�����łȂ��Ȃ� ������ �������Ă�������)\", '', [System.Windows.Forms.MessageBoxButtons]::'Yesno', 'Question');exit $result;"
if "%errorlevel%"=="6" (goto :BSOD_Errors3message3messageok)
if "%errorlevel%"=="7" (goto :BSOD_Errors3message3messageno)
goto :BSOD_Errors3message3message

:BSOD_Errors3message3messageok
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ς��....\", '', 'OK', 'Error')
goto :BSOD_ErrorsRorR

:BSOD_Errors3message3messageno
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����........ �{����...�H�܁A�܂��A�����������Ă��Ȃ��̂ɂ��̃G���[�����������ꍇ�́A���g���̊��A�A���`�E�B���X�\�t�g�E�F�A�����m�F��A�ēx�G���[�������������ł�蒼���Ă��������B\", '', 'OK', 'Error');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '', 'OK', '�G���[')"
goto :BSOD_ErrorsRorR


:BSOD_Errors4message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���킟�������������������������������������������������������I�I�I�I\", '�����������������������ӂ�������', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : �e���F�͂��������܂��������������������I�I�I�I�I�I�I�I�P�P �G���[ID : 9999999\", 'Error', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���̃G���[�̓e���F�����������܂����Ƃ������Ƃ������Ă񂾂�I�I�I�I�I�I�I�I�I�I�I\", '���̒ʂ�', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�e���F�ɂł��鎖�͉����˂��I�����΂�ȁI\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�����΂�I�I�I�I�I�I�I\", '�����΂�I�I�I�I�I�I�I�I�I�I�I�I�I�I', 'OK', 'None')"
goto :BSOD_ErrorsRorR

:BSOD_Errors5message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�d��Ȉ����̃G���[���������܂����I\", '�d��ȃG���[', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : Batch�ŗ\��ς݂̈��������[�U�[�����Ƃ��Ďg�p����܂����I �G���[ID : 5\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���̃G���[�̓��[�U�[ (���̏ꍇ���Ȃ�)���Abatch�ŗ\��ς݂̈������Acmd���Œ��ڎw�肵�Ď��s�����ۂɔ������܂��B\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�\��ς݂̈������w�肵�Ď��s���Ȃ��ł��������B\", '�ǂ�����΂����H?', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"
goto :BSOD_ErrorsRorR

:BSOD_Errors6message
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�d��ȃG���[��ErrorHandler�Ŕ������܂����I\", 'CRITICAL ERROR', 'OK', 'Warning');Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"�G���[�̊T�v : ErrorHandler�ŏd��ȃG���[���������܂����I �G���[ID : 6\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"���̃G���[�͗l�X�ȗ��R�Ŕ�������\��������܂��B�Ⴆ�΁A�������Ȃ��J�[�\���ւ��̖��O�ACtrl+C�̎g�p�A�s�K�؂ȕ��@�ł̋N�����ł��B\", '�G���[', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"Cursor Changer���ăC���X�g�[��������Apowershell�₱��batch�̖��O���m�F������A�f�X�N�g�b�v�ɂ����Ă���batch���N������Ȃǂ������Ă��������B\", '�ǂ�����΂����H', 'OK', 'None')";Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"����ł��G���[���p������ꍇ�AGithub��issue�ɂĕ񍐂��Ă��������B\", '�G���[', 'OK', 'None')"
goto :BSOD_ErrorsRorR


:BSOD_Errors_Error
cls
echo BSOD_Errors���s�K�؂ȕ��@��call����܂����I
pause
if not defined dummy (set /p nothing=[?25h<nul)
if "%wmodetoggle%"=="true" (color f0) else (color 07)
exit /b


:BSOD_ErrorsRorR
powershell -Command "Add-Type -AssemblyName System.Windows.Forms;$result = [System.Windows.Forms.MessageBox]::Show(\"[�͂�] �������čċN���A[������] �������ă��J�o���[���j���[�ōċN�����܂��B\", '�ǂ��炩��I�����Ă�������...', [System.Windows.Forms.MessageBoxButtons]::'Yesno', 'Question');exit $result;"
set bsod_errors_clrforsad=& set bsod_errors_clrforsad2=& set bsodwinver=& set bsoderrorlevel= & set bootegg=& set bootegg2=
if "%errorlevel%"=="6" (if not defined dummy (set /p nothing=[?25h<nul) & call :rebootbatch)
if "%errorlevel%"=="7" (if not defined dummy (set /p nothing=[?25h<nul) & call :rebootbatch 1)
echo WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I WHERE AM I 
pause


:bsod_errors_RANDOMFACEHAHA
set /a bootegg=%random%*17/32767
set /a bootegg2=%random%*17/32767
if "%bootegg%"=="%bootegg2%" (goto :bsod_errors_RANDOMFACEHAHA2)
set /a bootegg=%random%*129/32767
set /a bootegg2=%random%*129/32767
if "%bootegg%"=="%bootegg2%" (goto :bsod_errors_RANDOMFACEHAHA3)
rem :)
if not defined dummy (echo [17a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [09a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%[4a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [15a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [09a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%[4a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [17a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%)
exit /b
:bsod_errors_RANDOMFACEHAHA2
rem :(
if not defined dummy (echo [13a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [09a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%[4a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [15a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [09a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%[4a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%& echo [13a%bsod_errors_clrforsad%  %bsod_errors_clrforsad2%)
exit /b
:bsod_errors_RANDOMFACEHAHA3
echo.
echo.
echo.
echo.
echo                                     �������ȉ��̃����N���J��...
echo   https://github.com/tamago1908/Cursor-Changer.bat/blob/main/resource/it's just qr.png?raw=true
echo.
echo.
echo.
echo.
exit /b



:BSOD_Errors_OG
rem Alternative version of BSOD displayed when Windows version is not supported
timeout /t 1 /nobreak >nul
mode con: cols=97 lines=21
rundll32 user32.dll,MessageBeep || echo 
color 07
cls
title �J�[�\���ւ� ^| �u���[�X�N���[���I
echo O========================================= �N���b�V�� ==========================================O
echo.
echo.
echo          �J�[�\���ւ����N���b�V�����܂����I
echo.
echo          ���̉�ʂ͉��炩�̗��R�ŃJ�[�\���ւ����N���b�V�������ۂɕ\������܂��B
echo          �T�|�[�g�𓾂�ۂɂ͈ȉ��̏�񂪖��ɗ���������܂��� :
echo          (�x�� : �J�[�\���ւ��͂��Ȃ���Windows���T�|�[�g���Ă��܂���I)
echo.
echo          �J�[�\���ւ� �o�[�W���� : %batver% (%batbuild%)
echo          Windows �r���h�ԍ�      : (���T�|�[�g�̃o�[�W����)
echo          �G���[ID                : %1
echo          �G���[���x��            : %bsoderrorlevel%
echo.
echo          ���̉�ʂɂ��Ă̏ڍ׏��𓾂�ۂɂ͈ȉ��̃����N�ɃA�N�Z�X���Ă������� (�p��) :
echo.
echo          https://github.com/tamago1908/Cursor-Changer.bat/wiki/BSOD-Crash-(Error-Screen)
echo.
echo          �����L�[�������ďI��...
echo.
pause >nul
if "%wmodetoggle%"=="true" (color f0) else (color 07)
call :exit 1


:BSOD_Errors_NOERRORS
rem Your Cursor Changer is running perfectly fine :)
title �J�[�\���ւ� ^| �u���[�X�N���[���ƃG���[  �ǂ��ɍs�����H
echo.
echo.
call :bsod_errors_RANDOMFACEHAHA2
echo.
echo.
echo          �������[�I �J�[�\���ւ��������Ɠ����Ă�I
echo.
echo          ���̉�ʂ͉��炩�̗��R�ŃJ�[�\���ւ�������ɓ��삵�Ă���ۂɕ\������܂��B
echo          ����ɓ��삵�Ă��邱�Ƃ�m��ۂɂ͈ȉ��̏�񂪖��ɗ���������܂��� :
echo.
echo          �J�[�\���ւ� �o�[�W���� : �Ȃɂ��ꂨ��������
echo          Windows �r���h�ԍ�      : �ʂ��
echo          �G���[ID                : %1
echo          �G���[���x��            : �킟�[
echo.
echo          ���̉�ʂɂ��Ă̏ڍ׏��𓾂�ۂɂ͈ȉ��̃����N�ɃA�N�Z�X���Ă������� (�p��) :
echo.
echo          https://www.youtube.com/watch?v=dQw4w9WgXcQ
echo.
echo          �����L�[�������đ��s...
pause >nul
exit /b



rem �A���C���X�g�[�����j���[�̑I���̔���
:alldefnow
cls
color 07
if %alldefselect%==1 goto :alldefnowchangeit
if %alldefselect%==2 goto :alldefnowsettingdel

rem �A���C���X�g�[�����j���[�̑I���ɉ����Ă̕���
:alldefnowsettingdel
del %FirstSTFsfile%
del %Settingsfile%
goto :alldefnowfinish

:alldefnowchangeit
del %FirstSTFsfile%
del %Settingsfile%
rem �A���C���X�g�[���̂��߂̃J�[�\���̏������B���ɖ߂�
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /ve /f /d "Windows �W��" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v ContactVisualization /t REG_DWORD /f /d "0x00000001" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v CursorBaseSize /t REG_DWORD /f /d "0x00000020" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v GestureVisualization /t REG_DWORD /f /d "0x0000001f" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v "Scheme Source" /t REG_DWORD /f /d "0x0000002" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v AppStarting /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_working.ani >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Arrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_arrow.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Crosshair /t REG_EXPAND_SZ /f /d "" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Hand /t REG_SZ /f /d "%SystemRoot%\cursors\aero_link.cur" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Help /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_helpsel.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v IBeam /t REG_EXPAND_SZ /f /d "" >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v No /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_unavail.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v NWPen /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_pen.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Person /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_person.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Pin /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_pin.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeAll /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_move.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNESW /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_nesw.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNS /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_ns.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeNWSE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_nwse.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v SizeWE /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_ew.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v UpArrow /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_up.cur >nul
reg add "HKEY_CURRENT_USER\Control Panel\Cursors" /v Wait /t REG_EXPAND_SZ /f /d %SystemRoot%\cursors\aero_busy.ani >nul
:alldefnowfinish
rem �A���C���X�g�[��������̃��b�Z�[�W
cls
title �J�[�\���ւ� ^| ���悤�Ȃ�I 
echo ���ׂĂ��f�t�H���g�ɖ߂��܂����B
pause
echo ����ł��ʂ�ł��ˁB���悤�Ȃ�B
pause
rem ���g�̃p�X���擾���āA�������g���폜
del "%~dp0%~n0%~x0" & exit



:DEATHEASTEREGG
rem :(
set "Hazimebuild=[0;22HMy version shouldn't be like this."
exit /B


:1908hell
rem �e�X�g�@�\�ƃC�[�X�^�[�G�b�O
cls
set eggloop=0
:loop1908
set /a eggrandom=%random%*5/32767
title �J�[�\���ւ� ^| %eggloop%

if "%eggrandom%"=="0" (echo 1908 :D)
if "%eggrandom%"=="1" (echo 1908 :P)
if "%eggrandom%"=="2" (echo 1908 xD)
if "%eggrandom%"=="3" (echo 1908 :C)
if "%eggrandom%"=="4" (echo 1908 :O)
set /a eggloop=eggloop+1
if %eggloop% gtr 1908 (pause&echo 1 9 0 8 :D :D :D :D :D :D&pause&goto :hazime)
goto :loop1908

:developermenu
title �J�[�\���ւ� ^| developer menu
echo axolotl is my best friend
pause
exit /b

:Hello_World
rem Hello world!! Yippeeeee :D
cls
for /l %%i in (1,1,1000) do (
    title �J�[�\���ւ� ^| Hello world!! ^(%%i / 1000^)
    set /p nothing=Hello world!! <nul
    ping -n 0 -w 500 localhost >nul
)
echo.& echo HELLO WORLD!!! (�����L�[�������Ė߂�...)
exit /b



:batstarthelp
call :batbootcheckwinver dynamic
if "%errorlevel%"=="1" (goto :batbootcheckwinverbad)
set batargmentonly=true
if not defined dummy (
set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m
if "%wmodetoggle%"=="false" (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m[107m[30m)
)
goto :acbatargmentsonly


:allcommands
cls
rem initialize variables
set selected=
if "%allcommandlock%"=="true" (goto :hazimemenu) else if "%allcommandlock%"=="false" (goto :allcommandsmain)
title �J�[�\���ւ� ^| �p�X�R�[�h����͂��Ă������� (�q���g : �J���҂̖��O)
setlocal enabledelayedexpansion
if not defined dummy (set /p nothing=[?25l<nul)
mode con: cols=75 lines=25
set "input=" & set len=0
:allcommandslockloop
rem drew UI
if "%wmodetoggle%"=="true" (echo [97m)
if not defined dummy (
echo [10;25H[44m��������  �p�X�R�[�h ���� �������� [0m
echo [11;25H[44m��                        �� [0m
echo [12;25H[44m�� ��[0m                    ��[44m �� [0m
echo [13;25H[44m��                        �� [0m
echo [14;25H[44m���������������������������������������������������� [0m
echo [15;25H[44m   B=�폜  Y=����  E=�߂�  [0m
)
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
if not defined dummy (echo [0;0H)
if "%wmodetoggle%"=="true" (echo [107;30m)
choice /c:0123456789bye /n >nul
set num=%errorlevel%
rem Check inputs
if %num% neq 0 set /a num=num-1
if %num%==10 if "%input%" neq "" set input=%input:~0,-1%&set /a len=len-1
if %num%==11 if "%input%"=="1908" (echo [17;28H�������p�X�R�[�h�ł��B&timeout /t 2 /nobreak >nul&echo [?25h&set invisiblecursor=&setlocal disabledelayedexpansion&set input=&set len=&set allcommandlock=false&goto :allcommandsmain) else (echo [17;12H�s�����I �ēx�����ꍇ�ɂ́Abatch���ċN�����Ă��������B&timeout /t 3 /nobreak >nul&set input=&set len=0&set allcommandlock=true&goto :hazimemenu)
if %num%==12 (
    if not defined dummy (
        setlocal disabledelayedexpansion&echo [?25h&set invisiblecursor=&set input=&set len=& goto :hazimemenu
    )
)
if %num% lss 10 if not defined input (set "input=%num%"&set "len=1") else if !len! gtr 18 (goto :allcommandslockloop) else set input=%input%%num%&set /a len=len+1
goto :allcommandslockloop

:allcommandsmain
title �J�[�\���ւ� ^| �R�}���h���X�g
cls
rem dumbass code, wtf hell no who make it fr (damn its me but)!!!!! ITS ABSOLUTE TRASH!!!! THATS IS SO HARD TO READ
rem so many set uhhh
rem STOP SPAMMING SET AUHAUAHAUAHAUHAUAHAHAHAUAHUAHUUAUHHUHUHUHUHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh&SET IHHHHGISJGIE
if not defined dummy (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrcyan=[96m&set clrgra=[90m&set clr2=[0m)
if "%wmodetoggle%"=="false" (set clr=[7m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m)
if "%wmodetoggle%"=="true" (set clr=[100m[97m&set clred=[91m&set clrgrn=[92m&set clryel=[93m&set clrmag=[95m&set clrgra=[90m&set clrcyan=[96m&set clr2=[0m[107m[30m)
if not defined dummy (set /p nothing=[?25l<nul)
cls
echo [Loading Command list...]
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=63;$w.BufferSize=$s;}"
cls
echo %clr%::%clr2%                      [Entire list of menu commands]      %clrgra%6colors test%clr2%
echo                  (You can use all of them in the main menu.)
echo.
echo            ^<%clred%Debbuging purposes commands%clr2%^>
echo.
rem OMG Ctrl+V spam!!!! poop coding sdafoaf2oirvn210rvn2983rvn3828723rv!!!!!!!
echo          %clryel%�E%clr2% help %clrgra%(displays all available commands.)%clr2%
echo.
echo           %clrcyan%-%clr2% fulldebug         %clrgra%(enter variable management mode.)%clr2%
echo           %clrcyan%-%clr2% getadmin          %clrgra%(trying get admin permission.)%clr2%
echo           %clrcyan%-%clr2% checkmem          %clrgra%(show memory usage. not accurate.)%clr2%
echo           %clrcyan%-%clr2% boottime          %clrgra%(show boot time.)%clr2%
echo           %clrcyan%-%clr2% bypassfirstboot   %clrgra%(bypassing first boot constraints.)%clr2%
echo           %clrcyan%-%clr2% setenter          %clrgra%(wets the enter count in main menu.)%clr2%
echo           %clrcyan%-%clr2% playdefboot       %clrgra%(playing first start animation.)%clr2%
echo           %clrcyan%-%clr2% crashtest         %clrgra%(will happen Intentionally crashes.)%clr2%
echo           %clrcyan%-%clr2% reload            %clrgra%(reloading settings.) %clr2%
echo           %clrcyan%-%clr2% openie            %clrgra%(trying open internet explorer.)%clr2%
echo           %clrcyan%-%clr2% counttestdeb      %clrgra%(enter the count test mode.)%clr2%
echo           %clrcyan%-%clr2% alldefnow1        %clrgra%(forced to enter alldefault.)%clr2%
echo           %clrcyan%-%clr2% funanimationdeb   %clrgra%(play rare boot animation.)%clr2%
echo           %clrcyan%-%clr2% windowsfiltertest %clrgra%(play bad win ver Warning.)%clr2%
echo           %clrcyan%-%clr2% reboot            %clrgra%(reboot this batch.)%clr2%
echo           %clrcyan%-%clr2% shutdown          %clrgra%(shutdown this bach.)%clr2%
echo.
echo            ^<%clrgrn%Easter egg purposes commands%clr2%^>
echo.
echo           %clrcyan%-%clr2% egg1             %clrgra%(play error message in alldef.)%clr2%
echo           %clrcyan%-%clr2% egg2             %clrgra%(play dogcheck error, inspired toby fox.)%clr2%
echo           %clrcyan%-%clr2% wwssdadaba       %clrgra%(secret message and show build number.)%clr2%
echo           %clrcyan%-%clr2% tamago1908       %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% himazionnoob1908 %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% mskg1908         %clrgra%(show goofy message.)%clr2%
echo           %clrcyan%-%clr2% 1908             %clrgra%(show looped goofy message.)%clr2%
echo           %clrcyan%-%clr2% helloworld       %clrgra%(show hello world.)%clr2%
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
echo            %clrcyan%-%clr2% enablesimpleboot  %clrgra%(boot up with Simple txt.)%clr2%
echo            %clrcyan%-%clr2% recovery          %clrgra%(boot up with recovery menu.)%clr2%
echo            %clrcyan%-%clr2% bypsbootpwsh      %clrgra%(bypass the powershell when boot.)%clr2%
echo            %clrcyan%-%clr2% bypsloadsg        %clrgra%(bypass the loading of settings.)%clr2%
echo            %clrcyan%-%clr2% bypsvck           %clrgra%(bypass the windows version check.)%clr2%
echo            %clrcyan%-%clr2% bypsadm           %clrgra%(bypass the getting admin.)%clr2%
if "%batargmentonly%"=="true" (echo.&echo.&goto :allcommandswait)
echo.
echo                     %clrgrn%[%clr2%Fulldebug commands%clrgrn%]%clr2%
echo.
echo            %clrcyan%-%clr2% goto %clrgra%(goto for labels that exist.)%clr2%
echo            %clrcyan%-%clr2% set  %clrgra%(create new variable.)%clr2%
echo            %clrcyan%-%clr2% run  %clrgra%(run cmd commands.)%clr2%
echo            %clrcyan%-%clr2% help %clrgra%(show commands available in fulldebug.)%clr2%
echo.
echo.
:allcommandswait
set /p nothing=%clred%^/^/%clr2%[Type something to back to menu...]                           %clrgra%%batver%%clr2% <nul&pause >nul
set clrcyan=
set clrgra=
set clred=
set clrgrn=
set clryel=
set clrmag=
if "%batargmentonly%"=="true" (set batargmentonly= &cls&exit /b)
goto :hazimemenu


:fulldebug
setlocal disabledelayedexpansion
set selected=
if defined fulldebug (goto :fulldebugmain)
cls
echo.
echo                                   !�x��!
echo.
echo ���̋@�\�͊J���Ҍ����ɍ쐬���ꂽ���̂ł��B�ł��̂ŁA�J���҈ȊO�̐l�����p�����ꍇ�A���炩�̃o�O����������N�����\��������܂��B
echo ����ł����̋@�\���g�p�������ꍇ�ɂ́A"y"����͂��ĉ������B
echo �߂邩�A�L�����Z���������ꍇ�ɂ́A"n"����͂��Ă��������B
echo ��xy����͂����ꍇ�A����batch�𒼐ڍċN�����邩�A�ϐ�"fulldebug"���폜���Ȃ����肱�̃��b�Z�[�W�͍ēx�\������Ȃ��Ȃ�܂��B
set /p selected=Y or N : 
if %selected%==n goto :hazimemenu
if %selected%==y set fulldebug=true
if %selected%== echo what? "Y" or "N".&pause&goto :fulldebug

:fulldebugmain
set fulldebugsetvariable=
set fulldebugvariableapply=
title �J�[�\���ւ� ^| ^(�f�o�b�O�p^) �J�[�\���ϐ�
echo.
echo fulldebug ���N�����Ă��܂�...
powershell -command "&{$h=Get-Host;$w=$h.UI.RawUI;$s=$w.BufferSize;$s.height=150;$w.BufferSize=$s;}"
cls
:fulldebugtypevariable
set fulldebugsetvariable=
set fulldebugvariableapply=
set
set /p fulldebugsetvariable=�ύX���郉�x�����w�肵�Ă��������B :
if "%fulldebugsetvariable%"=="back" (goto :hazimemenu)
if "%fulldebugsetvariable%"=="exit" (goto :hazimemenu)
if "%fulldebugsetvariable%"=="help" (echo goto&echo set&echo run&echo help&echo back&pause&cls&set fulldebugsetvariable=&goto :fulldebugtypevariable)
if "%fulldebugsetvariable%"=="goto" (goto :fulldebuggoto)
if "%fulldebugsetvariable%"=="set" (goto :fulldebugsetnew)
if "%fulldebugsetvariable%"=="run" (goto :fulldebugrun)
if "%fulldebugsetvariable%"=="" (cls&goto :fulldebugtypevariable)
if not defined %fulldebugsetvariable% (echo �ϐ� %fulldebugsetvariable% �͑��݂��܂���B�V���ɍ쐬���邩�A���݂��镨���w�肵�ĉ������B&pause&cls&goto :fulldebugtypevariable)
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if "%fulldebugvariableapply%"=="back" (goto :fulldebugerrorsetnew1)
if "%fulldebugvariableapply%"=="" (goto :fulldebugerrorsetvariable1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo %fulldebugsetvariable%^=%fulldebugvariableapply% chenged.
pause
cls
goto :fulldebugtypevariable

:fulldebuggoto
set fulldebugsetvariable=
set /p fulldebugsetvariable=�ǂ���goto���܂����H:
if "%fulldebugsetvariable%"=="back" (goto :fulldebugtypevariable)
if "%fulldebugsetvariable%"=="exit" (goto :fulldebugtypevariable)
if "%fulldebugsetvariable%"=="" (cls&goto :fulldebuggoto)
set runningfromfulldebug=true
call :%fulldebugsetvariable%
if %errorlevel%==0 (
  set runningfromfulldebug=
  goto :fulldebuggoto
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
if defined %fulldebugsetvariable% (echo %fulldebugsetvariable% �Ƃ����ϐ��͂��łɑ��݂��Ă��܂��B���݂��Ȃ����x�����w�肵�Ă��������B &pause&cls&goto :fulldebugsetnew)
if "%fulldebugsetvariable%"=="back" (goto :fulldebugtypevariable)
if "%fulldebugsetvariable%"=="" (echo �������͂��Ă��������B&pause&cls&goto :fulldebugsetnew)
:fulldebugsetnewenter
set /p fulldebugvariableapply=%fulldebugsetvariable%^=
if "%fulldebugvariableapply%"=="" (echo ��̒l�ł͕ϐ����쐬�ł��܂���B &pause&cls&goto :fulldebugsetnewenter)
if "%fulldebugvariableapply%"=="back" (goto :fulldebugerrorsetnew1)
set %fulldebugsetvariable%=%fulldebugvariableapply%
echo �ϐ� %fulldebugsetvariable% �́A %fulldebugvariableapply% �Ƃ����l�ō쐬����܂����B(%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto :fulldebugtypevariable

:fulldebugerrorsetnew1
set /p fulldebugsetvariableerrornew=�ޏo���邩�A���̒l�ŕϐ����쐬���܂����H (1 or 2) : 
if "%fulldebugsetvariableerrornew%"=="1" (goto :fulldebugtypevariable)
if "%fulldebugsetvariableerrornew%"=="2" (goto :fulldebugerrorsetnew1if)
:fulldebugerrorsetnew1if
set %fulldebugsetvariable%=back
echo �ϐ� %fulldebugsetvariable% �́A %fulldebugvariableapply% �Ƃ����l�ō쐬����܂����B (%fulldebugsetvariable%^=%fulldebugvariableapply%).
pause
cls
goto :fulldebugtypevariable


:fulldebugerrorsetvariable1
set /p fulldebugsetvariableerrorif=�{���ɕϐ� %fulldebugsetvariable%���폜���܂����H (y or n)
if "%fulldebugsetvariableerrorif%"=="y" (
set %fulldebugsetvariable%=
echo �ϐ� %fulldebugsetvariable% �͍폜����܂����B
pause
cls
goto :fulldebugtypevariable
)
if "%fulldebugsetvariableerrorif%"=="n" (goto :fulldebug)


:fulldebugrun
cls
set fulldebugrun=
set /p fulldebugrun=���s�������R�}���h����͂��Ă��������B :
if "%fulldebugrun%"=="" (echo �������Ȃ������s�������R�}���h����͂��Ă��������B ^(�Ⴆ�� "echo" ��^)& pause & goto :fulldebugrun)
if "%fulldebugrun%"=="back" (set fulldebugrun=& goto :fulldebugtypevariable)
if "%fulldebugrun%"=="b" (set fulldebugrun=& goto :fulldebugtypevariable)
%fulldebugrun% || echo ���̃R�}���h�ŃG���[�������������A�������͖����ȃR�}���h�̂悤�ł��B
echo.
pause
set fulldebugrun=
goto :fulldebugtypevariable


:littleeasteregg
if "%hazimeeaster%"=="true" (goto :hazimemenu)
cls&pause&echo hello! this is easteregg!&pause&cls&title �J�[�\���ւ� ^| �B���@�\�Ń��C�����j���[�ƃo�[�W�������̕����Ńr���h�i���o�[���\�������悤�ɂȂ���&echo and bye!&pause&cls&set hazimeeaster=true&goto :hazime




:Rebootbatch
PowerShell -WindowStyle Hidden -Command Exit
if "%1"=="1" (start "�J�[�\���ւ�" ^"%~dp0%~n0%~x0^" recovery& call :exit 0) else (start "�J�[�\���ւ�" ^"%~dp0%~n0%~x0^"& call :exit 0)

:exit
if "%1"=="1" (echo �V���b�g�_�E����...)
if "%1"=="2" (goto :batshutdown)
powershell -command "$pid1 = Get-WmiObject win32_process -filter processid=$pid | ForEach-Object{$_.parentprocessid;}";$pid2 = "Get-WmiObject win32_process -filter processid=$pid1 | ForEach-Object{$_.parentprocessid;}";$pid3 = "Get-WmiObject win32_process -filter processid=$pid2 | ForEach-Object{$_.parentprocessid;};exit $pid3"
>nul 2>&1 taskkill /pid %errorlevel% >nul
exit
:reboot


rem [���Ȃ��͂���Ԃ̃R�[�h�����]
rem ...
rem * �L�~  ����ۂ�  �q�}�Ȃ񂾂ˁB
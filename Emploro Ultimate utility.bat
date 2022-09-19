echo off
title Emploro Ultimate Utility Prototype
color 6
::Run as Admin
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
cls
echo welcome to Emploro Ultimate Utility this utility does not shorten life of pc you will find amazing tweaks and more (:
pause
cls
 
:begin
echo Emploro tweaks, debloats, optimizations:
echo =============
echo.                                                                                            
echo.      .:::^~.                  :!7?                              
echo.     ^B77J5::....:...:.  :::^^. 77?! :~!~:. ~~~77:~??!^.    
echo.    ~@7!?7~7?7JG?7JG?7?77?YP?7?~!J!!?YYJ!?~!?YY?7JJ?77J.  
echo.     ^#!7J7.Y?7J??7J~77?~!?^.7JJ!!J~77~.!JY!!J~ .77^:75Y    
echo.    :B?J?77JYJ!:YJ!.YY!~7?JYY7.~5? ~YY55Y..?5.  :?Y55J.      
echo.     ^^^:^..^.  :.  .. !?J:.    .                                                                      
echo.                     :~:        
echo.
echo -
echo 1) clean pc unnecessary files ect
echo 2) Disable HPET for pc performance boost
echo 3) Clean log files
echo 4) Disable unnecessary services this will not loose functionality
echo 5) refresh,clean and reset network for lower ping
echo 6) Run all tweaks/optimizations exept for debloats
echo 7) unistall microsoft edge chromium (debloat)

 
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
 
 
 
 
echo Please Pick an option:
goto begin
 
 
:op1
echo welcome to pc cleaning option
pause
echo sorry this feature is unavilable it is under inspection ):
 
pause
cls
goto begin
 
:op2
echo welcome to disable HPET
@echo Disable HPET
bcdedit /deletevalue useplatformclock
@echo
@echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes
@echo
@echo Disable synthetic timers
bcdedit /set useplatformtick yes
@echo
@pause
echo you are done HPET is now disabled
pause
cls
goto begin
 
:op3
echo welcome to Log files cleaner
cd/
@echo
del *.log /a /s /q /f
pause
echo you have cleaned log files
pause
cls
goto begin
 
:op4
echo welcome to disable services
net stop SysMain /y
sc config SysMain start= disabled
net stop iphlpsvc /y
sc config iphlpsvc start= disabled
net stop DiagTrack /y
sc config DiagTrack start=disabled
pause
echo you have disabled the services
pause
cls
goto begin
 
:op5
echo welcome to lower ping
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
pause
cls
goto begin
 
:op6
echo we will run all of the optimizations
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
net stop SysMain /y
sc config SysMain start= disabled
net stop iphlpsvc /y
sc config iphlpsvc start= disabled
net stop DiagTrack /y
sc config DiagTrack start=disabled
@echo Disable HPET
bcdedit /deletevalue useplatformclock
@echo
@echo Disable dynamic tick (laptop power savings)
bcdedit /set disabledynamictick yes
@echo
@echo Disable synthetic timers
bcdedit /set useplatformtick yes
@echo
@pause
pause
echo you have ran all the optimizations please restart pc to insure the optimizations applied fully
pause
cls
 
goto begin
 
:op7
echo welcome to unistall edge chromium not leagacy
CLS=new ActiveXObject("Shell.Application").ShellExecute("\""+WScript.ScriptFullName+"\"","","","runas",1);/*&title Uninstall_Microsoft_Edge (Chromium)&echo.&echo   Requesting Admin Privileges....&echo   Press "Yes" to Run as Admin&NET FILE>NUL 2>&1||(CSCRIPT //B //E:JSCRIPT %0&EXIT /B)
cls
 
@ echo off
@ setlocal enableextensions
 
REM   :::::::::::::::::::::::::::::::::::::::::::::
REM    Created by Tech Morgan | Deepak T (Youtube)
REM   :::::::::::::::::::::::::::::::::::::::::::::
 
if exist "%programfiles(x86)%" set arch1=x64
if not exist "%programfiles(x86)%" set arch1=x32
 
echo.
echo   Uninstalling Microsoft Edge (Chromium)...
 
if %arch1%==x64 (
for /d /r "%programfiles(x86)%\Microsoft\Edge\Application" %%a in (*) do if /i "%%~nxa"=="Installer" cd /d %%~dpa%%~nxa
)
if %arch1%==x32 (
for /d /r "%programfiles%\Microsoft\Edge\Application" %%a in (*) do if /i "%%~nxa"=="Installer" cd /d %%~dpa%%~nxa
)
setup.exe --uninstall --system-level --verbose-logging --force-uninstall >nul 2>&1
echo.
 
echo   Removing Leftover Files...
for %%i in ("%localappdata%\Microsoft\Edge" "%localappdata%\MicrosoftEdge" "%programfiles%\Microsoft\Edge" "%programfiles(x86)%\Microsoft\Edge" "%userprofile%\MicrosoftEdgeBackups") do rd /s /q "%%~i" >nul 2>&1
echo.
 
echo   Removing Leftover Registry Keys...
set "cmnd=reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Microsoft Edge""
if %arch1%==x32 (
   "%~dp0x86\NSudo.exe" -U:T -P:E %cmnd% /f >nul 2>&1
)
if %arch1%==x64 (
   "%~dp0amd64\NSudo.exe" -U:T -P:E %cmnd% /f >nul 2>&1
   "%~dp0amd64\NSudo.exe" -U:T -P:E %cmnd% /f /reg:32 >nul 2>&1
)
echo.
 
echo   Blocking future installation...
echo.
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
<nul set /p=%BS%  
reg add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d "1" /f
echo.
echo   Press any key to exit
pause >nul
 
:*/
 
pause
cls
goto begin
 
:exit
@exit
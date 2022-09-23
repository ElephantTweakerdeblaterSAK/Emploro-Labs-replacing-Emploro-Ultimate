@echo off
title Emploro Ultimate Utility Pre alpha V0.5
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
echo 7) Windows debloats (more fps lower delay and ping)
echo 8) revert all changes to set back to defalt settings
echo 9) vist our pages


 
 
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto op7
if "%op%"=="8" goto op8
if "%op%"=="9" goto op9


 
 
 
echo Please Pick an option:
goto begin
 
 
:op1
echo welcome to pc cleaning option
pause
echo we will clean pc unnecessary files ect
 
del /s /f /q %userprofile%\Recent\*.*
 
del /s /f /q C:\Windows\Prefetch\*.*
 
del /s /f /q C:\Windows\Temp\*.*
 
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*

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
del /s /f /q %userprofile%\Recent\*.*
 
del /s /f /q C:\Windows\Prefetch\*.*
 
del /s /f /q C:\Windows\Temp\*.*
 
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*

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
cls
echo welcome to debloat menu
echo 1) Unistall microsoft edge Chromium
echo 2) disable windows update (not recomended if you like new feathures and care about security updates)
echo 3) disable windows search 
echo 4) go back to other menu

set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
  
:op1
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


:op2 
sc start wuauserv
pause
sc stop wuauserv
pause
sc config wuauserv start= "disabled"
pause
cls 
goto begin




:op3
net stop WSearch /y
sc config WSearch start= "disabled"
pause
cls
goto begin



:op4
cls
goto begin



 
 
 
:op8
echo welcome to reverter
pause
echo the revert can be used if this utility caused issues or you want to make it defalts agian to fix issue
pause
bcdedit /set useplatformclock true
 
bcdedit /set disabledynamictick no
net start SysMain /y
sc config SysMain start= auto
net start DiagTrack /y
sc config DiagTrack start= auto
net start iphlpsvc /y
sc config iphlpsvc start= auto
net start WSearch /y
sc config WSearch= auto
net start wuauserv /y
sc config wuauserv start= demand
pause
echo We reverted all the changes we will open a website page to install microsoft edge if you dont need to or dont want to just close out the tab  
pause
start "" https://www.microsoft.com/en-us/edge
pause
cls
goto begin


:op9
@echo off 
title our pages
echo 1) vist our github
echo 2) vist our emploro website 

set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
  
:op1
start "" https://github.com/ElephantTweakerdeblaterSAK/Emploro-ultimate
cls
goto begin

:op2 
start "" https://emploro.wixsite.com/emploro
cls 
goto begin


 
:exit
@exit
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
color 6
Reg.exe add HKLM /F >nul 2>&1
if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b
cls
echo welcome to Emploro Ultimate Utility this batch doesn't shorten the life of your pc you will find amazing tweaks and more. (:
pause
echo if script apears to be frozen just press enter button.
pause
cls
 
:begin
echo optimizations, debloats, tweaks:
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
echo 1) Clean unnecessary files etc + log files
echo.
echo 2) disable High precession event timer 
echo.
echo 3) Help center :)
echo.
echo 4) Disable unnecessary services (no functionality loss)
echo.
echo 5) network clean optimization
echo.
echo 6) Run all tweaks/optimizations except for Advanced
echo.
echo 7) Advanced
echo.
echo 8) revert to default
echo.
echo 9) Extra's
echo.
 
 
 
 
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
echo we will clean pc unnecessary files etc
 
del /s /f /q %userprofile%\Recent\*.*
 
del /s /f /q C:\Windows\Prefetch\*.*
 
del /s /f /q C:\Windows\Temp\*.*
 
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
cd/
@echo
del *.log /a /s /q /f
pause
echo finished cleaning you are done
pause
cls
goto begin
 
:op2
echo disable hpet
pause
echo This option is under fixing stage.
pause
cls
goto begin
 
:op3
echo welcome to Help center
pause
cls
echo Are you in need of any assistance?
pause
 
echo 1/y/Y/yes/Yes) yes
echo 2/n/N/no/No) no 
 
 
 
 
 
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="y" goto op1
if "%op%"=="n" goto op2  
if "%op%"=="yes" goto op1
if "%op%"=="no" goto op2
if "%op%"=="Yes" goto op1
if "%op%"=="No" goto op2
if "%op%"=="Y" goto op1
if "%op%"=="N" goto op2
 
:op1
echo you chose yes
pause
echo This is not completed yet if you need help just call 911.
pause
cls
goto begin
 
 
 
 
 
 
:op2 
echo you chose no
pause
echo then what do you need
pause
echo This area is not completed yet.
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
echo You have disabled the services.
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
echo ping tweak is complete
pause
cls
goto begin
 
:op6
echo we will run all of the optimizations
del /s /f /q %userprofile%\Recent\*.*
 
del /s /f /q C:\Windows\Prefetch\*.*
 
del /s /f /q C:\Windows\Temp\*.*
 
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
del /s /f /q %userprofile%\Recent\*.*
 
del /s /f /q C:\Windows\Prefetch\*.*
 
del /s /f /q C:\Windows\Temp\*.*
 
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
cd/
@echo
del *.log /a /s /q /f
 
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
pause
echo You have ran all the optimizations please restart pc to insure the optimizations applied fully.
pause
cls
goto begin
 
 
:op7
cls
echo welcome to Advanced Menu
pause
echo.
echo 1) Uninstall Microsoft edge Chromium (created by Tech Morgan) (make sure edge isnt running in taskmanager)
echo.
echo 2) disable windows update service (not recommended if you like new features and care about security updates)
echo.
echo 3) disable windows search (disables indexing)
echo.
echo 4) disable geolocation service apps wont have your locaction(if bugs appear you can undo with main menu)
echo.
echo 5) go back to other menus
echo.
 
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
 
 
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
Edge is now unistalled.
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
windows update is now disabled
pause
cls 
goto begin
 
 
 
 
:op3
net stop WSearch /y
sc config WSearch start= "disabled"
pause
echo windows search is now disabled
pause
cls
goto begin
 
 
 
:op4
net stop lfsvc /y
sc config lfsvc start= "disabled"
pause
echo geolocation tracking is now disabled
pause
cls 
goto begin
 
 
:op5
pause
cls
goto begin
 
 
 
 
 
 
:op8
echo welcome to reverter
pause
echo The revert can be used if this utility caused issues or you want to make it defaults again to fix the issue.
pause
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
net start lfsvc /y 
sc config lfsvc /y start= demand
pause
echo We reverted all the changes we will open a website page to install Microsoft edge if you don't need to or don't want to just close out the tab  
pause
start "" https://www.microsoft.com/en-us/edge
pause
cls
goto begin
 
 
:op9
@echo off 
title Extra's
echo.
echo 1) visit our GitHub
echo.
echo 2) visit our Emploro website
echo. 
echo 3) join our Emploro Elephant developer squad
echo.
echo 4) visit my Fiverr page
echo.
echo 5) Themes 
echo.
echo 6) go back to home
echo. 
 
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
 
:op1
start "" https://github.com/ElephantTweakerdeblaterSAK/Emploro-ultimate
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
:op2 
start "" https://emploro.wixsite.com/emploro
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls 
goto begin
 
:op3
start "" https://www.roblox.com/groups/10037011/The-elephant-developer-squad#!/about
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
:op4 
start "" https://www.fiverr.com/babyshemonpuckp?source=gig_page
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls 
goto begin
 
 
 
 
 
 
:op5
cls
@echo off 
title themes selector
color F0
echo. Themes there are so many
pause
echo. 
echo 1) Super Light theme /light theme
echo.
echo 2) yellow lime (default)
echo.
echo 3) salmon pink theme
echo.
echo 4) mcdonalds/dragon theme
echo.
echo 5) Dark theme 
echo.
echo 6  xi's Pro 
echo.
echo 7) go back to the main menu keeps this theme in selector
echo.
 
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%" =="6" goto op6
 
 
:op1 
color F7
pause
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
:op2 
color 6
pause
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
:op3
color C7
pause
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
:op4
color 46
pause
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
 
:op5
color 0B
pause
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin 
 
 
 
:op6
@echo off
color C6
pause
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin

:op7
@echo off
title Emploro Ultimate Utility v0.8.2 alpha (small patch)
cls
goto begin
 
 
 
:exit
@exit
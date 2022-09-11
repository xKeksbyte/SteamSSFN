@echo off
color 1a
echo Running Unsupported Steam Games Script
cd "C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher"
ren upc.exe steam.exe
taskkill /f /im steam.exe && start "" steam.exe
cd "C:\Program Files (x86)\Steam"
ren steam.exe team.exe
start "" team.exe
echo DONE! Do not close UPLAY!!!!!!!!
pause
exit
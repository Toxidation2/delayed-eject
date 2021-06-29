@echo off
wscript eject.vbs
if exist "result.txt" (
	type result.txt
) else (
	echo Eject failed
)
del result.txt
echo [%date% - %time%] Ejected! Waiting 30 minutes until next eject command...
echo [%date% - %time%] Ejected! Waiting 30 minutes until next eject command... >>eject.log
timeout /t 1800 >nul
ejectpause
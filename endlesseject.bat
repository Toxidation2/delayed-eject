@echo off
wscript eject.vbs
if exist "result.txt" (
	type result.txt
) else (
	echo Eject failed
)
del result.txt
echo Press ENTER to try again or CTRL+C to exit
pause >nul
endlesseject
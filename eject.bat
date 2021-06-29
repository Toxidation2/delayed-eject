@echo off
wscript eject.vbs
if exist "result.txt" (
	type result.txt
) else (
	echo Eject failed
)
del result.txt
eject.bat
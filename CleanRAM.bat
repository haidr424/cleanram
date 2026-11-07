@echo off
chcp 1256 > nul
cls
echo =====================================
echo    Ã«—Ì  ‰ŸÌ› „Œ·›«  «·‰Ÿ«„ Ê ›—Ì€ «·—«„...
echo =====================================

::  ‰ŸÌ› „Ã·œ«  «·„·›«  «·„ƒﬁ …
del /s /f /q %windir%\Temp\*.* 2>nul
rd /s /q %windir%\Temp 2>nul
md %windir%\Temp 2>nul

del /s /f /q %USERPROFILE%\AppData\Local\Temp\*.* 2>nul
rd /s /q %USERPROFILE%\AppData\Local\Temp 2>nul
md %USERPROFILE%\AppData\Local\Temp 2>nul

del /s /f /q %windir%\Prefetch\*.* 2>nul
rd /s /q %windir%\Prefetch 2>nul
md %windir%\Prefetch 2>nul

::  ‰ŸÌ› „·›«  «·‹ Log Ê«·„Œ·›«  «·ﬁœÌ„…
del /s /f /q %windir%\system32\dllcache\*.* 2>nul
del /s /f /q %systemdrive%\*.tmp 2>nul
del /s /f /q %systemdrive%\*._mp 2>nul
del /s /f /q %systemdrive%\*.log 2>nul

::  ›—Ì€ –«ﬂ—… «·Õ«›Ÿ… (Clipboard) · Œ›Ì› «·—«„ ›Ê—«
cmd /c "echo off | clip"

echo =====================================
echo        „ «· ‰ŸÌ› »‰Ã«Õ Ê ›—Ì€ «·–«ﬂ—…!
echo =====================================
pause

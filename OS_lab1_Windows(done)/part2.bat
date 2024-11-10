@echo off
setlocal enabledelayedexpansion
chcp 65001
set directory=%1
set count=0

for /r %directory% %%i in (*.exe *.com *.bat) do (
    echo %%i
    set /a count+=1
)

echo В каталоге %directory% исполняемых файла: %count%

endlocal

pause 
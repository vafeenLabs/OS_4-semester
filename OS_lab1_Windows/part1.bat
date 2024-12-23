@echo off
setlocal enabledelayedexpansion
chcp 65001
set directory=%1
set /A count=0

for /r %directory% %%i in (.) do (
    for /d %%j in ("%%i\System*") do (
        set /a count+=1
    )
)

echo В указанном каталоге %directory% найдено %count% системных подкаталогов с именем, начинающимся на "System".

endlocal

pause 
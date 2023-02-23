@echo off
echo Please type the Job Number.
echo ...
set /p job= 
winget import -i "%CD%\Exports\%job%.json" --ignore-unavailable --accept-package-agreements --accept-source-agreements
pause 
@echo off
echo Please type the Job Number.
echo ...
set /p job= 
winget export -o "%CD%\Exports\%job%.json" --include-versions --accept-source-agreements
pause 
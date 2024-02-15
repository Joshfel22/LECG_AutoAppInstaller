@echo off
echo Please type or paste the file directory of where I am located.
echo This is important as command prompt can't figure out if you're running it as a standard user or as administrator.
echo Because technically speaking, command prompt administrator uses different variables.
echo Therefore, I cannot set up a path that predicts where I am located.
echo ...
echo where I am located (Case Sensitive)
set /p where= 
echo ...
echo Please type the name of the app list you would like to use (It is case sensitive)
set /p alist= 
echo ...
call "%where%\App Lists\%alist%.bat"
echo ...
echo Do you want to update these Apps?
echo ...
winget upgrade
echo ...
echo Do you want to update these Apps?
echo ...
echo 1 - Yes
echo 2 - No
echo ...
SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO UPDATEYES
IF %M%==2 GOTO UPDATENO
exit
:UPDATENO:
echo done
:UPDATEYES:
winget upgrade --all
pause 


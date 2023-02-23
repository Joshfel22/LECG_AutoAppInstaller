@echo off
echo Please type or paste the file directory of where I am located.
echo This is important as command prompt can't figure out if you're running it as a standard user or as administrator.
echo Because technically speaking, command prompt administrator is a different programme.
echo Therefore, I cannot set up a path that predicts where I am located.
echo ...
echo where I am located (Case Sensitive)
set /p where= 
echo ...
echo Please type the name of the app list you would like to use (It is case sensitive)
set /p alist= 
echo ...
winget import "%where%\App Lists\%alist%.json" --ignore-versions --accept-package-agreements --accept-source-agreements

ECHO ...
ECHO Do you need AV
echo ...
ECHO 1 - Webroot
ECHO 2 - Trend
ECHO 3 - No
echo ...
SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO WEBROOT
IF %M%==2 GOTO CALC
IF %M%==3 GOTO BOTH
WEBROOT:
call 
pause 


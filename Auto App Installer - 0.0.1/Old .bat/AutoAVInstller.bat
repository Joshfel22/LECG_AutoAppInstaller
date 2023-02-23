@echo off
echo Please type or paste the file directory of where I am located.
echo This is important as command prompt can't figure out if you're running it as a standard user or as administrator.
echo Because technically speaking, command prompt administrator is a different programme.
echo Therefore, I cannot set up a path that predicts where I am located.
echo ...
echo where I am located (Case Sensitive)
set /p where= 
echo ...
echo Please type the name of the AV you would like to use (It is case sensitive)
echo Options: Webroot, Trend
set /p avlist= 
echo ...
call "%where%\AVs\AV - %avlist%.bat"
pause 
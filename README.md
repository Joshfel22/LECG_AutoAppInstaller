# AutoAppInstaller
This is a batch script that I made using the Windows CLI tool call "[winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)"

## How to use the AutoInstaller batch script.
The script talks to other batch files and uses the "call" function quite a lot, so when using it it's either recommended to keep the USB that it's installed on or copy and place these files to somewhere on the computer.

To use this script right click on the file "AutoAppInstaller.bat" and run it as admin (this is to avoid constantly having to approve administration prompts)

When you first run the script, it will give you the prompt

    Please type or paste the file directory of where I am located.
    This is important as command prompt can't figure out if you're running it as a standard user or as administrator.
    Because technically speaking, command prompt administrator is a different programme.
    Therefore, I cannot set up a path that predicts where I am located.
    ...
    where I am located (Case Sensitive)
Note I have no clue if this is true but please correct me if I'm wrong

Next what you are to do is then copy the file directory, for example

    C:\Users\%USERNAME%\Desktop\AutoAppInstaller

Once you enter the file directory, it will then ask

    Please type the name of the app list you would like to use (It is case sensitive)

The names of the app list can be found inside of (these are also batch files, so please do read them before running them)

    AutoAppInstaller\AppLists

Once you you tell it which app to use, it will then start trying to download these apps, either from Microsoft repository (again, please correct me if I'm wrong, but from what I can assume you publish your own packages to a repository that Microsoft has) or the Microsoft Windows Store

Once it completes installing all the apps in the list, it will then ask

    Do you want to update these Apps?
Once to ask this question, it will then run a command to check what apps need updating on the computer that are available from Microsoft repo, it cannot check from the Microsoft store.

It will then ask you again do you want to update these apps with a new prompt

    Do you want to update these Apps?
    ...
    1 - Yes
    2 - No
    ...
    Type 1 or 2 then press ENTER:
If you tell it, yes, it will then try to update all the apps that can it may fail and if that's the case, you can still update the app manually by opening it and doing the usual to update that app.

After all apps are completed updating, it will then pause so that you can check back through and see what has updated and what has failed. If you hit any key, it will then close the prompt.

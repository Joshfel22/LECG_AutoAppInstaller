# How to make an App List
This is a document on what an atlas is, and how to make your own and edit the premade ones
## What is an App List?
an app is a list of apps that the auto installer is told to install

# Finding the ID
First, you want to find out the ID of the app you would like to add to your app list.

## Method 1: Sharing from the Microsoft Store
The easiest way I've found of doing. This is by though by going to the Microsoft store, searching for the app that you would like to add and sharing it e.g.

    https://www.microsoft.com/store/productId/9PFHDD62MXS1?ocid=pdpshare
What you'll need to do is copy, the part that comes right after `productId` and finish copying it at the `?`. For example `9PFHDD62MXS1`

## Method 2: using the search command
When it comes with a built-in search command that allows you to search, the repository is that you have added to it by default it allows you to search Microsoft's Repo and the Microsoft Store

For example, if you would to type the command `winget search "Apple Music"`. it would search for it and return the Name, ID, Version and Source of any package, it was able to find.

# Building a AppList
Building an app list is quite simple. First start with a blank text document, make sure to rename the document the name of the list and use `.bat` instead of `.txt`.
Then copy and paste this template below

    winget install [productId] --accept-package-agreements --accept-source-agreements -s [source]

Here is a simple template on all you have to do is add the ID of the apps that you would like to add to the list. You simply copy and paste this line as many times for as many apps as you need to add. You don't have to include the except a package agreements or source agreements, but it is recommended as it means you have to interact with the install unless you. also don't have to include the source but it is also recommended as if you were trying to get an app specifically from the windows store, it may default to another repository.

Once you are finished, adding all of your apps, you can save the file and try using the AutoAppInstaller.bat file, and when it asks what app list to use tell the name of the file that you just created excluding the `.bat`.

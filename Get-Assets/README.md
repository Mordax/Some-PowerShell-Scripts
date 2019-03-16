Get-Assets.ps1  
Version 0.1.0  
Author: Mordax  

This is ~~yet another~~ script for automating retrieval of game assets for [Flashpoint](https://bluemaxima.org/flashpoint/), the web game preservation project. 

--- 

## Prequisites before running:
- Edit the .ps1 file
- Replace the file location of $output with your htdocs location of your game (hope to eliminate this need in the future by being able to setup the file structure automatically)
- Save it.

#### How to use the 2nd option (HTTP get for multiple URLS):  
- Use Flashpoint redirector and save the 404 urls (`tools->Copy all 404 not found URLS`)
- Save the URLs to a .txt file 
- When prompted, give the path to that file
- Hit enter and eureka!

**Important**  
After downloading the assets, close and reopen the game (not redirector) and keep playing for more potential 404 URLS.


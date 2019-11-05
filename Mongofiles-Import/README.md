|Mongofiles-Import.ps1|  
|---------------------|
|Version 0.1.0        |
|Author: Mordax       |

This is a PowerShell script for [Mongofiles](https://docs.mongodb.com/manual/reference/program/mongofiles/), the utility that allows
users to work with MongoDB's [GridFS](https://docs.mongodb.com/manual/core/gridfs/) from the command line. 

I noticed that you cannot input multiple files at once using this command (RegEx does not 
appear to work). So I wrote this very basic utility script to do that. 

Just define the `$folder` variable with the asset folder you wish to 
import into GridFS.

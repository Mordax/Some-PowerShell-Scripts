<# A useful powershell script to download files off of URLs #>

# $output = whatever folder location you want the script to save the files to. 
$output = "..\..\Flashpoint Core 2.3\Games\Flash\htdocs\ww2.freearcade.com\Jetslalom.jav\"
$client = new-object System.Net.WebClient

while($select -ne 0){
    Write-Host "Select from the following options:
                        0. Exit script
                        1. Grab asset from one URL
                        2. Grab multiple assets from multiple URLs"
    $select = Read-Host -Prompt "Enter your selection"

    switch($select){
        1{
            $url = Read-Host -Prompt "Enter URL (with http included)"
            $file = Split-Path $url -Leaf
            $client.DownloadFile($url, $output + $file)
        }
        2{
            $txt = Read-Host -Prompt "Enter location of input file with the 404 URLS (if in same directory, it's .\ syntax"
            foreach($line in Get-Content $txt){
                $filename = Split-Path $line -leaf
                $client.DownloadFile($line, $output + $filename)
            }
        }
    }
    # Line 29 is optional, it's to make sure the game is reset to run the new assets
    Stop-Process -name "appletviewer" -ErrorAction SilentlyContinue
}

Write-Host "Thanks for using my tool!"

<# TODO: Allow users to specify output location - most likely manually for now
 - Maybe talk to redirector to grab 404 urls
 - Dynamically add missing folders #>

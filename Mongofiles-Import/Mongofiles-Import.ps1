
<# A powershell script to quickly do multiple mongofiles put commands #>

$folder = "" # Add fullpath to the folder with the large amount of assets you wish to import to GridFS

$result = Get-ChildItem -Path $folder

for($i = 0; $i -lt $result.length; $i++){
  $command = "& mongofiles.exe --db myapp_test put $($result[$i].FullName)"
  Invoke-Expression $command
} 

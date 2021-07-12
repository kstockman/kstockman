# This script is designed to copy files/folders from one directory to another.

Write-Host "***THIS SCRIPT WILL NOT WORK IF YOU DO NOT RUN POWERSHELL AS ADMINISTRATOR"
$uPath = Read-Host -Prompt "What is the file path you wish to copy?"
$uDest = Read-Host -Prompt "Where would you like this copied to?"

Copy-Item -Path "$uPath*" -Destination "$uDest" -Recurse
cd $env:APPDATA
cd .. 
cd local 
Write-Host "Cleaning Blizzard Log files located in %APPDATA%/Local/Battle.Net/Logs" 
cd Battle.net
cd logs
del *.* 
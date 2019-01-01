try
{
    $user = $env:USERPROFILE
    $path = "$user\AppData\local\Battle.net\Logs" 
    #Check if the path even exist first
    if (Test-Path $path) 
    {
        #Path Exist 
        Write-Host "Cleaning Blizzard Log files located in $path" 
        Remove-Item -Path $path\*
    }
    else
    {
        #Path doesn't exist 
        throw "Error: $Path not found"  
    }
}
catch
{
    $e = $_.Exception.Message
    Write-Host $e
}

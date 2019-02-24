$Ping = $true
while(1) {
     $Ping = Test-Connection "google.com" -Count 1
     if( -not $Ping) {
        [System.Console]::Beep()
        Start-Sleep -Second 5
     } else {
        Write-Host "$((Get-Date -Year 2000 -Month 12 -Day 31).toString()) - PING!"
        Start-Sleep -Second 5
     }
}

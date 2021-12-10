Write-Host "Teams wird beendet, um den Cache zu loeschen."
try{
Get-Process -ProcessName Teams | Stop-Process -Force
Start-Sleep -Seconds 5
Write-Host "Microsoft Teams wurde beendet."
}
catch{
echo $_
}
# Der Cache wird nun geloescht / geleert
try{
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\application cache\cache" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\blob_storage" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\databases" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\cache" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\gpucache" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Indexeddb" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\Local Storage" | Remove-Item
Get-ChildItem -Path $env:APPDATA\"Microsoft\teams\tmp" | Remove-Item
 
}
catch{
echo $_
}
 
write-host "Der Cache wurde erfolgreich geloescht / geleert."

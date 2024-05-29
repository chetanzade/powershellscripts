#Notepad++
$nppUrl = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.2/npp.8.2.Installer.exe"
$nppInstaller = "$env:TEMP\npp_installer.exe"
Invoke-WebRequest -Uri $nppUrl -OutFile $nppInstaller
Start-Process $nppInstaller -ArgumentList "/S" -Wait
Remove-Item $nppInstaller

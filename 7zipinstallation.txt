#Install 7-Zip 
$zipInstallerUrl = "https://www.7-zip.org/a/7z1900-x64.exe"
$zipInstallerPath = "$env:TEMP\7zipInstaller.exe"
Invoke-WebRequest -Uri $zipInstallerUrl -OutFile $zipInstallerPath
Start-Process -FilePath $zipInstallerPath -ArgumentList "/S" -Wait

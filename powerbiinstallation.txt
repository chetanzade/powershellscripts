#install POwerBi
$powerBIInstallerUrl = "https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup.exe"
$powerbiinstallerPath = "$env:TEMP\PBIDesktopSetup.exe"
Invoke-WebRequest -Uri $powerBIInstallerUrl -OutFile $powerbiinstallerPath
Start-Process -FilePath $powerbiinstallerPath -ArgumentList "/quiet /norestart ACCEPT_EULA=1" -Wait
Remove-Item $powerbiinstallerPath

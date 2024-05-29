$chromeInstallerUrl = "https://dl.google.com/chrome/install/latest/chrome_installer.exe"
$chromeinstallerPath = "$env:TEMP\chrome_installer.exe"
Invoke-WebRequest -Uri $chromeInstallerUrl -OutFile $chromeinstallerPath
Start-Process -FilePath $chromeinstallerPath -ArgumentList "/silent /install" -Wait
Remove-Item $chromeinstallerPath

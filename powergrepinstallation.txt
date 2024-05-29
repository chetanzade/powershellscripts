#Install PowerGREP
$powergrepinstallerUrl = "https://download.jgsoft.com/powergrep/SetupPowerGREPDemo.exe"
$powergrepinstallerPath = "$env:TEMP\PowerGREPInstaller.exe"
Invoke-WebRequest -Uri $powergrepinstallerUrl -OutFile $powergrepinstallerPath
Start-Process -FilePath $powergrepinstallerPath -ArgumentList "/S" -Wait

#Install Sandboxie (Note: required plus/Classic)
$sandboxieUrl = "https://github.com/sandboxie-plus/Sandboxie/releases/download/v1.13.7/Sandboxie-Plus-x64-v1.13.7.exe"
$sandboxieDownloadPath = "$env:TEMP\Sandboxie-Plus-x64-v1.13.7.exe"
$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($sandboxieUrl, $sandboxieDownloadPath)
Start-Process -FilePath $sandboxieDownloadPath -ArgumentList "/S" -Wait
Remove-Item $sandboxieDownloadPath

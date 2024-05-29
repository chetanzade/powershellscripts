# Install Firefox
$firefoxUrl = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"
$firefoxDownloadPath = "$env:TEMP\FirefoxSetup.exe"
Invoke-WebRequest -Uri $firefoxUrl -OutFile $firefoxDownloadPath
Start-Process -FilePath $firefoxDownloadPath -ArgumentList "/S" -Wait
Remove-Item $firefoxDownloadPath

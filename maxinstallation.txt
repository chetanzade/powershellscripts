#Max 9.3 installer
$edrawInstallerUrl = "http://download.edrawsoft.com/edrawmax9.3.exe"
$edrawInstallerPath = "$env:TEMP\edrawmax9.3.exe"
Invoke-WebRequest -Uri $edrawInstallerUrl -OutFile $edrawInstallerPath
# Check if the file was downloaded successfully
if (Test-Path $edrawInstallerPath) {
    Write-Output "Installer downloaded successfully."
    Write-Output "Installing Edraw Max 9.3..."
    $startProcessArgs = @{
        FilePath     = $edrawInstallerPath
        ArgumentList = "/silent"
        Wait         = $true
        NoNewWindow  = $true
    }
    Start-Process @startProcessArgs
    Write-Output "Edraw Max 9.3 installation completed"

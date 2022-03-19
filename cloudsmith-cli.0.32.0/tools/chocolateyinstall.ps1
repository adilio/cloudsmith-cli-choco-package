
$ErrorActionPreference = 'Stop'
$Python = (Get-ChildItem C:\python* -Recurse -Filter python.exe).FullName[-1]
Start-ChocolateyProcessAsAdmin -Statements "-m pip install --upgrade pip" -ExeToRun $Python
$Pip = (Get-ChildItem C:\python*\ -Recurse -Filter pip.exe).Fullname
Start-ChocolateyProcessAsAdmin -Statements "install --upgrade cloudsmith-cli==0.32.0" -ExeToRun $Pip
$Warn = @"
WARNING: You will likely need to close and repoen your console, or run 'refreshenv',
before the 'cloudsmith' commands are available.
"@
Write-Host -ForegroundColor Magenta $Warn
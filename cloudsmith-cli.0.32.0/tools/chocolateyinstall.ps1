
$ErrorActionPreference = 'Stop'
$Python = (Get-ChildItem C:\python* -Recurse -Filter python.exe).FullName[-1]
Start-ChocolateyProcessAsAdmin -Statements "-m pip install --upgrade pip" -ExeToRun $Python
$Pip = (Get-ChildItem C:\python*\ -Recurse -Filter pip.exe).Fullname
Start-ChocolateyProcessAsAdmin -Statements "install --upgrade cloudsmith-cli==0.32.0" -ExeToRun $Pip
refreshenv
Write-Host -ForegroundColor Green "The cloudsmith-cli package has now been installed successfully."s
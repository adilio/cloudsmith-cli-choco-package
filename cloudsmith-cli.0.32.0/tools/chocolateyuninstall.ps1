
$ErrorActionPreference = 'Stop'
$ExeToRun = (Get-ChildItem C:\python*\ -Recurse -Filter pip.exe).Fullname
Start-ChocolateyProcessAsAdmin -Statements "uninstall cloudsmith-cli -y" -ExeToRun $ExeToRun

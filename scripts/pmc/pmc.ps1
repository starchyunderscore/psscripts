Write-Output "DOWNLOADING JAVA"
mkdir "$HOME\PMCSCRIPTTEMP"
Invoke-webRequest -UseBasicParsing "" -OutFile "$HOME\PMCSCRIPTTEMP\jinstall.exe"

mkdir "$HOME\PMCSCRIPTTEMP"
mkdir "$HOME\PMC"
Invoke-WebRequest -UseBasicParsing "https://github.com/starchyunderscore/psscripts/raw/main/scripts/pmc/jPortable_8_Update_391_online.paf.exe" -OutFile "$HOME\PMCSCRIPTTEMP\jinstall.exe"
Write-Output "!!!!`nINSTALL IT TO THE DEFAULT DIRECTORY`n!!!!"
& "$HOME\PMCSCRIPTTEMP\jinstall.exe" | Out-Null
mv "$HOME\Downloads\CommonFiles\Java" "$HOME\PMC"
mv "$HOME\Downloads\CommonFiles\OpenJDKJRE64" "$HOME\PMC"
Invoke-WebRequest -UseBasicParsing "https://nightly.link/UltimMC/Launcher/workflows/main/develop/mmc-cracked-win32.zip" -OutFile "$HOME\PMCSCRIPTTEMP\mmc.zip"
Expand-Archive "$HOME\PMCSCRIPTTEMP\mmc.zip" | Out-Null
mv "$HOME\PMCSCRIPTTEMP\mmc\UltmiMC" "$HOME\PMC"
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:AppData\Microsoft\Windows\Start Menu\Programs\UltimMC.lnk")
$Shortcut.TargetPath = "$HOME\PMC\UltimMC\UltimMC.exe"
$Shortcut.Save()

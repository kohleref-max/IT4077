echo "[+] Extracting sysmon"
set /p "hit enter to continue..."
powershell Expand-Archive -Path Sysmon.zip
echo "[*] Sysmon extracted"
set /p "hit enter to continue to install Sysmon..."
Sysmon\sysmon.exe -i sysmon_config.xml

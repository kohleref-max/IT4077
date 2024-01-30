echo "[+] Extracting sysmon"
set /p a="hit enter to continue..."
powershell Expand-Archive -Path C:\Users\%USERNAME%\Downloads\Sysmon.zip
echo "[*] Sysmon extracted"
set /p b="hit enter to continue to install Sysmon..."
C:\Users\%USERNAME%\Downloads\Sysmon\sysmon.exe -i C:\Users\%USERNAME%\Downloads\sysmon_config.xml
set /p c="hit enter to reconfigure sysmon..."
C:\Users\%USERNAME%\Downloads\Sysmon\sysmon.exe -c C:\Users\%USERNAME%\Downloads\sysmon_config_mali.xml

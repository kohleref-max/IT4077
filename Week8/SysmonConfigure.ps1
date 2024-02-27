$wc = New-Object Net.WebClient
$wc.DownloadFile("https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week8/sysmonconfig-week8.xml","C:\Users\Administrator\sysmonconfig-week8.xml")
C:\Users\Administrator\Downloads\Sysmon\Sysmon.exe -c C:\Users\Administrator\sysmonconfig-week8.xml
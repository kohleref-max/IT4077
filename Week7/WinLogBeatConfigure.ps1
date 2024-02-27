$wc = New-Object Net.WebClient
$wc.DownloadFile("https://artifacts.elastic.co/downloads/beats/winlogbeat/winlogbeat-8.12.1-windows-x86_64.zip","C:\Users\Administrator\winlogbeat.zip")
Expand-Archive -Path C:\Users\Administrator\winlogbeat.zip -DestinationPath 'C:\Program Files\winlogbeat' -Force
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
& 'C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64\install-service-winlogbeat.ps1'
$MyIpAddr = Read-Host -Prompt 'What is the IP of you Kali Linux Server'
$wc.DownloadFile("https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week7/winlogbeat.yml","C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64\winlogbeat.yml")
(Get-Content 'C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64\winlogbeat.yml').Replace('YOUR_IP',$MyIpAddr) | Set-Content 'C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64\winlogbeat.yml'
cd 'C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64'
& 'C:\Program Files\winlogbeat\winlogbeat-8.12.1-windows-x86_64\winlogbeat.exe' setup -e
Start-Service winlogbeat
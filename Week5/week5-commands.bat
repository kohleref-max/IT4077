@echo off
echo "[+] Starting Week5 Assignment"
echo "[+] Hit Enter to begin..."
set /p a="hit enter to continue..."
logman query providers
set /p b="hit enter to continue..."
logman query providers Microsoft-Windows-DotNETRuntime
set /p c="hit enter to continue..."
logman create trace it4077-trace -ets
set /p d="hit enter to continue..."
logman update it4077-trace -p Microsoft-Windows-DotNETRuntime 0x18
set /p e="hit enter to continue..."
logman query it4077-trace -ets
set /p f="hit enter to continue..."
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe /out:C:\Users\%USERNAME%\ETWCanSeeAssemblyNames.exe /platform:x64 C:\Users\%USERNAME%\Downloads\MsgBox.cs
C:\Users\%USERNAME%\ETWCanSeeAssemblyNames.exe


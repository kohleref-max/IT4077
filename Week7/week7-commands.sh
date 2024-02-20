#!/bin/bash
echo "[+] Starting Installation of ELK"
apt update
echo "[+] Update complete"
echo "[*] Press enter to continue..."
read a
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
apt update
apt install elasticsearch
echo "[+] Elasticsearch installed"
echo "[*] Press enter to continue..."
read b
wget https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week7/elasticsearch.yml -O /etc/elasticsearch/elasticsearch.yml
systemctl start elasticsearch
systemctl enable elasticsearch
curl -X GET "localhost:9200"
echo "[+] Elasticsearch Started"
echo "[+] Starting installation of Kibana"
echo "[*] Press enter to continue"
read c
apt install kibana
systemctl enable kibana
systemctl start kibana
echo "kibanaadmin:`openssl passwd -apr1 toor`" | sudo tee -a /etc/nginx/htpasswd.users
echo "[+] Enter your ip address"
ifconfig eth0
read ipaddr
wget https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week7/sites_available_template -O /root/sites_available_template
sed -i "s/YOUR_IP/$ipaddr/g" /root/sites_available_template
mv /root/sites_available_template /etc/nginx/sites-available/$ipaddr
ln -s /etc/nginx/sites-available/$ipaddr /etc/nginx/sites-enabled/$ipaddr
nginx -t
systemctl start nginx
systemctl reload nginx
curl http://$ipaddr/status

echo "[+] Kibana installed"
echo "[+] Starting logstash installation"
echo "[*] Press enter to continue"
read d
apt install logstash
wget https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week7/02-beats-input.conf -O /etc/logstash/conf.d/02-beats-input.conf
wget https://raw.githubusercontent.com/EvaStanAccount/IT4077/Main/Week7/30-elasticsearch-output.conf -O /etc/logstash/conf.d/30-elasticsearch-output.conf
sudo -u logstash /usr/share/logstash/bin/logstash --path.settings /etc/logstash -t
systemctl start logstash
systemctl enable logstash
echo "[+] Logstash intallation completed"
echo "[+] ELK is now propertly installed"
echo "[+] Finish assignment by configuring winlogbeat"
echo "[*] Press enter to close"
read f


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
wget [github] -o /etc/elasticsearch/elsaticsearch.yml


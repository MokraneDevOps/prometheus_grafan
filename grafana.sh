sudo apt-get update && sudo apt-get install -y apt-transport-https software-properties-common wget
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add
echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
sudo apt-get update
sudo apt-get install grafana-enterprise
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl status grafana-server


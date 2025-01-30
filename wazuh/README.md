# wazuh
Wazuh is an open-source platform for threat detection and incident response, renowned for its adaptability and integration capabilities

## installation
download and run agent
```bash
curl -sO https://packages.wazuh.com/4.10/wazuh-install.sh
sudo bash ./wazuh-install.sh -a
```
during install , it generates the admin password .store it 

find the passwords here
```bash
sudo tar -O -xvf wazuh-install-files.tar wazuh-install-files/wazuh-passwords.txt
```

to uninstall, run the Wazuh installation assistant using the option -u or –-uninstall
```bash
sudo bash ./wazuh-install.sh --uninstall
```
you can edit the configuration file here
```bash
sudo nano /etc/wazuh-dashboard/opensearch_dashboards.yml

```

it is recommended to disable wazuh updates to prevent accidenta upgrades that could break environment
```bash
sed -i "s/^deb /#deb /" /etc/apt/sources.list.d/wazuh.list
sudo apt update
```

## install your first agent
ubuntu or debian
```bash
curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/wazuh.gpg --import && chmod 644 /usr/share/keyrings/wazuh.gpg

sudo echo "deb [signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt/ stable main" | tee -a /etc/apt/sources.list.d/wazuh.list

sudo apt-get update

WAZUH_MANAGER="10.0.0.2" apt-get install wazuh-agent   #configure agent

# enable wazuh agent service
sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

#disable wazuh updates on agent
sudo sed -i "s/^deb/#deb/" /etc/apt/sources.list.d/wazuh.list
sudo apt update
```


agent on windows
```
use the graphical installer , its simpler to setup
```

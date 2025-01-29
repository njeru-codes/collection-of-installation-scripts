curl -sO https://packages.wazuh.com/4.10/wazuh-install.sh && sudo bash ./wazuh-install.sh -a

sed -i "s/^enabled=1/enabled=0/" /etc/yum.repos.d/wazuh.repo

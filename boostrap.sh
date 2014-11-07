echo 'file_client: local' > /etc/salt/minion
salt-call state.highstate
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo pip install -U fig

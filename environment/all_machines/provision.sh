sudo apt-get update -y
sudo apt-get install tree -y

sudo rm /etc/ssh/sshd_config
sudo cp /home/vagrant/environment/config/sshd_config /etc/ssh
sudo service ssh restart

echo "root:vagrant" | sudo chpasswd

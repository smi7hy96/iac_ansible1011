sudo apt update
sudo apt-get install tree -y
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

sudo rm /etc/ansible/hosts
sudo cp /home/vagrant/environment/config/hosts /etc/ansible

# untested
# sudo apt-get install sshpass -y
# sudo ssh-keygen -b 2048 -t rsa -f ~/.ssh/ -q -N ""
# sudo sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub root@192.168.10.10

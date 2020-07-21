# Ansible Controller Set-up tutorial

- Set up vagrant machines in terminal
```
vagrant up
```
- SSH into ansible controller machine
```
vagrant ssh ansible
```
- Create SSH Key inside ansible controller machine
```
ssh-keygen -t rsa
#leave name and passphrases empty
```
- Copy newly created key into each of the agent nodes, using ssh-copy-id and they're ip addresses.
```
ssh-copy-id -i ~/.ssh id_rsa.pub root@192.168.10.10
#when prompted to accept enter 'yes'
#when prompted for password enter 'vagrant'
#repeat this another 2 times with 192.168.10.20 & 192.168.10.30
```
- Clone this repo into the ansible controller machine ~ directory:
```
cd ~
git clone git@github.com:smi7hy96/iac_ansible1011.git
```
- Now to start running the playbooks:
```
cd ~/iac_ansible1011/environment/ansible/playbooks
```
- Run the copy playbook to copy the app and nginx conf files to the web machine
```
ansible-playbook playbook_copy_app.yml
#This may take some time!
```
- Install and alter the nginx server so that it reverse proxy's correctly (port 3000 --> port 80)
```
ansible-playbook playbook_nginx.yml
```
- To get the /posts page to work later on, first we must install the mongdb dependencies into our db machine - currently not operational -
```
ansible-playbook playbook_db.yml
```
- Run the app playbook to install all the dependencies necessary to run the sparta application (NodeJS, Python, PM2 etc.)
```
ansible-playbook playbook.yml
```
- NOW if you try and go to the web IP in your browser, you should be greeted by the sparta logo saying 'The app is running correctly'
```
# http://192.168.10.10
# or
# development.local
# The /fibonacci/x page works too; where x is any number (warning: high numbers may crash server! keep it low ~ 10)
# The /posts page will work too ! :)
```

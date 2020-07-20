# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

#MULTI VAGRANT
Vagrant.configure("2") do |config|
  config.vm.define "web" do |web|
    #specify box
    web.vm.box = "ubuntu/bionic64"
    #assign an ip
    web.vm.network "private_network", ip: "192.168.10.10"
    #assign a hostname for the vm
    web.vm.hostname = "web"
    #copy over files
    web.vm.synced_folder "environment/config/all_machines", "/home/vagrant/environment/config"
    # web.vm.synced_folder "app", "/home/vagrant/app"
    # web.vm.synced_folder "environment/nginx", "/home/vagrant/environment/config/nginx"
    #assign a hostname for browser access
    web.hostsupdater.aliases = ["development.local"]
    #run provision
    web.vm.provision "shell", path:"environment/all_machines/provision.sh", privileged: false
  end
  config.vm.define "db" do |db|
    #specify box
    db.vm.box = "ubuntu/bionic64"
    #assign an ip
    db.vm.network "private_network", ip: "192.168.10.20"
    #assign a hostname for the vm
    db.vm.hostname = "db"
    #copy over file
    db.vm.synced_folder "environment/config/all_machines", "/home/vagrant/environment/config"
    #assign a hostname for browser access
    db.hostsupdater.aliases = ["development.db"]
    #run provision
    db.vm.provision "shell", path:"environment/all_machines/provision.sh", privileged: false
  end
  config.vm.define "aws" do |aws|
    #specify box
    aws.vm.box = "ubuntu/bionic64"
    #assign an ip
    aws.vm.network "private_network", ip: "192.168.10.30"
    #assign a hostname for the vm
    aws.vm.hostname = "aws"
    #copy over file
    aws.vm.synced_folder "environment/config/all_machines", "/home/vagrant/environment/config"
    #assign a hostname for browser access
    aws.hostsupdater.aliases = ["development.aws"]
    #run provision
    aws.vm.provision "shell", path:"environment/all_machines/provision.sh", privileged: false
  end
  config.vm.define "ansible" do |ansible|
    #specify box
    ansible.vm.box = "ubuntu/bionic64"
    #assign an ip
    ansible.vm.network "private_network", ip: "192.168.10.40"
    #assign a hostname for the vm
    ansible.vm.hostname = "ansible"
    #copy over file
    ansible.vm.synced_folder "environment/config/ansible", "/home/vagrant/environment/config"
    ansible.vm.synced_folder "environment/ansible/playbooks", "/home/vagrant/environment/playbooks"
    ansible.vm.synced_folder "environment/nginx", "/home/vagrant/environment/config/nginx"
    #assign a hostname for browser access
    ansible.hostsupdater.aliases = ["development.ansible"]
    #run provision
    ansible.vm.provision "shell", path:"environment/ansible/provision.sh", privileged: false
  end
end

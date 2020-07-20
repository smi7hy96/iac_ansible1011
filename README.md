# Ansible and Infrastructre as code :taco:

This lecture we will look at:
- IAC (Infrastructure as code)
- Configuration Management tools
- What is Ansible
- Why Ansible

- Installing ansible (Already done)
- Create a multi environment setup
- Use Ansible to configure the environments
- File strucres and Ansible
- Adhock comands
- Playbooks


### Infrastructure As Code (ASC)
- setting up infrastructre with code as oposed to clicking away
- have a source code that is more robust than isolated scripts

### Configuration Management tools
They are the tools that put IAC into practice along with orchestration tools.

Configuration management tools include:
- Chef (ruby)
- Puppet
- Ansible
- Other

#### Orchestration tools
These tools aim more to configure the networking and deployment at scale.
These tools include:
- Ansible
- Terraform (hashicorp)
- Other


### Ansible - Simply put
Ansible is a high level language for dealing with powershell vs bash environments. For dealing with different package managers. And generally abstracting the most used comands and operations in provision so that you become more infrastructure agnostic. It is also open source (also means free). Built on python.

--> Flexibiliy, Easy of use, robustness and cost

- Free
- Allows us to become infrastructure agnostic
- Because of IAS and configuration Management tool it increases robustness
- Hopefully it's easy to use -> it is. Just set up a YMAL file for your playbooks

It allows for a multi and hybrid-cloud-premisis-environment mangament (orchestration)
- Allows us to setup and track several machines. Example:
  - webserver
  - db
  - aws

### Installing ansible

- On windows, get a vm and install it on a ubuntu distribution
- on mac, use python.

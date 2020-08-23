# Vagrant

To set up virtual machines in local

1. Install virtual box and vagrant

  ```ruby 
  brew cask install virtualbox
  brew cask insatll vagrant
  ```
2. Initialise vagrant with centos 

 ```ruby
 vagrant init centos/7
 ```
3. Start the vitual machine

```ruby
vagrant up
```

# Ansible

To use ansible as the provisioner, update the `config.vm.provision` in the VagrantFile and mention the ansible playbook
```ruby
config.vm.provision "ansible" do |ansible|
    ansible.playbook = "<name of playbook>"
  end
```

Explaining the elements in playbook

`yum` - module in ansible to install packages.
`become: yes` - run as a sudo user

Instead of Yum module, `command` can also be used
 ```ruby 
  command: yum install ntp
 ```
 
 When command is used, its executed for every run of the playbook, whereas the ansible modules `yum/service` indentifies the change in state compared to the previous one and perform required actions
 

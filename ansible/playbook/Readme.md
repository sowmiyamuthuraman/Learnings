# PLAYBOOKS

#### yaml separator
`---` is the yaml separator which allows us to have multiple yaml files in a single document
```ruby
    ---
    yaml 1
    ---
    yaml 2
```
Its a best practice to start the yaml file with the separator.

#### yaml boolean
in yaml yes/no, true/false, 0/1 can be used for booleans

#### with_items
similar to loops. When we use with_items ansible creates an `item` variable with which we can access the elements defined in with_items
```ruby
- name: Copy configuration files using copy module
      - copy:
          src: "{{item['src']}}"
          dest: "{{item['dest']}}"
          owner: root
          group: root
          mode: 0644
      - with_items:
          - src: httpd.conf
            dest: /etc/httpd/conf/httpd.conf
          - src: httpd-vhosts
            dest: /etc/httpd/conf/httpd-vhosts.conf
```
#### Run Playbook
```ruby
    ansible-playbook -i <inventory_file> <playbook_file>
```

#### Ansible inventory
`ansible-inventory` command can be used to get info about the inventory file.
```ruby
    ansible-inventory --list
```

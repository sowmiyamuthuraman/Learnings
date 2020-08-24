# Ansible

Inventory files can have groups by which different actions can be performed on different servers

```ruby
    [group_name]
    <list of servers>
```

A group can also contain a collection of groups
`children` keyword depicts that the group is comprised of a list of different other groups

```ruby
    [group_name:children]
    <group_name_1>
    <group_name_2>
```

To add variables to a group `vars` keyword should be used

```ruby
    [group_name:vars]
    ansible_ssh_user = "test"
```

Running adhoc command
```ruby
    ansible <group_name> -i <inventory_file> -a <adhoc_command>
```

1. get the hostname of all the servers in the common group
```ruby
    ansible common -i inventory -a "hostname"
```
result:
```ruby
ip | CHANGED | rc=0 >>
app1.test
ip | CHANGED | rc=0 >>
db.test
yes
ip | CHANGED | rc=0 >>
app2.test
```
Each time we run this command, we get the results in different order bcoz ansible forks itself and run command parallely.

To avoid this behaviour `-f` flag can be used

`-f (fork flag)` makes the task to occur synchronously

```ruby
    ansible common -i inventory -a "hostname" -f 1
```  

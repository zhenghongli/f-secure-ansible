# how to use this playbook
## there were already tested os versions
* Ubuntu 20.04
* RedHat Centos 7
* RedHat Centos 8

## build docker
```
docker build -t f-secure-ansible-deploy:0.0.1 .
```
## change hosts variable for your environment
```
vim ansible-playbook/hosts
```

1. specify the host's group of your environment.
```
    example:
    [ai-platform]
    172.31.235.218

    [ezmeral]
    #172.31.235.241
    #172.31.235.230
    #172.31.235.231
```

2. add variables for your ssh user, password, and your root password.
```
    example:
    [all:vars]
    ansible_connection=ssh
    ansible_user={SSH_USER}
    ansible_ssh_pass={SSH_PASSWORD}
    ansible_become_pass={ROOT_PASSWORD}
```
you can reference this tutorial:
https://chusiang.github.io/ansible-docs-translate/intro_inventory.html

## start ansible environment by docker
```
cd ansible-playbook

# you can change valume path by youself
docker run -ti --rm -v $(pwd):/ansible-playbook f-secure-ansible-deploy:0.0.1 /bin/bash
```
## start ansible-playbook
```
## in here you had entered docker's environment.
cd ansible-playbook
ansible-playbook site.yml
```









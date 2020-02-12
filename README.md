# infrastructure.raspberrypi.homeautomation
A set of ansible scripts to provision my home raspberry pi home automation hub.


## Debug
```
ansible all -i production -m ping
```

## Provision
```
ansible-playbook -i production site.yml
```
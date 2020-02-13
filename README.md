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

## TODO
 * Install OpenHab
 * Install Nginx on RaspPi
    * Configure to redirect *:80/motion -> motioneye
    * Configure to redirect *:80/openhab -> openhab
 * Setup SSL -- Let's Encrypt?
 * Setup Home DNS

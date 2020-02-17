# infrastructure.raspberrypi.homeautomation
A set of ansible scripts to provision my home raspberry pi home automation hub.

![Ansible Lint](https://github.com/alexlapinski/infrastructure.raspberrypi.homeautomation/workflows/Ansible%20Lint/badge.svg?branch=master)

## Debug
```
ansible all -i production -m ping
```

## Provision
```
ansible-playbook -i production site.yml
```

## Lint
```
ansible-lint site.yml
```

## TODO
 * Install OpenHab
 * Install Nginx on RaspPi
    * Configure to redirect *:80/openhab -> openhab
 * Setup SSL -- Let's Encrypt?
 * Further Refactor Structure & roles themselves
 * Setup Auto-Docs -> Github Pages (via actions)
 * Setup Molecule
   * Basic Molecule run on push
   * Build out tests for each role
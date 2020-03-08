# infrastructure.raspberrypi.homeautomation
A set of ansible scripts to provision my home raspberry pi home automation hub.

![Ansible Lint](https://github.com/alexlapinski/infrastructure.raspberrypi.homeautomation/workflows/Ansible%20Lint/badge.svg?branch=master)

## Local Setup
 * 1. Clone this repo
 * 2. Update Submodules
 * 3. Install Ansible dependencies
      ```sh
      ansible-galaxy install -r requirements.yml
      ```

## Setting new Secrets

### ```datadog_api_key```
1. Run the following command to encrypt your key.
   ```sh
    ansible-vault encrypt_string \
      --vault-password-file site.yml '<API_KEY>' \
      --name 'datadog_api_key'
   ```
2. Update the encrypted text in the ```site.yml``` file
   ```
   datadog_api_key: !vault |
      $ANSIBLE_VAULT;1.1;AES256
      <306137363962356.........
      .....ENCRYPTED_STRING....
      ....13736396137363936464>
   ```

## Debug
```
make run-debug
```

## Provision
```
make run
```

## Lint
```
make lint
```



## TODO
 * TODO: Extract EncryptedString to a vars file
 * Install Pi-Hole -- keeps hanging?
 * Setup SSL -- Let's Encrypt?
 * Further Refactor Structure & roles themselves
 * Setup Auto-Docs -> Github Pages (via actions)
 * Setup Molecule
   * Basic Molecule run on push
   * Build out tests for each role


  
# DNSMasq

Setup the DNSMasq DNS Server for local DNS.

## Requirements
None.

Role Variables
--------------

* ```upstream_dns_servers``` - A list of IPs to use as upstream DNS Servers, defaults to Google's Public DNS.
* ```dnsentries``` - A list of Local IP/Domain pairs to register on the local DNS Server.

Dependencies
------------
None

Example Playbook
----------------
```yaml
- hosts: servers
  roles:
    - name: ansible.role.dnsmasq
      vars:
        localdomain: local.net
        upstream_dns_servers:
          - 8.8.8.8
          - 8.8.4.4
        dnsentries:
          - domain: cam.local.net
            ip: 192.168.1.112
          - domain: hab.local.net
            ip: 192.168.1.112
```

License
-------

MIT

Author Information
------------------
Alex Lapinski <contact@alexlapinski.name>

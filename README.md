## Migration

## How to tackle?
1. Define Layers
2. Gather information (os version, installed packages, users & groups, services, containers, ports, crontabs, firewall rules, custom shebangs, volumes)
3. No more SSH changes (purley IaC)

## Installation
1. Inside /provisions is user & meta data, follow md file inside folder to compile into .iso
2. Bake iso into Linux iso, (Autoinstaller)
3. Make Mac address restrictions (Router - keep domain pointing to same address)

## Installation of Ansible
1. Stand in root
2. pip install -r requirements.txt

## Environment setup
1. cd ansible
2. ansible-playbook -i inventory.ini playbook.yml
3. ansible-playbook -i inventory.ini hardening.yml
4. ansible-playbook -i inventory.ini ufw.yml

## Future work

### Base
1. Ensure DHCP reservation | static ip
2. DNS servers defined
3. Reverse DNS sanity check
4. Disable ipv6 (if not used)
5. Ensure journald persistant
6. Log rotation configured
7. Health checks
8. Uptime monitoring

### Other
1. Fail2Ban for ssh
2. Disk usage alerts

### File systems
1. Separate partitions ie os, data log partition (media partition)

### Services
1. Enforce TLS
2. HSTS?
3. Stronger cipher suite
4. OCSP stapling

### TLS Automation
1. Certbot
2. Auto renewal

### Containers
1. Ensure docker + ufw compatibility
2. Remove outer unused ports
3. Separate networks

### System limits
1. Qol?

### Security
1. AppArmor enforcing
2. Unload unused kernel modules
3. Lock down /etc/systemcl.conf
4. Auditd
5. Automatic unattended upgrades

### Backups
1. What to backup
2. When to backup
3. Where to backup

### Secrets
1. Vaults?
2. No plain secrets!


### Reproduce
1. Should be able to spin up copy of server in case it dies
2. Auto installer (look into cloud config)
3. Automate everything (start to prod)
# Commands Used

## Install UFW

```sudo apt install ufw -y```

Purpose:
Install Uncomplicated Firewall.

---

## Enable Firewall

```sudo ufw enable```

Purpose:
Activate firewall protection.

---

## Allow SSH
```sudo ufw allow ssh```

or

```sudo ufw allow 22/tcp```

Purpose:
Permit remote administration.

---

## Deny HTTP
```sudo ufw deny http```

or

```sudo ufw deny 80/tcp```

Purpose:
Block web traffic.

---

## Allow HTTPS
```sudo ufw allow https```

or

```sudo ufw allow 443/tcp```

Purpose:
Permit secure web traffic.

---

## Deny Telnet

```sudo ufw deny 23/tcp```

Purpose:
Block insecure Telnet service.

---

## View Rules

```sudo ufw status verbose```

Best for: Auditing and reviewing system policies.

```sudo ufw status numbered```

Best for: Modifying or deleting specific firewall rules.

Purpose:
Display all active firewall rules.


## Running Automation Script

Change the script file to Executable

```chmod +x ufw_configuration.sh```

Run the script

```./ufw_configuration.sh```
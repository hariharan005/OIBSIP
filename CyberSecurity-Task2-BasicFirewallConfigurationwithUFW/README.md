# 🛡️ Task 2 - Basic Firewall Configuration with UFW

![Linux](https://img.shields.io/badge/OS-Kali%20Linux-blue)
![Firewall](https://img.shields.io/badge/Firewall-UFW-green)
![Status](https://img.shields.io/badge/Status-Completed-success)
![Difficulty](https://img.shields.io/badge/Difficulty-Beginner-orange)

---

# 📖 Overview

This project was completed as part of the **Oasis Infobyte Security Analyst Internship**.

The objective of this task was to configure and manage a basic firewall using **UFW (Uncomplicated Firewall)** on a Linux system. Firewall rules were created to allow and deny specific network traffic, helping secure the system by reducing unnecessary exposure to network-based threats.

The firewall configuration was tested and documented in a controlled lab environment.

---

# 🎯 Objectives

- Install and configure UFW
- Enable the firewall
- Allow SSH traffic
- Block HTTP traffic
- Configure additional security rules
- Verify active firewall rules
- Test blocked traffic
- Automate firewall configuration using a Bash script
- Document the firewall configuration and security analysis

---

# 🔥 What is a Firewall?

A firewall is a network security mechanism that monitors and filters incoming and outgoing network traffic based on predefined security rules.

Its primary purpose is to:

- Prevent unauthorized access
- Allow only trusted connections
- Reduce the attack surface
- Protect network services
- Enforce access control policies

---

# 🔥 What Does a Firewall Do?

A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predefined security rules. It acts as a protective barrier between trusted and untrusted networks, allowing legitimate traffic while blocking unauthorized or potentially malicious connections.

A properly configured firewall helps:

- Prevent unauthorized access
- Restrict unnecessary network services
- Reduce the system's attack surface
- Protect against common network-based attacks
- Enforce network security policies

In this project, **UFW (Uncomplicated Firewall)** was used to configure and manage firewall rules on a Linux system.

---

# 📋 Firewall Rules Explained

## ✅ Rule 1: Allow SSH (Port 22)

**Command**

```bash
sudo ufw allow ssh
```

### Purpose

Allows incoming SSH connections for secure remote administration.

### Why This Rule Was Chosen

SSH is the standard protocol for securely managing Linux systems remotely. Allowing SSH ensures administrators can access the system while maintaining encrypted communication.

---

## ❌ Rule 2: Deny HTTP (Port 80)

**Command**

```bash
sudo ufw deny http
```

### Purpose

Blocks incoming HTTP traffic on port **80**.

### Why This Rule Was Chosen

HTTP traffic is transmitted without encryption. Blocking HTTP demonstrates how a firewall can restrict unnecessary or insecure services and reduce exposure to potential web-based attacks.

---

## ✅ Rule 3: Allow HTTPS (Port 443)

**Command**

```bash
sudo ufw allow https
```

### Purpose

Allows encrypted web traffic over HTTPS.

### Why This Rule Was Chosen

HTTPS uses TLS encryption to protect data exchanged between clients and servers. Allowing HTTPS while blocking HTTP follows modern security best practices by encouraging secure communication.

---

## ❌ Rule 4: Deny Telnet (Port 23)

**Command**

```bash
sudo ufw deny 23/tcp
```

### Purpose

Blocks Telnet connections.

### Why This Rule Was Chosen

Telnet sends usernames, passwords, and other data in plain text, making it vulnerable to interception. Blocking Telnet helps prevent the use of an outdated and insecure remote access protocol.

---

# 🎯 Why These Rules Were Selected

The firewall rules were chosen to demonstrate both **allow** and **deny** policies while following common cybersecurity best practices.

The configuration allows only trusted and secure services required for normal system administration, while blocking services that are either insecure or unnecessary.

| Port | Action | Reason |
|------|--------|--------|
| 22 (SSH) | ✅ Allow | Enable secure remote administration |
| 80 (HTTP) | ❌ Deny | Block unencrypted web traffic |
| 443 (HTTPS) | ✅ Allow | Permit secure encrypted web communication |
| 23 (Telnet) | ❌ Deny | Block insecure legacy remote access |

This configuration follows the **Principle of Least Privilege**, where only necessary services are allowed, minimizing the attack surface and improving overall system security.

# 🛡️ What is UFW?

**UFW (Uncomplicated Firewall)** is a user-friendly command-line interface for managing Linux firewall rules using **iptables/nftables**.

It simplifies firewall management by allowing administrators to configure security rules using easy-to-understand commands.

---

# 🖥️ Lab Environment

| Machine | Operating System | Purpose |
|----------|-----------------|----------|
| Kali Linux | Kali Linux | Firewall Configuration |
| VirtualBox | Virtualization | Lab Environment |

---

# 🛠️ Tools Used

- Kali Linux
- UFW (Uncomplicated Firewall)
- Linux Terminal
- Bash
- Git
- GitHub

---

# 📂 Project Structure

```text
CyberSecurity-Task2-UFW-Firewall/
│
├── README.md
├── commands.md
├── ufw_configuration.sh
│
├── screenshots/
│   ├── install_ufw.png
│   ├── enable_ufw.png
│   ├── allow_ssh.png
│   ├── deny_http.png
│   ├── additional_rules.png
│   ├── status_verbose.png
│   └── testing.png
│
└── report/
    └── firewall_analysis.md
```

---

# 📥 Installing UFW

Update the package list:

```bash
sudo apt update
```

Install UFW:

```bash
sudo apt install ufw
```

Verify installation:

```bash
sudo ufw status
```

---

# 🚀 Firewall Rules Applied

## Enable Firewall

```bash
sudo ufw enable
```

Purpose:

Activates the firewall and starts enforcing all configured rules.

---

## Allow SSH

```bash
sudo ufw allow ssh
```

Purpose:

Allows remote administration through Secure Shell (SSH) on port **22**.

Reason:

Blocking SSH could prevent remote access to the system.

---

## Deny HTTP

```bash
sudo ufw deny http
```

Purpose:

Blocks incoming HTTP traffic on port **80**.

Reason:

Used to demonstrate traffic filtering and reduce exposure to unsecured web services.

---

## Allow HTTPS

```bash
sudo ufw allow https
```

Purpose:

Allows encrypted web traffic on port **443**.

Reason:

HTTPS provides secure communication using TLS encryption.

---

## Deny Telnet

```bash
sudo ufw deny 23/tcp
```

Purpose:

Blocks Telnet traffic.

Reason:

Telnet transmits data in plain text and is considered insecure.

---

# 📋 Firewall Rules Summary

| Rule | Action | Purpose |
|------|--------|----------|
| SSH (22) | ✅ Allow | Secure remote administration |
| HTTP (80) | ❌ Deny | Block unsecured web traffic |
| HTTPS (443) | ✅ Allow | Permit encrypted web traffic |
| Telnet (23) | ❌ Deny | Block insecure remote access |

---

# 🧪 Testing Method

After applying the firewall rules, the configuration was verified using:

```bash
sudo ufw status verbose
```

To confirm that the deny rule was effective, HTTP access was tested after blocking port **80**.

The connection attempt failed as expected, confirming that the firewall rule was successfully enforced.

---

# 📊 Security Analysis

The firewall configuration demonstrates the principle of **least privilege**, where only required services are allowed while unnecessary or insecure services are blocked.

### Security Benefits

- Reduces attack surface
- Prevents unauthorized network access
- Blocks insecure protocols
- Protects exposed services
- Improves overall system security

---

# ⚙️ Automation Script

A Bash script named:

```text
ufw_configuration.sh
```

was created to automate firewall configuration.

The script:

- Enables UFW
- Applies all firewall rules
- Displays the firewall status

This approach improves consistency and reduces manual configuration errors.

---

# 📸 Screenshots

The following screenshots are included:

- UFW Installation
- Firewall Enabled
- SSH Rule
- HTTP Deny Rule
- Additional Firewall Rules
- Firewall Status
- Traffic Testing

---

# 📚 Learning Outcomes

Through this project, I gained practical experience in:

- Linux Firewall Management
- UFW Configuration
- Network Access Control
- Firewall Rule Creation
- Network Security Best Practices
- Linux Command-Line Administration
- Bash Automation

---

# ⚖️ Ethical Considerations

This project was performed entirely within a personal laboratory environment using systems owned and controlled by me.

No unauthorized systems or production environments were modified or tested.

---

# 📖 References

- https://help.ubuntu.com/community/UFW
- https://manpages.ubuntu.com/manpages/latest/en/man8/ufw.8.html
- https://ubuntu.com/server/docs/security-firewall
- https://owasp.org/

---

# 👨‍💻 Author

**Hariharan C**

Security Analyst Intern

Oasis Infobyte

GitHub: https://github.com/hariharan005/

# 🔍 Task 1 - Basic Network Scanning with Nmap

![Linux](https://img.shields.io/badge/OS-Kali%20Linux-blue)
![Nmap](https://img.shields.io/badge/Tool-Nmap-green)
![Status](https://img.shields.io/badge/Status-Completed-success)
![Difficulty](https://img.shields.io/badge/Difficulty-Beginner-orange)

---

## 📖 Overview

This project was completed as part of the **Oasis Infobyte Security Analyst Internship**.

The objective of this task is to perform basic network reconnaissance using **Nmap** to identify:

- Live hosts
- Open TCP ports
- Running services
- Service versions
- Operating System details

The assessment was performed in a controlled lab environment using machines owned by me.

---

## 🎯 Objectives

- Install and verify Nmap
- Perform a basic port scan
- Perform service version detection
- Perform operating system detection
- Analyze discovered services
- Document potential security risks
- Produce a professional scan report

---

## 🖥️ Lab Environment

| Machine | Operating System | Purpose |
|----------|-----------------|----------|
| Kali Linux | Kali Linux 2026 | Attacker |
| Metasploitable2 | Ubuntu Linux | Target |
| VirtualBox | Virtualization | Lab Environment |

---

## 🛠️ Tools Used

- Kali Linux
- Nmap
- VirtualBox
- Linux Terminal

---

## 📂 Project Structure

```text
CyberSecurity-Task1-BasicNetworkScanningwithNmap/
│
├── README.md
├── commands.md
│
├── scans/
│   ├── basic_scan.txt
│   ├── service_version_scan.txt
│   ├── os_detection.txt
│   └── aggressive_scan.txt
│
├── report/
│   └── nmap_scan_results.txt
│
└── screenshots/
```

---

## 📥 Installing Nmap

Kali Linux comes with Nmap pre-installed.

To verify the installation:

```bash
nmap --version
```

Ubuntu

```bash
sudo apt update
sudo apt install nmap
```

Windows

Download from

https://nmap.org/download.html

---

## 🚀 Commands Executed

### Basic Scan

```bash
nmap <target-ip>
```

Purpose

Discover open TCP ports.

---

### Service Version Detection

```bash
nmap -sV <target-ip>
```

Purpose

Identify versions of running services.

---

### Operating System Detection

```bash
sudo nmap -O <target-ip>
```

Purpose

Identify the target operating system.

---

### Aggressive Scan

```bash
sudo nmap -A <target-ip>
```

Purpose

Perform version detection, OS detection, default NSE scripts, and traceroute.

---

## 📊 Scan Summary

| Scan | Status |
|-------|--------|
| Basic Scan | ✅ |
| Service Version Scan | ✅ |
| OS Detection | ✅ |
| Aggressive Scan | ✅ |

---

## 🔐 Security Analysis

The scan identified multiple running services on the target machine.

Each discovered service was analyzed to understand:

- Purpose
- Potential attack surface
- Possible security risks
- Recommendations

Detailed analysis is available inside

```text
report/nmap_scan_results.txt
```

---

## 📸 Screenshots

Example

- Nmap Installation
- Basic Scan
- Service Version Scan
- OS Detection
- Aggressive Scan

---

## 📚 Learning Outcomes

During this task I learned:

- Network reconnaissance
- TCP port scanning
- Service enumeration
- OS fingerprinting
- Security analysis
- Ethical use of Nmap

---

## ⚖️ Ethical Considerations

All scans performed in this project were conducted only against machines owned by me or intentionally vulnerable virtual machines within a private laboratory environment.

No unauthorized or production systems were scanned.

---

## 📖 References

- https://nmap.org/
- https://nmap.org/book/man.html
- https://owasp.org/

---

## 👨‍💻 Author

**Hariharan C**

Security Analyst Intern

Oasis Infobyte

GitHub: https://github.com/yourusername
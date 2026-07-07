# 🛠️ Commands Used - Task 1: Basic Network Scanning with Nmap

## Overview

This document contains all the Nmap commands used during the network scanning assessment, along with their purpose and expected output.

> **Target Machine:** Metasploitable2 (or your lab VM)
>
> **Attacker Machine:** Kali Linux

---

# 1. Verify Nmap Installation

## Command

```bash
nmap --version
```

### Purpose

Checks whether Nmap is installed and displays the installed version.

### Expected Output

- Nmap version
- Compiled libraries
- Supported features

---

# 2. Verify Network Connectivity

## Command

```bash
ping <target-ip>
```

### Example

```bash
ping 192.168.56.101
```

### Purpose

Checks whether the target machine is reachable before starting the scan.

### Expected Output

- ICMP Reply
- Packet statistics
- Round-trip time

---

# 3. Basic TCP Port Scan

## Command

```bash
nmap <target-ip>
```

### Example

```bash
nmap 192.168.56.101
```

### Purpose

Performs a basic scan to discover open TCP ports on the target system.

### Information Collected

- Open Ports
- Service Names
- Host Status

---

# 4. Service Version Detection

## Command

```bash
nmap -sV <target-ip>
```

### Example

```bash
nmap -sV 192.168.56.101
```

### Purpose

Identifies the version of services running on each open port.

### Information Collected

- Service Version
- Software Name
- Banner Information

---

# 5. Operating System Detection

## Command

```bash
sudo nmap -O <target-ip>
```

### Example

```bash
sudo nmap -O 192.168.56.101
```

### Purpose

Attempts to identify the operating system running on the target machine.

### Information Collected

- Operating System
- Device Type
- OS Accuracy

> **Note:** Root privileges are required for OS detection.

---

# 6. Aggressive Scan (Recommended)

## Command

```bash
sudo nmap -A <target-ip>
```

### Example

```bash
sudo nmap -A 192.168.56.101
```

### Purpose

Performs an advanced scan that combines multiple detection techniques.

### Information Collected

- Open Ports
- Service Versions
- Operating System
- Default NSE Scripts
- Traceroute

---

# 7. Save Scan Output

## Command

```bash
nmap <target-ip> | tee scans/basic_scan.txt
```

### Purpose

Displays the scan results on the terminal and saves them to a text file simultaneously.

---

# 8. Save Service Version Scan

## Command

```bash
nmap -sV <target-ip> | tee scans/service_version_scan.txt
```

### Purpose

Stores the service version scan results for later analysis.

---

# 9. Save OS Detection Scan

## Command

```bash
sudo nmap -O <target-ip> | tee scans/os_detection.txt
```

### Purpose

Saves the operating system detection results to a file.

---

# 10. Save Aggressive Scan

## Command

```bash
sudo nmap -A <target-ip> | tee scans/aggressive_scan.txt
```

### Purpose

Stores the aggressive scan output for documentation and reporting.

---

# Summary of Commands

| Command | Description |
|----------|-------------|
| `nmap --version` | Verify Nmap installation |
| `ping <IP>` | Test connectivity |
| `nmap <IP>` | Basic TCP port scan |
| `nmap -sV <IP>` | Service version detection |
| `sudo nmap -O <IP>` | Operating system detection |
| `sudo nmap -A <IP>` | Aggressive scan |
| `tee` | Save scan results to a file while displaying them |

---

# Notes

- All scans were performed only on systems owned by me or intentionally vulnerable virtual machines in a controlled lab environment.
- No unauthorized or production systems were scanned.
- Root privileges (`sudo`) are required for certain scan types such as OS detection and aggressive scanning.

---

# References

- https://nmap.org/
- https://nmap.org/book/man.html
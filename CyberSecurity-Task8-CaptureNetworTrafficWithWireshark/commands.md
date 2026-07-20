# Commands Used

---

## Verify Wireshark Installation

```bash
wireshark --version
```

Purpose:

Verify Wireshark is installed.

---

## Install Wireshark

```bash
sudo apt update
sudo apt install wireshark
```

Purpose:

Install Wireshark on Kali Linux.

---

## Add User to Wireshark Group

```bash
sudo usermod -aG wireshark $USER
```

Purpose:

Allow packet capture without running as root.

---

## Check Network Interface

```bash
ip addr
```

Purpose:

Identify available network interfaces.

---

## DNS Lookup

```bash
nslookup google.com
```

Purpose:

Generate DNS traffic.

---

## Generate ICMP Traffic

```bash
ping -c 5 google.com
```

Purpose:

Generate network traffic for analysis.

---

## Generate HTTP Traffic

```bash
curl http://neverssl.com
```

Purpose:

Create plaintext HTTP traffic for packet inspection.

---

## Generate HTTPS Traffic

```bash
curl https://google.com
```

Purpose:

Generate encrypted HTTPS traffic for comparison.

---

## Start Wireshark

```bash
wireshark
```

Purpose:

Launch Wireshark GUI.

---

## Wireshark Display Filters

### HTTP

```
http
```

Shows only HTTP packets.

---

### DNS

```
dns
```

Shows only DNS packets.

---

### TCP

```
tcp
```

Shows only TCP packets.

---

### TCP SYN Packets

```
tcp.flags.syn == 1
```

Shows packets with the SYN flag.

---

### TCP SYN-ACK Packets

```
tcp.flags.syn == 1 && tcp.flags.ack == 1
```

Shows SYN-ACK responses.

---

### HTTP GET Requests

```
http.request.method == "GET"
```

Displays only HTTP GET requests.

---

### DNS Queries

```
dns.flags.response == 0
```

Shows DNS request packets.

---

### DNS Responses

```
dns.flags.response == 1
```

Shows DNS reply packets.

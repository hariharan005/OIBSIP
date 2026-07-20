# Packet Analysis Report

## Tool

Wireshark

---

# Capture Summary

Capture Duration:
2 Minutes

Platform:
Kali Linux

Interface:
Wi-Fi Interface

---

# Protocol Analysis

## HTTP

Display Filter

```
http
```

### Observation

HTTP GET requests were successfully captured.

Visible information:

- Request Method
- URL
- Host
- User-Agent
- Source IP
- Destination IP

### Security Observation

HTTP traffic is transmitted without encryption.

Sensitive information could be intercepted if transmitted over HTTP.

---

## DNS

Display Filter

```
dns
```

### Observation

DNS packets showed successful domain resolution.

Information visible:

- Domain Name
- Query Type
- Response
- Resolved IP Address

---

## TCP

Display Filter

```
tcp
```

### TCP Three-Way Handshake

Packet 1

SYN

Client requests connection.

↓

Packet 2

SYN-ACK

Server acknowledges request.

↓

Packet 3

ACK

Client confirms.

Connection Established.

---

# Security Findings

| Finding | Risk |
|----------|------|
| HTTP Traffic | Plaintext communication |
| DNS Queries | Domain lookups visible |
| TCP Connections | Normal connection establishment |

---

# Conclusion

Wireshark provides deep visibility into network traffic.

The analysis demonstrated how HTTP traffic can expose sensitive information, while HTTPS protects communication using encryption.

The TCP Three-Way Handshake illustrated how reliable connections are established before data transmission.

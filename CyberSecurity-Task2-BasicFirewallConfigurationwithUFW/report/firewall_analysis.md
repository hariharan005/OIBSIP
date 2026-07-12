# Firewall Analysis

## Objective

Configure a Linux firewall using UFW.

## Rules Applied

| Rule | Action | Reason |
|--------|--------|---------|
|22/tcp|ALLOW|Permit SSH administration|
|80/tcp|DENY|Block unencrypted web traffic|
|443/tcp|ALLOW|Permit secure HTTPS traffic|
|23/tcp|DENY|Block insecure Telnet service|

## Testing

HTTP traffic was tested after applying the deny rule.

The firewall successfully blocked incoming HTTP requests, confirming correct operation.

## Security Benefits

- Reduces attack surface.
- Restricts unnecessary services.
- Prevents insecure protocols.
- Enforces network access control.

## Conclusion

UFW was successfully configured to allow required services while blocking unnecessary and potentially insecure traffic.
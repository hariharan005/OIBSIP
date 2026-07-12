#!/usr/bin/env bash

set -euo pipefail

# Modern, automated UFW configuration script
# Usage: ufw_configuration.sh [--auto] [--enable] [--disable] [--status]

# Options:
#   --auto: Automatically enable UFW after configuration
#   --enable: Enable UFW immediately
#   --disable: Disable UFW immediately
#   --status: Show UFW status after configuration

AUTO=false
SHOW_STATUS=false

# Parse command-line arguments
while (("$#")); do
	case "$1" in
		--auto) AUTO=true; shift ;;
		--enable) sudo ufw --force enable; exit 0 ;;
		--disable) sudo ufw --force disable; exit 0 ;;
		--status) SHOW_STATUS=true; shift ;;
		-h|--help) echo "Usage: $0 [--auto] [--enable] [--disable] [--status]"; exit 0 ;;
		*) echo "Unknown option: $1"; exit 2 ;;
	esac
done

# Check for root privileges
if [ "$EUID" -ne 0 ]; then
	echo "This script must be run as root. Please use sudo." >&2
	exit 1
fi

# Check if UFW is installed and install it if not
echo "Starting UFW configuration..."

# Function to check if a command exists
command_exists() { command -v "$1" >/dev/null 2>&1; }

# Install UFW if not present (supports apt)
if ! command_exists ufw; then
	if command_exists apt-get; then
		echo "Installing ufw via apt..."
		sudo apt-get update
		sudo apt-get install -y ufw
	else
		echo "ufw not found and automatic install is not supported for this distro. Please install ufw manually." >&2
		exit 1
	fi
fi

# Backup existing rules
TIMESTAMP=$(date +%Y%m%d%H%M%S)
sudo mkdir -p /var/backups/ufw
sudo cp -a /etc/ufw/user.rules /var/backups/ufw/user.rules.${TIMESTAMP} 2>/dev/null || true
sudo cp -a /etc/ufw/user6.rules /var/backups/ufw/user6.rules.${TIMESTAMP} 2>/dev/null || true

# Detect SSH port from sshd_config if possible
SSH_PORT=22
if [ -r /etc/ssh/sshd_config ]; then
	p=$(grep -Ei "^\s*Port\s+" /etc/ssh/sshd_config | tail -n1 | awk '{print $2}') || true
	if [[ $p =~ ^[0-9]+$ ]]; then SSH_PORT=$p; fi
fi

# Apply sensible defaults
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ${SSH_PORT}/tcp comment "allow ssh"
sudo ufw deny 23/tcp comment "deny telnet"
sudo ufw deny 80/tcp comment "deny http"
sudo ufw allow 443/tcp comment "allow https"

# Enable logging (low to avoid noise)
sudo ufw logging low || true

# Enable UFW if --auto or if disabled
if [ "$AUTO" = true ]; then
	echo "Auto mode: enabling ufw..."
	sudo ufw --force enable
fi

# Show status if requested
if [ "$SHOW_STATUS" = true ]; then
	sudo ufw status verbose
	sudo ufw status numbered
fi

echo "UFW configuration complete. Backups saved to /var/backups/ufw/"
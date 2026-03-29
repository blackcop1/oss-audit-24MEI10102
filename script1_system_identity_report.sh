#!/bin/bash
# Script 1: System Identity Report
# Author: TUSHAR SUDARSHEE | Reg No: 24MEI10102 | Course: Open Source Software
# Purpose: Print basic Linux identity details (distro, kernel, user, uptime, date)
# Concepts: variables, command substitution $(), formatting with echo

STUDENT_NAME="TUSHAR SUDARSHEE"
REG_NO="24MEI10102"
SOFTWARE_CHOICE="VLC Media Player"

# Kernel version from uname
KERNEL="$(uname -r)"

# Current user from whoami
USER_NAME="$(whoami)"

# Home directory from $HOME env var
HOME_DIR="$HOME"

# Pretty uptime (e.g., "up 2 hours, 5 minutes")
UPTIME_PRETTY="$(uptime -p)"

# Current date/time (custom format)
NOW="$(date '+%Y-%m-%d %H:%M:%S %Z')"

# Distro name from /etc/os-release (standard on Ubuntu)
if [ -f /etc/os-release ]; then
  # Load variables like PRETTY_NAME from the file
  # shellcheck disable=SC1091
  . /etc/os-release
  DISTRO="${PRETTY_NAME}"
else
  DISTRO="$(uname -s)"
fi

# License note (you can refine in the report text)
OS_LICENSE_MSG="Ubuntu is a GNU/Linux distribution; the Linux kernel is licensed under GPL-2.0-only, and userland packages use various FOSS licenses."

# Display a welcome-style report
echo "=================================================="
echo " Open Source Audit — $STUDENT_NAME ($REG_NO)"
echo "=================================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Distro          : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Home            : $HOME_DIR"
echo "Uptime          : $UPTIME_PRETTY"
echo "Date/Time       : $NOW"
echo "License Note    : $OS_LICENSE_MSG"

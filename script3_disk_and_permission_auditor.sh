#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: TUSHAR SUDARSHEE | Reg No: 24MEI10102
# Purpose: Show size + permissions/owner/group for key directories, then check VLC config dir.
# Concepts: arrays, for loop, du, ls -ld, awk, conditionals

# Array of important directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# VLC per-user config directory on Ubuntu (created after running VLC at least once)
VLC_CONFIG_DIR="$HOME/.config/vlc"

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    # Permissions + owner + group
    PERMS_OWNER_GROUP="$(ls -ld "$DIR" | awk '{print $1, $3, $4}')"

    # Disk usage (human readable). Errors suppressed for protected dirs.
    SIZE="$(du -sh "$DIR" 2>/dev/null | cut -f1)"

    echo "$DIR => $PERMS_OWNER_GROUP | Size: $SIZE"
  else
    echo "$DIR does not exist on this system"
  fi
done

echo ""
echo "VLC config directory check"
echo "--------------------------"

if [ -d "$VLC_CONFIG_DIR" ]; then
  echo "Found: $VLC_CONFIG_DIR"
  ls -ld "$VLC_CONFIG_DIR"
else
  echo "Not found yet: $VLC_CONFIG_DIR"
  echo "Tip: Run 'vlc' once, then re-run this script."
fi

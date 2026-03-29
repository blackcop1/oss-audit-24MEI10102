#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: TUSHAR SUDARSHEE | Reg No: 24MEI10102
# Purpose: Check whether VLC is installed, show version info, and print a philosophy note.
# Concepts: if-then-else, dpkg, grep, case

# Default package is vlc (because your chosen software is VLC)
PACKAGE="${1:-vlc}"

echo "Target package: $PACKAGE"
echo "------------------------------"

# Check if the package is installed on Ubuntu using dpkg
if dpkg -s "$PACKAGE" &>/dev/null; then
  echo "$PACKAGE is installed."

  # Show basic package metadata (version/description/homepage, etc.)
  dpkg -s "$PACKAGE" | grep -E 'Package|Version|Status|Homepage|Description' || true

  # If the command exists, also show program version output
  if command -v "$PACKAGE" >/dev/null 2>&1; then
    echo ""
    echo "Program-reported version:"
    "$PACKAGE" --version 2>/dev/null | head -n 3
  fi
else
  echo "$PACKAGE is NOT installed."
  echo "Install (Ubuntu): sudo apt update && sudo apt install -y vlc"
fi

echo ""
echo "Philosophy note:"
case "$PACKAGE" in
  vlc)
    echo "VLC: a community media player focused on openness, interoperability, and user control."
    ;;
  firefox)
    echo "Firefox: a browser built around the idea that the web should remain open."
    ;;
  git)
    echo "Git: transparent, distributed collaboration through version control."
    ;;
  python3|python)
    echo "Python: community-shaped language that emphasizes readability and sharing."
    ;;
  *)
    echo "Open-source tools can be inspected, automated, and improved by anyone."
    ;;
esac

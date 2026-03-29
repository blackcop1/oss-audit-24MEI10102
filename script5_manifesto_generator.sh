#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: TUSHAR SUDARSHEE | Reg No: 24MEI10102
# Purpose: Ask 3 questions, generate a paragraph, save it to a text file.
# Concepts: read, variables, string building, > and >>, date
# Alias concept demo (comment only): alias ll='ls -alF'

echo "Answer three questions to generate your manifesto."
echo ""

# Read interactive inputs
read -r -p "1. Name one open-source tool you use every day: " TOOL
read -r -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -r -p "3. Name one thing you would build and share freely: " BUILD

# Date for filename and text
DATE="$(date '+%Y-%m-%d')"
OUTPUT="manifesto_$(whoami)_${DATE}.txt"

# Build the paragraph using the user's answers
PARA="On ${DATE}, I’m reminded that open source is practical and personal. I use ${TOOL} because it supports collaboration and learning in the open. To me, freedom means ${FREEDOM}: the ability to study how tools work, improve them, and share improvements responsibly. If I could, I would build ${BUILD} and release it openly so others can adapt it and contribute back."

# Write output file (overwrite, then append)
echo "Open Source Manifesto" > "$OUTPUT"
echo "Author: TUSHAR SUDARSHEE (24MEI10102)" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "---------------------" >> "$OUTPUT"
echo "$PARA" >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"

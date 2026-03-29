#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

# Taking user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name
OUTPUT="manifesto_$(whoami).txt"

# Compose manifesto
echo "On $DATE, I believe that open source is about $FREEDOM." > $OUTPUT
echo "I regularly use tools like $TOOL, which show the power of community-driven development." >> $OUTPUT
echo "In the future, I would like to build and share $BUILD freely with others." >> $OUTPUT

# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

#!/bin/bash
# Script 3: Disk and Permission Auditor

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Checking for python
CONFIG_DIR="/etc/python3"

echo ""
echo "Checking Python config directory..."

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR exists with permissions: $PERMS"
else
    echo "$CONFIG_DIR does not exist"
fi

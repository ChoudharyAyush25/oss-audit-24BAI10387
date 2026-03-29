#!/bin/bash
# Script 1: System Identity Report
# Author: Ayush Choudhary | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Ayush Choudhary" 
SOFTWARE_CHOICE="Python"
 
# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Chosen - $SOFTWARE_CHOICE"
echo "================================"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""
echo "License: Linux is distributed under the GNU General Public License (GPL)"
echo "======================================"


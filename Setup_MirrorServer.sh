#!/bin/bash

# Backup the existing sources.list file
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup

# Update the sources.list file with KAIST mirror server
sudo bash -c 'cat > /etc/apt/sources.list <<EOF
deb https://ftp.kaist.ac.kr/ubuntu/ jammy main restricted universe multiverse
deb https://ftp.kaist.ac.kr/ubuntu/ jammy-updates main restricted universe multiverse
deb https://ftp.kaist.ac.kr/ubuntu/ jammy-backports main restricted universe multiverse
deb https://ftp.kaist.ac.kr/ubuntu/ jammy-security main restricted universe multiverse
EOF'

# Update the package list
sudo apt update

echo "Mirror server has been updated to https://ftp.kaist.ac.kr and the package list has been refreshed."

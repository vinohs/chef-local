#!/usr/bin/env bash

#Please install xcode on your system before running this. 

# Bash "strict" mode
set -euo pipefail
IFS=$'\n\t'

# Install the Command Line Tools
set +e
xcode-select -p
RETVAL=$?
set -e
if [[ "$RETVAL" -ne "0" ]]; then
    echo "Installing XCode Command Line Tools"
    xcode-select --install
    read -p "Continue? [Enter]"
fi

# Install brew
if [[ ! -x "/usr/local/bin/brew" ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Python 3
if [[ ! -d "/usr/local/Cellar/python3" ]]; then
    echo "Installing python 3"
    brew install python3
fi

/usr/local/bin/pip3 install -U pip setuptools wheel

# Install Ansible
if [[ ! -x "/usr/local/bin/ansible" ]]; then
    echo "Installing ansible"
    /usr/local/bin/pip3 install ansible 
fi

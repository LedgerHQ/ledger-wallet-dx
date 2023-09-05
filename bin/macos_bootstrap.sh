#!/bin/sh

if [[ $PATH != */opt/homebrew* ]]; then
    PATH=$PATH:/opt/homebrew/bin
fi

echo "\n -- Installing Ansible... --\n"
brew install ansible

echo "\n -- Configuring the Mac... --\n"
ansible-playbook ../ansible_osx.yml

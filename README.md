
# System setup with Ansible

This repository contains scripts to setup a system from scratch (linux and Mac). This way every developers on this project will have the same configuration and tools installed on their laptop


## Getting started

The following commands must be executed in a terminal first before launching any scripts : 

1. Installing [homebrew](https://brew.sh/) : 
```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Installing [ohmyzsh](https://ohmyz.sh/) :
 ```console
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Set ZSH as default shell :
 ```console
chsh -s /bin/zsh
```

4. Close and restart your terminal.

5. Check that ZSH is your default shell now :
 ```console
echo $0
```
has to return "-zsh"

6. Remove the actual file `.zshrc` in your `$HOME` folder 
 ```console
rm $HOME/.zshrc
```
7. Copy / paste the `.zshrc_template` file from this repository to your `$HOME` folder. :warning: Do not forget to rename it `.zshrc`

8. Copy / paste the `.zprofile_template` file from this repository to your `$HOME` folder. :warning: Do not forget to rename it `.zprofile`. You will need to replace credentials in this `.zprofile` file with Smartling credentials as soon as you have it.

9. Refresh your current terminal :
 ```console
source ~/.zshrc && source ~/.zprofile
```

## Installation

Once cloning this repository, a shell script : `bin/macos_bootstrap.sh` will perform the initial steps: 
1. Installing [ansible](https://www.ansible.com/)
2. Launching the ansible playbook

Execute the command :
 ```console
./bin/macos_bootstrap.sh
```
and then take a :coffee:. The installation will take some :hourglass:

## What's installed

The easiest way to understand what's installed is to read the contents of `ansible_osx.yml`. 

## Finalisation 

You will need to reload your current shell once the script has finished. To do so, execute the following command : 
 ```console
refreshBash
```
Now you're done and your laptop is ready :clap:

## Improvements

New tools and utilities installed through `ansible` can be added. To test your work you can use [utm](https://mac.getutm.app/) (already installed)

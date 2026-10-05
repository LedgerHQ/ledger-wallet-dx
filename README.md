
# System setup with Ansible

This repository contains scripts to setup a system from scratch (linux and Mac). This way every developers on this project will have the same configuration and tools installed on their laptop


## Getting started

The following commands must be executed in a terminal first before launching any scripts : 

Installing [homebrew](https://brew.sh/) : 
```console
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install [xcodes](https://github.com/XcodesOrg/xcodes):

```bash
brew install xcodesorg/made/xcodes
```

Use `xcodes` to install and select the Xcode version currently used by the team. For example, to install and select Xcode 16.2:

```bash
xcodes install 16.2 --select
```

Since installing Xcode requires Apple ID authentication and 2FA, you must run this command manually before running the bootstrap script. The `@ledger.fr` extension is currently unauthorized by Apple policies, so use your `.com` email alias instead.

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

You will need to reload your current shell once the script has finished. To do so, execute the following command:

```console
exec zsh
```

Also ensure you have opened **Android Studio** for the first time and completed the setup.

Now you're done and your laptop is ready :clap:

## Improvements

New tools and utilities installed through `ansible` can be added. To test your work you can use [utm](https://mac.getutm.app/) (already installed)

## Pre-installed zsh shortcuts

Once the installation is done, you can use the following shortcuts in your zsh terminal.

| Shortcut | Description |
| ------------------ | ------------------ |
| adbconnectwithwifi | Connect via wifi to a plugged in Android phone ([official doc](https://developer.android.com/tools/adb#connect-to-a-device-over-wi-fi)) |

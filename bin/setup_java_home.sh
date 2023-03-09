#!/bin/sh
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

javahome=$(/usr/libexec/java_home)
exportcommand="export JAVA_HOME=${javahome}"
echo "${exportcommand}" > ~/.zshenv
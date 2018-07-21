#!/bin/bash

OLD_CREDENTIALS=crdentials

function check_installed_deps{
mvn -version
gradle -version
}

#Install AWS Utils
pip3 install chalice boto3 aws --user

#Copy Different AWS profiles in ~/.aws/credentials
#cp $OLD_CREDENTIALS ~/.aws/credentials

check_installed_deps

cd /tmp/

#Install Gradle
echo "Installing Gradle ..."
sudo dnf install gradle -y
echo "Gradle Installed"

#Install Maven
echo "Installing Maven ..."
time sudo dnf install maven -y
echo "Maven Installed"


# Install Wallpapers
sudo dnf install f25-backgrounds-extras-gnome -y

# Install Virtualbox
sudo dnf install VirtualBox -y

# Install Vagrant
mkdir everyday-scripts/vagrant

# Install Vagrant DB
echo "Installing Vagrant DB"
mkdir everyday-scripts/vagrant/db
cd mkdir everyday-scripts/vagrant/db/
vagrant init wegtam/db-tester --box-version 2017.02.17
vagrant up
echo "Vagrant DB Up and Running"

#!/bin/bash

# Install Jenkins on Ubuntu/Debian
sudo apt-get -y update
# Install Java
sudo apt install -y fontconfig openjdk-21-jre
java -version

# Add Jenkins repository
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add Jenkins repository to sources
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Install Jenkins
sudo apt-get -y update
sudo apt install -y jenkins

# Manage Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
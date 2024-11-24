#!/bin/bash

sudo apt update -y

# Require for terraform installation
sudo apt install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key:
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Add the HashiCorp repository to your system:
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update the package list to include the new repository:
sudo apt update -y

# Install awscli and terraform
sudo apt install awscli terraform -y

# Verify installation
aws --version && terraform -v
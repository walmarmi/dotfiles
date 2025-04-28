#!/bin/bash

# Print error message (ChatGPT)
function error_exit {
	echo "[ERROR] $1"
	exit 1
}

# check for root
if [ "$EUID" -ne 0 ];then 
	error_exit "Please run as root"
fi

# if apt is not installed
if ! command -v apt >/dev/null 2>&1; then
	echo "Apt not installed. Installing Apt now."
	sudo apt-get update
	sudo apt-get install apt
	
else
	echo "Apt already installed."
fi

# provide information to user

echo "Script running will install the AWS Command Line Interface."
read -p "Proceed? (y/n)" choice
if [[ "$choice" != "y" && "$choice" != "Y" ]]; then
	echo "Installation canceled."
	exit
fi

# check aws in system
if command -v aws >/dev/null 2>&1; then
	echo "AWS already installed."
	exit
fi

apt update -y
apt install -y curl unzip

# download aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# unzip installer
unzip -u awscliv2.zip

# run the program
./aws/install


if command -v aws >/dev/null 2>&1; then
	echo "Installation complete!"
	echo "To test: aws --version"
else
	error_exit "Installation failed"
fi







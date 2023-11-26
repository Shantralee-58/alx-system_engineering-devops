# SSH Configuration Scripts
This repository contains Bash scripts and configurations related to SSH setup and configuration. The scripts are designed to work on Ubuntu 20.04 LTS.

Table of Contents
Scripts
0-use_a_private_key
1-create_ssh_key_pair
2-ssh_config
Setup Instructions
Server Information
Contributing
License

# Scripts
0-use_a_private_key
This script establishes an SSH connection to the server using the private key ~/.ssh/school. It uses single-character flags for ssh and connects with the user ubuntu.
./0-use_a_private_key

# 1-create_ssh_key_pair
This script creates an RSA key pair with a specified passphrase. The private key is saved as school and the public key as school.pub.
./1-create_ssh_key_pair

# 2-ssh_config
This script configures the local SSH client to use the private key ~/.ssh/school and to refuse authentication using a password.

# Server Information
Name	Username	IP	State
312099-web-01	ubuntu	your_ip	(pending)
Replace your_ip with the actual IP address of your server.

# Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.

# License
This project is licensed under the MIT License - see the LICENSE file for details.

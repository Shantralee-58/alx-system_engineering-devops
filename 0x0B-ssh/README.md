# DevOps - SSH Configuration

## Overview

This project contains scripts and configurations for managing SSH connections and security.

## Table of Contents

1. [Scripts](#scripts)
    - [0-use_a_private_key](#0-use_a_private_key)
    - [1-create_ssh_key_pair](#1-create_ssh_key_pair)
    - [2-ssh_config](#2-ssh_config)
    - [3-let_me_in](#3-let_me_in)
    - [100-puppet_ssh_config](#100-puppet_ssh_config)
2. [Description](#description)
3. [Usage](#usage)
4. [Server Information](#server-information)
5. [Contributing](#contributing)
6. [License](#license)

## Scripts

### 0-use_a_private_key

This script connects to the server using ssh with a private key.

./0-use_a_private_key
1-create_ssh_key_pair
This script creates an RSA key pair with a passphrase.

./1-create_ssh_key_pair

2-ssh_config
Your SSH client configuration file must be configured to use the private key ~/.ssh/school and refuse password authentication.

# Include the content of your SSH configuration file here
3-let_me_in
To allow connection using the provided SSH public key.

# Add the following public key to the server's ~/.ssh/authorized_keys file
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN

100-puppet_ssh_config
Using Puppet to set up your client SSH configuration file.
sudo puppet apply 100-puppet_ssh_config.pp
Description
This project aims to provide a secure and efficient configuration for SSH connections, including key pair generation, client configuration, and server access setup.

Usage
Execute the scripts in the order specified above.
Follow any additional instructions provided in the script comments.
Update your server information in the Server Information section.

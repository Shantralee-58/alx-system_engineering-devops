# Configuration Management Project

## Introduction

This project involves using Puppet for configuration management tasks. The tasks include creating a file, installing a package, and executing a command.

## Project Structure

- **0x0A-configuration_management/**
  - **0-create_a_file.pp**: Puppet manifest to create a file in /tmp.
  - **1-install_a_package.pp**: Puppet manifest to install Flask package using pip3.
  - **2-execute_a_command.pp**: Puppet manifest to execute a command to kill a process named killmenow.
  - **README.md**: Project documentation.

## Requirements

- Ubuntu 20.04 LTS
- Puppet version 5.5
- Puppet lint version 2.1.1
- Ruby version 2.7
- Ensure all files end with a new line

## Setup

1. Install Puppet:
   ```bash
   $ apt-get install -y ruby=1:2.7+1 --allow-downgrades
   $ apt-get install -y ruby-augeas
   $ apt-get install -y ruby-shadow
   $ apt-get install -y puppet

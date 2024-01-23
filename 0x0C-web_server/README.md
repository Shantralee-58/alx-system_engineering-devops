# Web Server Configuration Project

This project includes a set of Bash scripts and configurations for setting up and configuring a web server on Ubuntu 16.04 LTS. It covers tasks such as transferring files, installing Nginx, setting up a domain name, implementing redirection, and configuring a custom 404 page.

## Tasks

### Task 0: Transfer a file to your server

- [Script: 0-transfer_file](./0x0C-web_server/0-transfer_file)
- Transfers a file from the client to a server using scp.
- Usage: `0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`

### Task 1: Install Nginx web server

- [Script: 1-install_nginx_web_server](./0x0C-web_server/1-install_nginx_web_server)
- Installs Nginx on the web-01 server, configures it to listen on port 80, and displays "Hello World!" when queried at root.
- Usage: `./1-install_nginx_web_server`

### Task 2: Setup a domain name

- [Script: 2-setup_a_domain_name](./0x0C-web_server/2-setup_a_domain_name)
- Provides the domain name for the web-01 server.
- Example domain: `myschool.tech`

### Task 3: Redirection

- [Script: 3-redirection](./0x0C-web_server/3-redirection)
- Configures Nginx to redirect /redirect_me to another page with a "301 Moved Permanently" status.
- Usage: `./3-redirection`

### Task 4: Not found page 404

- [Script: 4-not_found_page_404](./0x0C-web_server/4-not_found_page_404)
- Configures Nginx to have a custom 404 page with the message "Ceci n'est pas une page."
- Usage: `./4-not_found_page_404`

### Task 5: Install Nginx web server (w/ Puppet)

- [Puppet Manifest: 7-puppet_install_nginx_web_server.pp](./0x0C-web_server/7-puppet_install_nginx_web_server.pp)
- Installs and configures Nginx using Puppet, includes a 301 redirect for /redirect_me.

## Usage

1. Clone the repository: `git clone https://github.com/Shantralee-58/alx-system_engineering-devops.git`
2. Navigate to the web server directory: `cd alx-system_engineering-devops/0x0C-web_server`
3. Run the desired script or Puppet manifest as per the task instructions.

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Your contributions are welcome!.

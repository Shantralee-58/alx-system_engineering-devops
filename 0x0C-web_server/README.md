# Web Server Configuration

This script installs and configures the Nginx web server on an Ubuntu machine.

## Requirements:

- Install Nginx on your web-01 server.
- Nginx should be listening on port 80.
- When querying Nginx at its root / with a GET request using curl, it must return a page that contains the string Hello World!
- The script should be run on the server itself.

## Usage:

```bash
root@sy-web-01$ ./1-install_nginx_web_server > /dev/null 2>&1
root@sy-web-01$ curl localhost
Hello World!

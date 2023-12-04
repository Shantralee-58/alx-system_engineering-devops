# DevOps Project - Load Balancer

# Description
This project involves configuring web servers and setting up a load balancer for optimal traffic distribution. The tasks are aimed at automation and efficient server management using Bash scripts, HAproxy, and Puppet.

# Author
Idah Khumalo

# Project Structure
0-custom_http_response_header: Bash script to configure Nginx on web servers (web-01 and web-02) to add a custom HTTP header.

1-install_load_balancer: Bash script to install and configure HAproxy on the load balancer (lb-01) for distributing traffic among web-01 and web-02.

2-puppet_custom_http_response_header.pp: Puppet script to automate the configuration of a new Ubuntu machine, adding a custom HTTP header to Nginx responses.

# Usage
1. Clone the repository:
https://github.com/Shantralee-58/alx-system_engineering-devops.git
cd alx-system_engineering-devops/0x0F-load_balancer

2. Execute the scripts in the respective tasks:
./0-custom_http_response_header
./1-install_load_balancer
sudo puppet apply 2-puppet_custom_http_response_header.pp

# Notes
. Ensure that your servers are named [STUDENT_ID]-web-01, [STUDENT_ID]-web-02, and [STUDENT_ID]-lb-01.

. Follow the provided tutorials if server hostnames are not configured correctly.

. Check for any additional task-specific instructions in each script's comments.

Feel free to reach out if you have any questions or encounter issues!

#!/usr/bin/env bash
# This script fixes Apache in the Docker container to return a page containing "Hello Holberton" when querying the root.

# Update the package list
apt-get update

# Install Apache
apt-get install -y apache2

# Start Apache
service apache2 start

# Create a simple HTML page with the content "Hello Holberton"
echo "Hello Holberton" > /var/www/html/index.html

# Exit the container
exit

# Web Stack Debugging Project

## Overview
This project is part of the Webstack debugging series, where the goal is to fix issues in a given webstack. In this specific task, the objective is to get Apache to run on a Docker container and return a page containing "Hello Holberton" when querying the root.

## Docker Container Information
- Image: holbertonschool/265-0
- Port Mapping: 8080:80

## Task Description
After starting the Docker container, querying the port 8080 does not return the expected page but an error message. The mission is to connect to the container, identify the issue, and fix it to ensure that curling port 80 returns a page containing "Hello Holberton."

## Solution
To address the issue, a Bash script (`0-give_me_a_page.sh`) has been provided. This script updates the package list, installs Apache, starts Apache, creates a simple HTML page with the content "Hello Holberton," and exits the container.

## Instructions
1. Clone this repository.
2. Navigate to the project directory.
3. Run the provided Bash script to fix the Apache configuration.

# Author
Idah Khumalo <lindiwekhumalo833@gmail.com>

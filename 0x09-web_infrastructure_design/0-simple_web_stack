https://i.im.ge/2022/08/21/OU3M9z.My-First-Board.jpg


## Infrastructure Overview
This setup uses **one physical/virtual server** that contains:
- **Nginx (Web Server)**: Handles HTTP requests and serves static files. Forwards dynamic requests to the application server.
- **Application Server**: Runs the codebase to generate dynamic content for users.
- **MySQL Database**: Stores and retrieves data for the application.
- **Application Files (Code Base)**: The website's code, scripts, and configurations.

The website is accessible via:
- **Domain Name**: `foobar.com` with a `www` subdomain pointing to `8.8.8.8` using a DNS A record.

## Process Flow
1. User enters `www.foobar.com` in their browser.
2. DNS resolves the `www` A record to `8.8.8.8`.
3. Browser sends an HTTP request to the server.
4. Nginx handles the request:
   - Serves static files directly.
   - Forwards dynamic requests to the application server.
5. The application server interacts with the MySQL database if needed.
6. The response is returned to the user.

## Component Roles
- **Server**: Physical or virtual machine hosting all components.
- **Domain Name**: Maps human-readable names to server IP addresses.
- **DNS A Record**: Maps `www.foobar.com` to `8.8.8.8`.
- **Web Server (Nginx)**: Manages incoming requests and serves web content.
- **Application Server**: Executes the business logic/code.
- **Database (MySQL)**: Stores persistent application data.
- **Code Base**: Application logic, templates, and configurations.

## Issues with This Setup
1. **SPOF (Single Point of Failure)**: If the server goes down, the entire site becomes unavailable.
2. **Maintenance Downtime**: Restarting services or updating code causes temporary unavailability.
3. **Scalability Limitations**: Cannot handle high traffic without upgrading the single server.

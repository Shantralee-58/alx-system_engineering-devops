https://i.imgur.com/t33iKQB.jpg

## Infrastructure Overview
This setup builds on Task 1’s three-server infrastructure by adding **security** and **monitoring** features:
- **3 Firewalls**:
  - Between the internet and the load balancer.
  - Between the load balancer and the web/application servers.
  - Between the application servers and the database server.
- **SSL Certificate**: Enables HTTPS for encrypted communication between clients and the load balancer.
- **Monitoring Clients**: Installed on each server to collect performance and security data for a monitoring service (e.g., Sumo Logic).

## Process Flow
1. User enters `https://www.foobar.com` in their browser.
2. DNS resolves the domain name to the load balancer’s IP.
3. HTTPS request reaches the load balancer, which decrypts traffic using the SSL certificate.
4. Load balancer forwards the request to one of the web/application servers.
5. Web/application server processes the request and communicates with the database as needed.
6. Monitoring clients log activity, send metrics (CPU, memory usage, QPS, errors) to the monitoring service.

## Why Additional Elements Were Added
- **Firewalls**: Restrict unauthorized access and filter malicious traffic.
- **SSL Certificate**: Encrypts traffic to protect data in transit from eavesdropping and tampering.
- **Monitoring Clients**: Provide real-time visibility into performance, security, and uptime.

## Key Concepts
- **Firewalls**: Control incoming and outgoing network traffic based on security rules.
- **HTTPS**: Uses SSL/TLS encryption to secure data between the browser and server.
- **Monitoring**: Tracks metrics like uptime, request rates, error rates, and resource usage.
- **QPS (Queries Per Second)** Monitoring: Configure the monitoring tool to log the number of handled HTTP requests per second from the web server.

## Issues with This Setup
1. **SSL Termination at Load Balancer**: Traffic between load balancer and servers may be unencrypted, posing a security risk.
2. **Single MySQL Write Node**: If the primary node fails, write operations cannot be performed.
3. **Identical Server Components**: All servers have the same role, which can make scaling or specialized troubleshooting harder.

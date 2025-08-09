https://i.im.ge/2022/08/21/OU3RB9.1-distributed-web-infrastructure.jpg

## Infrastructure Overview
This setup uses **three servers**:
1. **Server 1** – Web Server (Nginx)
2. **Server 2** – Application Server
3. **Server 3** – Database Server (MySQL)

Additional components:
- **Load Balancer (HAProxy)**: Distributes incoming traffic between the web and application servers.
- **Application Files (Code Base)**: Hosted on both web and application servers.
- **MySQL Database Cluster**: Primary (write) and Replica (read) nodes.

## Process Flow
1. A user enters `www.foobar.com` in their browser.
2. DNS resolves the domain name to the load balancer’s public IP.
3. The load balancer distributes requests between the web and application servers using a **Round Robin** algorithm (requests go to each server in turn).
4. The chosen web server handles static content or forwards dynamic requests to the application server.
5. The application server interacts with the database:
   - **Writes** go to the Primary MySQL node.
   - **Reads** can be served by the Replica node.
6. The result is sent back through the load balancer to the user.

## Why Additional Elements Were Added
- **Load Balancer**: Prevents overloading a single server and increases availability.
- **Extra Servers**: Distributes the workload for better performance and fault tolerance.
- **Primary–Replica Database Setup**: Improves read performance and adds redundancy for database availability.

## Key Concepts
- **Round Robin Algorithm**: Load balancer sends requests to servers sequentially, looping back to the first server after the last.
- **Active–Passive vs. Active–Active**:
  - **Active–Active**: All nodes handle requests simultaneously.
  - **Active–Passive**: Only the active node handles requests; the passive one is on standby.
- **Primary–Replica Cluster**:
  - **Primary Node**: Handles all writes and propagates changes to replicas.
  - **Replica Node**: Read-only copy, used to offload read traffic from the primary.

## Issues with This Setup
1. **SPOF**: If the load balancer fails, all traffic stops.
2. **Security**: No firewall or HTTPS configured, leaving traffic unencrypted and servers exposed.
3. **No Monitoring**: No system in place to detect issues or performance drops.

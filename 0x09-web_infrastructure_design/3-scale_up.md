https://i.imgur.com/kqexZ40.jpg


## Infrastructure Overview
This setup improves scalability and availability by adding:
- **1 Additional Load Balancer (HAProxy)**: Configured in a cluster with the first load balancer for redundancy.
- **Dedicated Component Servers**:
  - Web Servers (Nginx) on their own machines.
  - Application Servers on separate machines.
  - Database Servers (MySQL) separated into Primary and Replica nodes.

## Process Flow
1. User enters `https://www.foobar.com` in their browser.
2. DNS resolves to the **virtual IP** of the load balancer cluster.
3. If one load balancer fails, the other takes over seamlessly.
4. The active load balancer distributes traffic to the web servers using a configured algorithm (e.g., Round Robin or Least Connections).
5. Web servers handle static requests; dynamic requests are sent to application servers.
6. Application servers process business logic and interact with the database:
   - Writes go to the Primary MySQL node.
   - Reads can be served by the Replica node.

## Why Additional Elements Were Added
- **Second Load Balancer**: Eliminates the load balancer as a single point of failure.
- **Dedicated Servers for Components**: Improves performance and makes scaling easier — each tier (web, app, DB) can be scaled independently.
- **Database Separation**: Improves read/write performance and fault tolerance.

## Key Concepts
- **Load Balancer Clustering**: Two or more load balancers share a virtual IP and health-check each other; if one fails, the other becomes active automatically.
- **Component Separation**: Allows each layer of the stack to be optimized and scaled individually.
- **Database Replication**: Ensures redundancy and improves query performance by splitting reads/writes.

## Issues with This Setup
1. **Complexity**: More components require more maintenance and configuration.
2. **Cost**: Additional servers and infrastructure increase operational expenses.
3. **Database Write Bottleneck**: Writes still depend on a single primary node; if it fails, manual failover is needed.

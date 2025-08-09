# ALX System Engineering & DevOps Project: Web Infrastructure Design

## Overview

This project covers designing web infrastructure from a simple single-server setup to a scalable, secure, and monitored multi-server architecture. It aims to build foundational knowledge about web stacks, system redundancy, load balancing, security, and monitoring.

The project is divided into four tasks, progressively increasing in complexity and scope.

---

## Learning Objectives

By the end of this project, you will be able to:

- Draw and explain different web infrastructure architectures.
- Understand the roles of servers, load balancers, firewalls, and databases.
- Explain system redundancy, high availability, and SPOF (Single Point of Failure).
- Understand DNS records, HTTPS, and monitoring tools.
- Describe active-active vs. active-passive setups.
- Explain the differences between web servers and application servers.
- Understand scaling strategies and security considerations.

---

## Tasks

### 0. Simple Web Stack  
**Goal:** Design a single-server web infrastructure for www.foobar.com.  
**Components:**  
- 1 server with Nginx web server  
- Application server on the same machine  
- MySQL database  
- Domain name with www DNS record pointing to IP 8.8.8.8  
**You must explain:**  
- What is a server, DNS, and DNS record type for www  
- Roles of web server, app server, and database  
- Communication between server and user  
- Limitations: SPOF, downtime, scaling issues  

**Diagram:**  
[Simple Web Stack Diagram](https://i.im.ge/2022/08/21/OU3M9z.My-First-Board.jpg)  
**Repo location:** `0x09-web_infrastructure_design/0-simple_web_stack`

---

### 1. Distributed Web Infrastructure  
**Goal:** Design a three-server infrastructure with load balancing for www.foobar.com.  
**Components:**  
- 2 servers + 1 load balancer (HAProxy)  
- Web server (Nginx), application server, MySQL database  
- Load balancer distributing traffic  
**You must explain:**  
- Why extra components are added  
- Load balancing algorithm used  
- Active-Active vs Active-Passive setups  
- Database Primary-Replica cluster and roles  
- Remaining SPOFs and security gaps  

**Diagram:**  
[Distributed Web Infrastructure Diagram](https://i.im.ge/2022/08/21/OU3RB9.1-distributed-web-infrastructure.jpg)  
**Repo location:** `0x09-web_infrastructure_design/1-distributed_web_infrastructure`

---

### 2. Secured and Monitored Web Infrastructure  
**Goal:** Design a secure and monitored three-server infrastructure.  
**Components:**  
- 3 firewalls protecting servers  
- SSL certificate for HTTPS  
- Monitoring clients collecting server data  
**You must explain:**  
- Role of firewalls and HTTPS  
- Monitoring and data collection  
- Issues with SSL termination at load balancer  
- Risks of single writable MySQL server  
- Problems with identical server setups  

**Diagram:**  
[Secured and Monitored Infrastructure Diagram](https://i.imgur.com/t33iKQB.jpg)  
**Repo location:** `0x09-web_infrastructure_design/2-secured_and_monitored_web_infrastructure`

---

### 3. Scale Up (Advanced)  
**Goal:** Design a scalable infrastructure with separated components and load balancer cluster.  
**Components:**  
- Dedicated servers for web, application, and database  
- HAProxy load balancers configured as a cluster for redundancy  
**You must explain:**  
- Reasons for splitting components  
- Load balancer cluster benefits and setup  
- How this architecture supports scalability and fault tolerance  

**Diagram:**  
[Scale Up Infrastructure Diagram](https://i.imgur.com/kqexZ40.jpg)  
**Repo location:** `0x09-web_infrastructure_design/3-scale_up`

---

## General Requirements

- Use a README.md file at the root of the project folder.
- For each task, provide a whiteboard diagram screenshot hosted online.
- Add the screenshot URL in the task’s answer file.
- Push your solution to GitHub and provide the GitHub link.
- Be ready to whiteboard and explain your designs without notes during reviews.
- Write everything in English to build technical communication skills.
- Avoid plagiarism; all work must be your own.

---

## Resources

- Network basics concepts  
- Server concepts  
- Web server concepts  
- DNS and DNS record types  
- Load balancers and distribution algorithms  
- High availability clusters (active-active/active-passive)  
- HTTPS and SSL certificates  
- Firewalls  
- Monitoring tools and metrics  
- Database replication and scaling  

---

## Summary

This project guides you through progressively designing robust web infrastructures that address availability, scalability, security, and monitoring challenges found in real-world systems. Completing it will give you the confidence to explain and build web stacks suitable for modern applications.

---

## Repository

**GitHub repository:**  
https://github.com/Shantralee-58/alx-system_engineering-devops  
**Project directory:** `0x09-web_infrastructure_design`

---

Feel free to reach out if you have any questions or need assistance!

---

*Project team: Idah Khumalo*  
*Project duration: August 4, 2025 - August 11, 2025*  


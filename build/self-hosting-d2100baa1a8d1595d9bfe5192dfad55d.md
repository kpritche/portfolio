# Self-Hosting Infrastructure

Private cloud infrastructure I run for data sovereignty, security, and somewhere to test new technology before it touches anything that matters. It covers server administration, network security, and deployment practice.

---

## Why Self-Host

Two reasons, and they reinforce each other:

- **Data Privacy:** Full ownership and control over personal and professional data, on hardware I can see.
- **Continuous Learning:** A lab where new software, networking configurations, and automation scripts can fail without consequence.

---

## Core Infrastructure

### Server Administration
- **Operating Systems:** Extensive experience with Linux distributions (primarily Debian and Ubuntu Server).
- **Virtualization and Containerization:** Running Proxmox VE with LXC containers, plus Docker and Docker Compose, to manage isolated, portable service environments.
- **Hardware Management:** Maintenance of physical servers, including performance monitoring and resource allocation.

### Network and Security
- **Secure Remote Access:** Tailscale mesh networking for encrypted, remote management without exposing services to the public internet.
- **Network Segmentation:** UniFi-managed VLANs and firewall rules to isolate sensitive services.

### Data Management
- **Automated Backups:** Scheduled, encrypted backup routines to both local and off-site storage.
- **File Storage and Sync:** Collaborative file management so the same data is available on every device without manual copying.

---

## Technical Standards

Every component is managed to the same principles:
- **Infrastructure as Code (IaC):** Using configuration files and scripts to ensure reproducible environments.
- **Monitoring and Alerting:** Real-time monitoring of system health and resource utilization.
- **Security Audits:** Regular reviews of network logs, firewall rules, and service configurations.

---

[Back to Automation Overview](overview.md) | [Back to Portfolio Home](../index.md)

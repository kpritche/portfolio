# Network Infrastructure for Production

## High-Reliability Systems

In a live environment, the network is as critical as the power. I design and maintain **Ubiquiti UniFi** and **EdgeRouter** systems specifically tailored for the high demands of production-grade traffic (Dante, NDI, Control).

### Network Architecture

- **VLAN Segmentation:** Isolating Dante (Audio), Control (Bitfocus/MIDI), and Management traffic to ensure stability and security.
- **Redundancy:** Implementing STP/RSTP (Spanning Tree Protocol) correctly for redundant physical links without broadcast storms.
- **Secure Remote Access:** Deploying Site-to-Site VPNs (L2TP/WireGuard) for remote system monitoring and troubleshooting.

## Wireless Infrastructure

- **High-Density Deployment:** Managing 2.4GHz and 5GHz (and 6GHz) spectrum in crowded environments to ensure reliable control of mobile mixing units (iPad/Tablet).
- **Guest Access:** Captive portals and client isolation for attendee Wi-Fi without impacting production performance.

## Hardware Expertise

- **UniFi Dream Machine (UDM-Pro/SE):** Centralized management for security, routing, and switching.
- **UniFi Pro/Enterprise Switches:** Utilizing 10Gbps SFP+ uplinks for backbone connectivity.
- **EdgeSwitch/EdgeRouter:** Advanced L3 routing and carrier-grade switching for complex topologies.

---

[Back to Production Overview](overview.md)

# Network Infrastructure for Production

## High-Reliability Systems

In a live environment, the network is as critical as the power. I design and maintain **Ubiquiti UniFi** and **EdgeRouter** systems specifically tailored for the high demands of production-grade traffic (Dante, NDI, Control).

### Network Architecture

- **VLAN Segmentation:** Isolating Dante (Audio), Control (Bitfocus/MIDI), and Management traffic to ensure stability and security.
- **Redundancy:** Implementing STP/RSTP (Spanning Tree Protocol) correctly for redundant physical links without broadcast storms.
- **Secure Remote Access:** Deploying WireGuard-based VPNs for remote system monitoring and troubleshooting.

## Wireless Infrastructure

- **High-Density Deployment:** Managing 2.4GHz and 5GHz (and 6GHz) spectrum in crowded environments to ensure reliable control of mobile mixing units (iPad/Tablet).
- **Guest Access:** Captive portals and client isolation for attendee Wi-Fi without impacting production performance.

## Hardware Expertise

- **UniFi Dream Machine (UDM-Pro/SE):** Centralized management for security, routing, and switching.
- **UniFi Switches:** VLAN-aware port profiles and PoE management for production and AV devices.
- **EdgeRouter:** L3 routing and inter-VLAN policy for segmented networks.

---

[Back to Production Overview](overview.md)

# Doorway Counter: Computer Vision for Attendance

The **Doorway Counter** is a high-performance computer vision application designed to track physical attendance and movement patterns in real-time. It processes live video streams (RTSP) from security cameras to detect, track, and count individuals crossing virtual thresholds.

## Overview

Tracking physical attendance manually is labor-intensive and prone to error. This project uses state-of-the-art deep learning to provide automated, non-intrusive analytics for high-traffic doorways.

---

```{tip}
**Optimization Tooling:** The `test_line_placement.py` utility is a standout feature. It allows for rapid deployment by automatically identifying the optimal virtual crossing coordinates, significantly reducing manual configuration time.
```

## Technical Architecture

The application is built around a real-time computer vision pipeline that optimizes for both accuracy and speed.

### Core Pipeline
1. **Object Detection:** Uses **YOLOv8** (You Only Look Once) nano-model for low-latency person detection.
2. **Object Tracking:** Implements **ByteTrack** to maintain consistent identity for individuals as they move through the frame.
3. **Zone Crossing Logic:** A virtual "tripwire" (Supervision LineZone) determines crossing direction (In vs. Out) and logs counts.

---

## Technical Challenges and Solutions

### 1. Accuracy vs. Speed (Edge-Adjacent Hardware)
Running high-accuracy models in real-time requires significant resources.
- **Solution:** I optimized the pipeline by using the **YOLOv8 nano** model and implementing a frame-skip mechanism for detection while maintaining high-frequency tracking. This allows the system to run on modest hardware (like an NUC or high-end laptop) at 20+ FPS.

### 2. Virtual Line Optimization
Accurate counting depends heavily on where the "tripwire" is placed in a 2D frame.
- **Solution:** Developed a custom **calibration utility** (`test_line_placement.py`) that sweeps multiple virtual line positions across a test video and compares results against ground-truth data to recommend the optimal coordinates.

### 3. Handling Occlusions and Group Movement
People often move in groups, leading to partial occlusions.
- **Solution:** Integrated **ByteTrack**, which uses Kalman filters to predict motion and maintain identity even when an object is momentarily obscured by another person or the environment.

---

## Impact and Results

| Feature | Performance |
| :--- | :--- |
| **FPS (Processing)** | 20 - 30 FPS (RTSP Stream) |
| **Accuracy** | 95%+ in calibrated doorway environments |
| **Headless Mode** | Low-overhead logging for 24/7 operation |
| **Calibration** | Automated sweep tool for fast setup |

---

## Technical Stack

- **Language:** Python 3.10+
- **Deep Learning:** YOLOv8 (Ultralytics), ByteTrack
- **Computer Vision:** OpenCV, Supervision
- **Networking:** RTSP (Real Time Streaming Protocol)
- **Infrastructure:** Docker, Linux (Ubuntu), UV (Environment)
- **Tooling:** Pytest, Logging, Environment configuration (.env)

---

[Back to Automation Tools](python-tools.md)

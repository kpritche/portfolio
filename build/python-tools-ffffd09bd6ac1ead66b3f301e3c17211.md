# Featured Automation and Vision Projects

This page showcases complex automation and vision systems I've developed, demonstrating advanced Python engineering, AI integration, and real-time data processing.

---

## Church Automation Suite

**Category:** Workflow Automation and API Orchestration  
**Stack:** Python • Google Vertex AI • Protocol Buffers • PCO API • Gmail API

**[View Project Details](church-automation.md)**

### The Challenge
Church production workflows often involve manual transcription of announcements from emails to presentation software (ProPresenter) and service planning platforms (Planning Center). This is time-consuming, repetitive, and prone to copy-paste errors.

### The Solution
A modular Python monorepo that orchestrates the entire weekly workflow:
- **Announcements Engine:** Fetches emails via Gmail API, uses **Google Vertex AI** to summarize content into slide-ready text, and generates native ProPresenter `.probundle` files with automated QR codes.
- **Service Slide Generator:** Syncs with Planning Center Online to fetch liturgy, lyrics, and scripture, then builds full ProPresenter `.pro` files by serializing data using **Protocol Buffers**.
- **Bulletin Generator:** Produces print-ready PDFs from the same service plan data using ReportLab.

### Key Technical Achievements
- **Reverse Engineering:** Decoded and implemented the ProPresenter 7 binary format using Protocol Buffers for native file generation.
- **LLM Integration:** Automated content summarization using Gemini/Vertex AI, reducing manual editing by 90%.
- **Modular Architecture:** Built as a set of interoperable packages (shared, announcements, slides, bulletins) for long-term maintainability.

---

## Doorway Counter: Real-time Attendance

**Category:** Computer Vision and Physical Analytics  
**Stack:** Python • YOLOv8 • ByteTrack • OpenCV • RTSP

**[View Project Details](doorway-counter.md)**

### The Challenge
Accurately tracking attendance in high-traffic physical spaces without intrusive hardware or manual counting.

### The Solution
A computer vision application that processes live RTSP streams from security cameras to count entries and exits:
- **Object Detection:** Utilizes **YOLOv8** (nano) for high-frequency person detection on edge-adjacent hardware.
- **Object Tracking:** Implements **ByteTrack** to maintain consistent identity for individuals across frames, even through partial occlusions.
- **Virtual Tripwire:** Uses a configurable "line zone" to determine crossing direction (In vs. Out) and logs real-time statistics.

### Key Technical Achievements
- **Optimization:** Achieved real-time performance on modest hardware by optimizing detection confidence and frame skip logic.
- **Calibration Tooling:** Developed a utility to sweep and test multiple virtual line placements against ground-truth footage to maximize accuracy.
- **Robust Tracking:** Solved common "double counting" issues by tuning tracking persistence and spatial thresholds.

---

## Administrative Automation Tools

In addition to large-scale suites, I maintain a library of utilities that solve critical educational administrative challenges.

### Student Data Pipeline (Pandas/openpyxl)
Automated the ingestion of enrollment data from disparate sources (LMS, Registrar, Survey tools), reducing a 4-hour manual process to a 10-second script. Includes robust validation and discrepancy logging.

### GitHub Course Manager (PyGithub/REST)
A tool to audit student repository compliance across 500+ students. It automatically checks for specific commit patterns, file structures, and last-activity timestamps to flag students needing proactive outreach.

---

## Technical Standards

All projects listed here adhere to professional engineering standards:
- **Type Safety:** Extensive use of Python type hinting.
- **Clean Code:** Consistent styling (Black/Ruff) and modular design.
- **Documentation:** Self-documenting code with clear READMEs for deployment.
- **Validation:** Empirical testing against real-world data and edge cases.

---

[Back to Automation Overview](overview.md) | [View Curricular Materials](../curricular/overview.md)

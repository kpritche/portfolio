# Church Automation Suite

The **Church Automation Suite** is a Python monorepo that automates the repetitive weekly workflows of a church production team. It integrates several APIs and reverse-engineers a proprietary file format to reduce a 4 to 5 hour weekly manual process to less than 15 minutes.

## Overview

Modern church services rely on several disparate platforms:
- **Gmail** for announcement intake.
- **Planning Center Online (PCO)** for service orders and liturgy.
- **ProPresenter 7** for live visual presentation.

This suite is the connective tissue between them, using AI and automated serialization to move data from one system to the next without anyone retyping it.

---

```{note}
**Technical Deep Dive:** This project required reverse-engineering the ProPresenter 7 binary format. I used a custom Protocol Buffer implementation to ensure native file compatibility without requiring the ProPresenter application to be running.
```

## Technical Architecture

The project is a **modular monorepo** using `setuptools` and `pyproject.toml` so each package can be managed independently.

### Core Modules
- **`announcements`**: Fetches emails, parses HTML, summarizes content via a **self-hosted local LLM (Ollama / Llama 3.1)**, and generates `.probundle` files.
- **`slides`**: Connects to PCO, parses lyrics/scripture (PDF/HTML), and generates native `.pro` files using **Protocol Buffers**.
- **`bulletins`**: Extracts service data to generate print-ready PDFs via **ReportLab**.
- **`shared`**: Centralized path management and API credential handling.

---

## Technical Challenges and Solutions

### 1. Reverse Engineering ProPresenter 7
ProPresenter 7 uses a complex binary format for its `.pro` files. 
- **Solution:** I reverse-engineered the data structures and implemented a native Python writer using **Google Protocol Buffers**. This allows the suite to generate "pixel-perfect" slides with precise control over text scaling, shape elements, and media cues without ever opening the ProPresenter app.

### 2. Intelligent Content Summarization
Announcement emails are often wordy and unsuitable for slides.
- **Solution:** Integrated a **self-hosted local LLM (Ollama running Llama 3.1 8B)** to perform context-aware summarization. The system extracts key dates, locations, and calls-to-action, then formats them into concise, slide-ready bullet points. The summarizer originally ran on a cloud API (Google Vertex AI). Moving it to a local model on homelab infrastructure eliminated per-call cost and kept congregation data on-premises.

### 3. API Orchestration
Managing state across Gmail, PCO, and local filesystems.
- **Solution:** Built a "Unified Runner" (`run_all.py`) that handles OAuth2 flows, caches API responses to stay within rate limits, and uses a centralized path utility to manage output across different workstations.

---

## Impact and Results

| Metric | Before Automation | After Automation |
| :--- | :--- | :--- |
| **Weekly Prep Time** | 4 to 5 hours | Under 15 minutes |
| **Error Rate** | Moderate (Copy-paste errors) | Near Zero |
| **Visual Consistency** | Variable | 100% (Template-driven) |
| **QR Code Creation** | Manual (Browser-based) | Fully Automated |

---

## Technical Stack

- **Language:** Python 3.11+
- **APIs:** PCO (pypco), Gmail (google-api-python-client), Ollama (local LLM inference)
- **Data Formats:** Protocol Buffers (.proto), JSON, YAML
- **Libraries:** ReportLab (PDF), BeautifulSoup4 (Parsing), Jinja2 (Templating)
- **Tooling:** UV, Pytest, Black/Ruff

---

[Back to Automation Tools](python-tools.md)

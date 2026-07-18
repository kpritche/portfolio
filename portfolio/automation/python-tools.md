# Featured Automation Projects

This page showcases complex automation systems I've developed, demonstrating advanced Python engineering, AI integration, and multi-platform data orchestration.

---

## Nonprofit Automation Suite

**Category:** Workflow Automation and API Orchestration  
**Stack:** Python • Ollama / Llama 3.1 (self-hosted LLM) • Protocol Buffers • PCO API • Gmail API

**[View Project Details](church-automation.md)**

### The Challenge
Nonprofit production workflows often involve manual transcription of announcements from emails to presentation software (ProPresenter) and service planning platforms (Planning Center). This is time-consuming, repetitive, and prone to copy-paste errors.

### The Solution
A modular Python monorepo that orchestrates the entire weekly workflow:
- **Announcements Engine:** Fetches emails via Gmail API, uses a **self-hosted local LLM (Ollama / Llama 3.1)** to summarize content into slide-ready text, and generates native ProPresenter `.probundle` files with automated QR codes.
- **Service Slide Generator:** Syncs with Planning Center Online to fetch run-of-show, song lyrics, and readings, then builds full ProPresenter `.pro` files by serializing data using **Protocol Buffers**.
- **Bulletin Generator:** Produces print-ready PDFs from the same service plan data using ReportLab.

### Key Technical Achievements
- **Reverse Engineering:** Decoded and implemented the ProPresenter 7 binary format using Protocol Buffers for native file generation.
- **LLM Integration:** Automated content summarization using a self-hosted local LLM (Ollama / Llama 3.1), migrated from a cloud API for cost control and data privacy.
- **Modular Architecture:** Built as a set of interoperable packages (shared, announcements, slides, bulletins) for long-term maintainability.

---

## Administrative Automation Tools

In addition to large-scale suites, I maintain a library of utilities that solve critical educational administrative challenges.

### Grade Data Analysis & Reporting
A Python automation that analyzes and reports student grade data across first-year engineering courses, collapsing roughly a week of manual analysis and reporting into about 15 minutes — surfacing the outcomes and modules that need attention.

### Meeting & Interview Summarization (Self-Hosted LLM)
A local LLM pipeline that summarizes meetings and interviews, running self-hosted models so the source content stays on local infrastructure.

---

## Technical Standards

All projects listed here adhere to professional engineering standards:
- **Type Safety:** Extensive use of Python type hinting.
- **Clean Code:** Consistent styling (Black/Ruff) and modular design.
- **Documentation:** Self-documenting code with clear READMEs for deployment.
- **Validation:** Empirical testing against real-world data and edge cases.

---

[Back to Automation Overview](overview.md) | [View Curricular Materials](../curricular/overview.md)

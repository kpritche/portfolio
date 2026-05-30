# Featured Automation Projects

This page showcases complex automation systems I've developed, demonstrating advanced Python engineering, AI integration, and multi-platform data orchestration.

---

## Church Automation Suite

**Category:** Workflow Automation and API Orchestration  
**Stack:** Python • Ollama / Llama 3.1 (self-hosted LLM) • Protocol Buffers • PCO API • Gmail API

**[View Project Details](church-automation.md)**

### The Challenge
Church production workflows often involve manual transcription of announcements from emails to presentation software (ProPresenter) and service planning platforms (Planning Center). This is time-consuming, repetitive, and prone to copy-paste errors.

### The Solution
A modular Python monorepo that orchestrates the entire weekly workflow:
- **Announcements Engine:** Fetches emails via Gmail API, uses a **self-hosted local LLM (Ollama / Llama 3.1)** to summarize content into slide-ready text, and generates native ProPresenter `.probundle` files with automated QR codes.
- **Service Slide Generator:** Syncs with Planning Center Online to fetch liturgy, lyrics, and scripture, then builds full ProPresenter `.pro` files by serializing data using **Protocol Buffers**.
- **Bulletin Generator:** Produces print-ready PDFs from the same service plan data using ReportLab.

### Key Technical Achievements
- **Reverse Engineering:** Decoded and implemented the ProPresenter 7 binary format using Protocol Buffers for native file generation.
- **LLM Integration:** Automated content summarization using a self-hosted local LLM (Ollama / Llama 3.1), migrated from a cloud API for cost control and data privacy.
- **Modular Architecture:** Built as a set of interoperable packages (shared, announcements, slides, bulletins) for long-term maintainability.

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

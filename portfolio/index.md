# Kory Pritchett

## About Me

:::{aside}
```{image} docs/kp_headshot.jpg
:alt: A picture of me, Kory Pritchett. Welcome to my page!
:width: 250px
```
:::

I build production integrations that turn messy, real-world workflows into reliable systems — self-hosted LLM pipelines, cross-platform API orchestration, and reverse-engineered binary protocols. At **Purdue**, I design the curriculum and grading infrastructure — GitHub, Codespaces, autograders — that **~2,600 first-year engineering students** learn on each semester.

**[Download My Resume (PDF)](docs/kp_resume.pdf)**

I've spent years making hard technical work legible to the people who depend on it, and I work best sitting between a hard problem and the people who need it solved.

## Selected Projects

### Hardening a production autograder · Purdue FYE (ENGR 131)

Extended and hardened the **Gradescope autograder** that grades ~2,600 first-year engineering students each semester — a shared course system I help maintain. My work: rebuilt the SSH deploy-key pipeline to fail loudly instead of silently shipping broken grading; added Excel-submission autograding; rewrote the late-penalty engine to read deadlines straight from Gradescope's own submission metadata (flat, timezone-correct, fail-open); remediated a leaked deploy key; and authored the technical and authoring documentation the TA team uses. Built on a clone-at-grade-time model where a test fix deploys on merge — no re-upload.

*Python · Docker · Gradescope autograder harness · GitHub Codespaces · SSH deploy keys · pandas*

### Automation suite for a nonprofit's weekly operations

A Python monorepo automating a volunteer-run organization's weekly content pipeline: it pulls service data from a scheduling platform's REST API, summarizes a newsletter with a **self-hosted LLM** (migrated off a paid cloud model to a local Ollama server — identical prompts, zero per-call cost, data stays on-prem), and generates print-ready bulletins and presentation slides. The slide generator emits **ProPresenter**'s native format by reverse-engineering its undocumented **Protocol Buffer** schema (45+ generated message types).

*Python · uv workspaces · REST APIs · Protocol Buffers · self-hosted Ollama · ReportLab · Docker*

### Self-healing homelab infrastructure

A resilient self-hosted stack (Proxmox virtualization, Docker services, ZFS storage) with automated failure recovery I built after a real 12-hour outage. An always-on watchdog senses internet loss three independent ways (ICMP, DNS, HTTPS), power-cycles the modem through a smart plug via **Home Assistant's REST API**, and escalates over a WAN-resilient alert queue — with a hard safety invariant that never leaves the connection powered off. A **NUT**-managed UPS fleet walks the rack down gracefully on battery, data-holders first. Public services are exposed through a zero-trust **Cloudflare Tunnel** with split-horizon DNS.

*Proxmox · Docker · TypeScript/Bun · Home Assistant · NUT · Cloudflare Tunnel · Nginx Proxy Manager*

### Real-time camp leaderboard

A single **Bun** process driving two live surfaces — a big-screen display and phone-based admin control — over one WebSocket with role-scoped broadcast topics, backed by `bun:sqlite` with an automatic backup on every mutation. **Zero external dependencies**, fully offline-first. The public display shows a deliberately redacted state (no full names); admins get the full roster.

*Bun · bun:sqlite · WebSocket · vanilla JS · zero npm dependencies*

---

## Core Competencies

- **Workflow Automation & API Integration** — Orchestrating data flows across platforms through their REST APIs (e.g. Gmail, scheduling and planning tools) to eliminate manual data entry.
- **Generative AI & LLM Implementation** — Integrating self-hosted local LLMs (Ollama / Llama 3.1) into production pipelines for automated content summarization, migrated off cloud APIs for data sovereignty and zero per-call cost.
- **AV Systems Automation** — Specialized expertise in production technology, including reverse-engineering binary formats (Protocol Buffers) and building custom systems integrations.
- **Full-Stack Tooling & Repo Management** — Designing robust, modular Python architectures and CLI tools that prioritize maintainability and developer experience.
- **Infrastructure & Self-Hosting** — Managing private cloud infrastructure (Proxmox, Docker, Linux) for data sovereignty, security, and testing emerging technologies.
- **Technical Communication** — Translating hard technical concepts for non-technical audiences at scale — from curriculum for 2,600 students a semester to production stakeholders.
- **Curriculum Design & Development** — Designing and implementing comprehensive courses for first-year engineering students, with interactive content built on Jupyter, MyST, and GitHub Pages.

---

## Featured Work

Explore my portfolio across three primary areas:

### Curricular Materials
Educational content developed for **First-Year Engineering (FYE)** at Purdue University and interactive, web-based learning resources hosted on **GitHub Pages**.

**[View Curricular Projects](curricular/overview.md)**

### Automation Projects
**Python-based automation** tools and utilities developed to streamline workflows, improve educational processes, and solve complex technical challenges.

**[View Automation Projects](automation/overview.md)**

### Live Production & Systems Engineering
Hands-on **live-production operations** — running live sound on Allen & Heath consoles — plus the network infrastructure (Ubiquiti) and Bitfocus Companion automation I build for those environments.

**[View Production Projects](production/overview.md)**

---

## Professional Highlights

- Developed curriculum reaching **2,600 engineering students per semester** across four first-year courses and 20+ sections
- Created **interactive learning materials** reaching **thousands** of learners online
- Automated critical **nonprofit production** workflows, **cutting a 4–5 hour weekly task to under 15 minutes**
- Built a Python automation that turns **roughly a week of student grade-data analysis into ~15 minutes**
- Designed and delivered **engaging technical content** across multiple platforms
- Proficient in **modern development practices** (Git, CI/CD, Python, Jupyter)

---

## Certifications

- **Google AI Professional Certificate** — Google, June 2026 · [Verify on Credly](https://www.credly.com/go/n9XkbWZR)

---

## Technical Stack

**Languages & Frameworks:** Python • MATLAB • HTML • Markdown

**Protocols & Infrastructure:** Docker • Linux • REST APIs

**Education & Documentation:** Jupyter Notebook • MyST • Jupyter Book • GitHub Pages

**Data & Analysis:** Pandas • NumPy • Matplotlib • Plotly

**Tools & Platforms:** GitHub • VS Code • Gradescope • Brightspace • Canvas • UniFi/Ubiquiti Systems

**Content Creation** Camtasia • Adobe Premier • Canva • WordPress

**Audio/Visual** OBS Studio • Dante Audio • ProPresenter • BitFocus Companion • DMX Lighting • Allen & Heath Audio Equipment

---

## Let's Connect

I like turning hard technical problems into working systems — and helping the people around them understand and use what I build. If you're working on something that has to talk to the real world reliably, or a team that needs someone who can both build the integration and explain it, let's work together.

- **LinkedIn:** [linkedin.com/in/kory-pritchett-185772142](https://www.linkedin.com/in/kory-pritchett-185772142)
- **GitHub:** [github.com/kpritche](https://github.com/kpritche)
- **Resume:** [View/Download PDF](docs/kp_resume.pdf)

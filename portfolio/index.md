# Kory Pritchett

## About Me

:::{aside}
```{image} docs/kp_headshot.jpg
:alt: A picture of me, Kory Pritchett. Welcome to my page!
:width: 250px
```
:::

I build production integrations that turn messy, real-world workflows into reliable systems: self-hosted LLM pipelines, cross-platform API orchestration, and reverse-engineered binary protocols. At **Purdue**, I design the curriculum and grading infrastructure that **~2,600 first-year engineering students** learn on each semester, built on GitHub, Codespaces, and autograders.

**[Download My Resume (PDF)](docs/kp_resume.pdf)**

I've spent years making hard technical work legible to the people who depend on it, and I work best sitting between a hard problem and the people who need it solved.

## Selected Projects

### Hardening a production autograder · Purdue FYE (ENGR 131)

Extended and hardened the **Gradescope autograder** that grades ~2,600 first-year engineering students each semester, a shared course system I help maintain. My work: rebuilt the SSH deploy-key pipeline to fail loudly instead of silently shipping broken grading; added Excel-submission autograding; rewrote the late-penalty engine to read deadlines straight from Gradescope's own submission metadata (flat, timezone-correct, fail-open); and authored the technical and authoring documentation the TA team uses. It runs on a clone-at-grade-time model, so a test fix deploys on merge with no re-upload.

*Python · Docker · Gradescope autograder harness · GitHub Codespaces · SSH deploy keys · pandas*

### Automation suite for a church's weekly operations

A Python monorepo automating a church's weekly content pipeline: it pulls service data from **Planning Center**'s REST API, summarizes a newsletter with a **self-hosted LLM** (migrated off a paid cloud model to a local Ollama server, with identical prompts, zero per-call cost, and data that stays on-prem), and generates print-ready bulletins and presentation slides. The slide generator emits **ProPresenter**'s native format by reverse-engineering its undocumented **Protocol Buffer** schema (45+ generated message types).

*Python · uv workspaces · REST APIs · Protocol Buffers · self-hosted Ollama · ReportLab · Docker*

### Self-healing homelab infrastructure

A resilient self-hosted stack (Proxmox virtualization, Docker services, ZFS storage) with automated failure recovery I built after a real 12-hour outage. An always-on watchdog senses internet loss three independent ways (ICMP, DNS, HTTPS), power-cycles the modem through a smart plug via **Home Assistant's REST API**, and escalates over a WAN-resilient alert queue. A hard safety invariant guarantees it never leaves the connection powered off. A **NUT**-managed UPS fleet walks the rack down gracefully on battery, data-holders first. Public services are exposed through a zero-trust **Cloudflare Tunnel** with split-horizon DNS.

*Proxmox · Docker · TypeScript/Bun · Home Assistant · NUT · Cloudflare Tunnel · Nginx Proxy Manager*

### A private photo cloud for my family

Self-hosted photo infrastructure that gets my family off big-tech storage without making sharing worse. Photos live on my own ZFS-backed **Immich** server and reach relatives through a zero-trust tunnel, each on a scoped subdomain of their own. There are no accounts to create and nothing to install. The delivery surface is the part most self-hosted setups skip. I converted cheap Amazon Fire tablets into single-purpose photo frames, stripping the stock OS down to a debloated kiosk build locked to one app and routed home over a VPN, then prototyped the wood enclosures myself and commissioned the finished frames. They run unattended in houses I can't reach, for people who will never open a settings menu.

*Immich · ZFS · Docker · Cloudflare Tunnel · Nginx Proxy Manager · Android kiosk provisioning*

### Real-time camp leaderboard

A single **Bun** process driving two live surfaces, a big-screen display and phone-based admin control, over one WebSocket with role-scoped broadcast topics, backed by `bun:sqlite` with an automatic backup on every mutation. **Zero external dependencies**, fully offline-first. The public display shows a deliberately redacted state (no full names); admins get the full roster.

*Bun · bun:sqlite · WebSocket · vanilla JS · zero npm dependencies*

---

## Core Competencies

- **Workflow Automation & API Integration.** Moving data between platforms through their REST APIs (Gmail, scheduling and planning tools) so nobody has to retype it.
- **Generative AI & LLM Implementation.** Running self-hosted local LLMs (Ollama / Llama 3.1) in production pipelines for content summarization, moved off cloud APIs for data sovereignty and zero per-call cost.
- **AV Systems Automation.** Production technology down to the file format, including reverse-engineering binary formats (Protocol Buffers) and building the integrations vendors don't ship.
- **Full-Stack Tooling & Repo Management.** Python architectures and CLI tools built so the next person can find their way around them.
- **Infrastructure & Self-Hosting.** Private cloud infrastructure (Proxmox, Docker, Linux) run for data sovereignty, security, and somewhere to test new things.
- **Technical Communication.** Making hard technical concepts legible to non-technical audiences at scale, from curriculum for 2,600 students a semester to production stakeholders.
- **Curriculum Design & Development.** Courses for first-year engineering students, with interactive content built on Jupyter, MyST, and GitHub Pages.

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
Hands-on **live-production operations**, running live sound on Allen & Heath consoles, plus the network infrastructure (Ubiquiti) and Bitfocus Companion automation I build for those environments.

**[View Production Projects](production/overview.md)**

---

## Professional Highlights

- Developed curriculum reaching **2,600 engineering students per semester** across four first-year courses and 20+ sections
- Created **interactive learning materials** reaching **thousands** of learners online
- Automated critical **church production** workflows, **cutting a 4 to 5 hour weekly task to under 15 minutes**
- Built a Python automation that turns **roughly a week of student grade-data analysis into ~15 minutes**
- Produced **instructional video and written coursework** for flipped-classroom Python and MATLAB units
- Reverse-engineered an undocumented **binary presentation format** (45+ Protocol Buffer message types) to generate slides natively

---

## Certifications

- **Google AI Professional Certificate**, Google, June 2026 · [Verify on Credly](https://www.credly.com/go/n9XkbWZR)

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

I like turning hard technical problems into working systems, and helping the people around them understand and use what I build. If you're working on something that has to talk to the real world reliably, or a team that needs someone who can both build the integration and explain it, let's work together.

- **LinkedIn:** [linkedin.com/in/kory-pritchett-185772142](https://www.linkedin.com/in/kory-pritchett-185772142)
- **GitHub:** [github.com/kpritche](https://github.com/kpritche)
- **Resume:** [View/Download PDF](docs/kp_resume.pdf)

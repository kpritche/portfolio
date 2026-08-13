# First-Year Engineering

This page is the record of my curriculum-development work for **First-Year Engineering (FYE)** at Purdue University, a program serving roughly 2,600 students per semester across four courses and 20+ sections. I build and maintain the web-based learning platforms, coursework, and assessment tooling that deliver it, pairing instructional design with real software engineering: version-controlled content, automated builds, and custom autograding at the scale of thousands of students.

---

## ENGR 131: Transforming Ideas to Innovation I

- **Role:** Lead Developer (technical)
- **Platform:** Jupyter Book v2 • MyST Markdown • GitHub Pages • GitHub Actions
- **Live Site:** [purdue-fye.github.io/engr-13100-2026-fall](https://purdue-fye.github.io/engr-13100-2026-fall/intro.html)

I lead the technical development of the ENGR 131 course website, the unified version-controlled platform for delivering course content across the program's many sections, currently in active development for the Fall 2026 offering. Content delivery used to be fragmented across sections. I proposed migrating it to GitHub Pages (building on the ENGR 133 framework) and own the technical side of that build, while sharing content authorship with the curriculum team.

**Key Contributions**

- **Content & Authoring:** Writing and structuring course content in MyST Markdown.
- **Automation & CI/CD:** Building the GitHub Actions pipelines that compile and deploy the site.
- **DevOps:** Serving as DevOps for the organizational repositories that host the course website across its many sections.

---

## ENGR 133: Transforming Ideas to Innovation (EPICS & VIP)

- **Role:** Contributor
- **Platform:** Jupyter Book • Python • MATLAB
- **Live Site:** [purdue-engr-13300.github.io/2025-fall](https://purdue-engr-13300.github.io/2025-fall/intro.html)

For the Fall 2022 and Fall 2023 semesters I developed Python and MATLAB coursework for ENGR 133, much of which remains in active use.

**Key Contributions**

- Authored Python and MATLAB homework assignments for both teams and individuals.
- Designed a culminating project for the Python unit on image-processing techniques.
- Produced instructional Python videos for a flipped-classroom environment.

---

## generic-grader: Automated Assessment

- **Role:** Fork Maintainer / Contributor
- **Platform:** Python • Gradescope Autograder • unittest
- **Original Author:** John Cole ([jhcole](https://github.com/jhcole))
- **My Fork:** [github.com/kpritche/generic-grader](https://github.com/kpritche/generic-grader)

`generic-grader` is a Python autograding framework that integrates with Gradescope to automatically evaluate student submissions. I maintain a fork that extends the original with additional grading capabilities used in Purdue's first-year engineering courses.

**Key Contributions**

- Added grading support for **Excel spreadsheet** submissions.
- Added grading support for **MATLAB code** submissions.
- Wired the grader into first-year engineering course pipelines for automated, consistent feedback at scale.

---

## Development Workflow

All of these materials follow a consistent engineering workflow:

1. **Content Development:** Author in MyST Markdown or Jupyter Notebooks.
2. **Version Control:** Track changes with Git across organizational repositories.
3. **Automated Testing:** Validate code examples and autograder behavior.
4. **Continuous Deployment:** GitHub Actions build and deploy automatically.
5. **Iteration:** Improve based on instructor and student feedback.

---

## Technical Standards for Curriculum Development

Every course material here is held to the same standards:

- **Accessibility:** Compliance with WCAG standards for all digital documents.
- **Alignment:** Strict alignment between learning objectives, instructional activities, and assessments.
- **Inclusivity:** Use of diverse examples and human-centered design principles.
- **Evidence-Based:** Implementation of research-backed pedagogical strategies.

---

[Back to Curricular Overview](overview.md) | [View Automation Tools](../automation/overview.md)

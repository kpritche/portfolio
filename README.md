# Kory Pritchett's Professional Portfolio

A professional portfolio website showcasing curriculum development, interactive course materials, and automation projects, built with Jupyter Book v2 and deployed to GitHub Pages.

## Live Site

Visit the portfolio at: `https://kpritche.github.io/portfolio/`

## About This Portfolio

This portfolio demonstrates my expertise in:

- **Curricular Materials** — Educational content for First-Year Engineering at Purdue University
- **Interactive Course Materials** — Web-based learning experiences with Jupyter Book and GitHub Pages
- **Automation Tools** — Python-based solutions streamlining workflows and solving technical challenges

## Built With

- **[Jupyter Book v2](https://jupyterbook.org/)** — Modern, beautiful documentation
- **[MyST Markdown](https://mystmd.org/)** — Enhanced markdown with rich features
- **[GitHub Pages](https://pages.github.com/)** — Free, reliable hosting
- **[GitHub Actions](https://github.com/features/actions)** — Automated build and deployment
- **Python 3.11** — Development environment

## Local Development

### Prerequisites

- Python 3.9 or higher
- [uv](https://github.com/astral-sh/uv) package manager (recommended)

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/kpritche/portfolio.git
   cd portfolio
   ```

2. Create a virtual environment and install dependencies using uv:
   ```bash
   uv sync
   ```

3. Activate the virtual environment:
   - On macOS/Linux:
     ```bash
     source .venv/bin/activate
     ```
   - On Windows:
     ```bash
     .venv\Scripts\activate
     ```

### Build the Site

Build the Jupyter Book locally. You can build either format:

**Build HTML (for GitHub Pages deployment):**

Using `uv run` (recommended - no need to activate virtual environment):

```bash
cd portfolio
uv run jupyter-book build --html
```

Or after activating the virtual environment:

```bash
cd portfolio
jupyter-book build --html
```

The HTML output will be in `portfolio/_build/html/`.

**Build MyST Site (alternative format):**

```bash
cd portfolio
uv run jupyter-book build --site
```

The site output will be in `portfolio/_build/site/`.

For more detailed information, refer to the [Jupyter Book v2 Documentation](https://jupyterbook.org/en/stable/build/index.html).

### View Built Pages Locally

After building, use the `jupyter-book start` command to preview the site locally:

```bash
uv run jupyter-book start portfolio/
```

Or, if your virtual environment is activated:

```bash
jupyter-book start portfolio/
```

This will automatically open the site in your default browser. By default, it serves on `http://localhost:8000`.

For more details, see the [Jupyter Book Local Preview documentation](https://jupyterbook.org/stable/get-started/build-websites/)

### Clean Previous Builds

To remove previous builds:

```bash
uv run jupyter-book clean portfolio/
```

Or, if your virtual environment is activated:

```bash
jupyter-book clean portfolio/
```

## Project Structure

```
portfolio/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions workflow for deployment
├── portfolio/
│   ├── _build/                 # Built site (generated, not tracked in git)
│   ├── automation/             # Automation tools section
│   │   ├── overview.md
│   │   └── python-tools.md
│   ├── curricular/             # Curricular materials section
│   │   ├── overview.md
│   │   └── fye-materials.md
│   ├── interactive/            # Interactive materials section
│   │   ├── overview.md
│   │   └── github-pages-projects.md
│   ├── intro.md                # Landing page
│   └── myst.yml                # Jupyter Book configuration
├── pyproject.toml              # Project metadata and dependencies
├── uv.lock                     # uv lock file (dependency versions)
└── README.md                   # This file
```

## Deployment

The site automatically builds and deploys to GitHub Pages when changes are pushed to the `main` branch. The GitHub Actions workflow builds the Jupyter Book HTML and pushes it to the `gh-pages` branch.

### Configure GitHub Pages

To enable automatic deployment, configure your repository settings:

1. Go to your repository **Settings** and select **Pages**
2. Under "Build and deployment" and "Source", select **"Deploy from a branch"**
3. Choose the **`gh-pages`** branch
4. Leave the folder as **`/ (root)`**
5. Click **Save**

The workflow will automatically create the `gh-pages` branch on the first successful build.

### Manual Local Build

To build the HTML locally for testing:

```bash
cd portfolio
uv run jupyter-book build --html
```

The built HTML will be in `portfolio/_build/html/`.

For detailed deployment instructions, refer to the [Jupyter Book Publishing guide](https://jupyterbook.org/stable/get-started/publish/), which covers GitHub Pages, ReadTheDocs, Netlify, and other hosting platforms.

## Customization

- **Content:** Edit markdown files in `portfolio/`
- **Navigation:** Update table of contents in `portfolio/myst.yml`
- **Styling:** Customize in `portfolio/myst.yml` under `site.options`
- **Logo/Favicon:** Replace `site_logo.png` and `favicon.ico`

## License

This project is licensed under the MIT License for code and CC-BY-4.0 for content - see individual files for details.

## Contact

**Kory Pritchett**

- LinkedIn: [linkedin.com/in/kory-pritchett/](https://www.linkedin.com/in/kory-pritchett-185772142/)
- GitHub: [github.com/kpritche](https://github.com/kpritche)

---
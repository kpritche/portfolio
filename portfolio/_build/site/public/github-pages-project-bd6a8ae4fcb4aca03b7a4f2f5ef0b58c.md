# Featured Interactive Projects

This page showcases interactive educational materials I've created and hosted on GitHub Pages. These projects demonstrate my ability to build engaging, accessible, and scalable learning experiences using modern web technologies.

---

## Project 1: Python Programming Tutorial Series

**Platform:** GitHub Pages + Jupyter Book  
**Audience:** Beginner to intermediate Python learners  
**Technology:** Jupyter Book, MyST Markdown, Thebe, Plotly

### Description

A comprehensive, interactive tutorial series teaching Python programming fundamentals through hands-on coding exercises. Learners can execute code directly in their browser without any installation.

### Features

🎯 **Live Code Execution** — Run Python code directly in the browser using Thebe  
📊 **Interactive Visualizations** — Explore data with interactive Plotly charts  
🧩 **Progressive Difficulty** — Scaffolded lessons from basics to advanced topics  
✅ **Auto-Graded Exercises** — Immediate feedback on practice problems  
📱 **Responsive Design** — Works seamlessly on mobile, tablet, and desktop

### Content Coverage

- Variables, data types, and basic operations
- Control flow (if statements, loops)
- Functions and code organization
- Lists, dictionaries, and data structures
- File I/O and data processing
- Libraries: NumPy, Pandas, Matplotlib
- Mini-projects applying learned skills

### Technologies Used

```python
- Jupyter Book (MyST ecosystem)
- Thebe for live code execution
- Plotly for interactive visualizations
- GitHub Pages for hosting
- GitHub Actions for CI/CD
```

### Impact

- **5,000+ page views** since launch
- **500+ unique visitors** monthly
- **Open-source** repository with contributions from community
- **Referenced** by other educators in similar projects

### Sample Content

Here's an example of the interactive content structure:

````markdown
## Working with Lists

Lists are one of Python's most versatile data structures. Let's explore them interactively!

```{code-cell} ipython3
# Create a list of numbers
numbers = [1, 2, 3, 4, 5]
print(f"Original list: {numbers}")

# Try different operations
numbers.append(6)
print(f"After append: {numbers}")
```

**Try it yourself:** Modify the code above to add your favorite numbers!
````

**Repository:** `github.com/kpritche/python-tutorials` _(sample URL)_

---

## Project 2: Data Science Learning Path

**Platform:** GitHub Pages + Jupyter Book  
**Audience:** Students and professionals learning data science  
**Technology:** Jupyter Book, Pandas, NumPy, Matplotlib, Seaborn

### Description

An interactive learning path guiding learners through essential data science concepts with real-world datasets and visualizations. Each module includes theory, examples, and hands-on exercises.

### Features

📈 **Real Datasets** — Work with actual data from government, research, and public sources  
🔍 **Exploratory Data Analysis** — Learn to ask questions and find insights  
🎨 **Visualization Gallery** — Create publication-quality charts and graphs  
🧪 **Statistical Methods** — Apply statistical techniques to data problems  
💡 **Case Studies** — Complete end-to-end data analysis projects

### Content Coverage

**Module 1: Data Fundamentals**
- Loading data (CSV, Excel, APIs)
- Data cleaning and preprocessing
- Handling missing values

**Module 2: Exploratory Data Analysis**
- Summary statistics
- Distribution analysis
- Correlation and relationships

**Module 3: Data Visualization**
- Choosing the right chart type
- Creating effective visualizations
- Interactive dashboards

**Module 4: Statistical Analysis**
- Hypothesis testing
- Regression analysis
- Confidence intervals

**Module 5: Applied Projects**
- Complete data analysis workflows
- Reporting findings
- Creating reproducible analyses

### Technologies Used

```python
- Pandas for data manipulation
- NumPy for numerical operations
- Matplotlib & Seaborn for visualization
- Jupyter Book for documentation
- GitHub Pages for deployment
```

### Impact

- **10,000+ page views** across all modules
- **Featured** in data science education newsletters
- **Forked** by educators adapting content for their courses
- **Positive feedback** from learners worldwide

**Repository:** `github.com/kpritche/data-science-path` _(sample URL)_

---

## Project 3: Interactive Engineering Calculations

**Platform:** GitHub Pages + Voilà  
**Audience:** Engineering students and practicing engineers  
**Technology:** Jupyter Notebooks, Voilà, ipywidgets, SymPy

### Description

A collection of interactive calculators and visualization tools for common engineering calculations. Users can adjust parameters with sliders and see results update in real-time.

### Features

⚙️ **Interactive Calculators** — Adjust inputs and see instant results  
📐 **Engineering Formulas** — Automatic calculation with proper units  
📊 **Visual Feedback** — Charts and diagrams update dynamically  
🔢 **Symbolic Math** — Show derivations and steps using SymPy  
💾 **Export Results** — Download calculations as PDF reports

### Tools Included

1. **Beam Deflection Calculator**
   - Visualize beam behavior under various loads
   - Calculate deflection, stress, and safety factors
   
2. **Circuit Analysis Tool**
   - Analyze resistor networks
   - Calculate equivalent resistance, voltage drops
   
3. **Thermodynamics Solver**
   - State properties for various fluids
   - Cycle analysis for common thermodynamic cycles
   
4. **Projectile Motion Simulator**
   - Interactive trajectory visualization
   - Parameter exploration (angle, velocity, air resistance)

5. **Unit Converter**
   - Comprehensive unit conversion tool
   - Common engineering units

### Technologies Used

```python
- Jupyter Notebooks with ipywidgets
- Voilà for dashboard deployment
- SymPy for symbolic mathematics
- Matplotlib for dynamic plotting
- NumPy for numerical calculations
```

### Impact

- **2,000+ users** accessing calculators monthly
- **Time-saver** for quick engineering estimates
- **Educational value** for visualizing concepts
- **Professional use** by practicing engineers

**Repository:** `github.com/kpritche/engineering-calculators` _(sample URL)_

---

## Project 4: Open Educational Resources (OER) Textbook

**Platform:** GitHub Pages + Jupyter Book  
**Audience:** First-year engineering students  
**Technology:** Jupyter Book, MyST Markdown, Sphinx

### Description

A comprehensive, open-access digital textbook covering introductory engineering topics. Features interactive examples, embedded videos, and self-check quizzes.

### Features

📚 **Complete Curriculum** — Full semester's worth of content  
🎬 **Embedded Videos** — Video explanations for key concepts  
✍️ **Self-Check Quizzes** — Test understanding with instant feedback  
🔗 **Hyperlinked Navigation** — Easy cross-referencing between chapters  
🆓 **Free & Open** — No cost to students, CC-BY license

### Content Structure

- **10 chapters** covering engineering fundamentals
- **50+ worked examples** demonstrating problem-solving
- **100+ practice problems** with solutions
- **25+ video tutorials** explaining challenging concepts
- **Interactive simulations** for hands-on exploration
- **Glossary** with 200+ technical terms
- **Appendices** with reference materials

### Technologies Used

```
- MyST Markdown for content authoring
- Jupyter Book for compilation and styling
- GitHub for version control and collaboration
- GitHub Actions for automated builds
- GitHub Pages for free hosting
```

### Impact

- **3,000+ students** used as course resource
- **Adopted** by multiple instructors
- **Open-source contributions** from community
- **Cost savings** of $150 per student (vs. traditional textbook)
- **Continuous improvement** through user feedback

**Repository:** `github.com/kpritche/engineering-oer-textbook` _(sample URL)_

---

## Additional Interactive Projects

### Quick Links to Other Work

- **MATLAB Tutorial Series** — Interactive MATLAB programming guide
- **Engineering Mathematics Review** — Refresher on key math concepts
- **Scientific Computing with Python** — NumPy, SciPy, and beyond
- **Visualization Best Practices** — Guide to effective technical graphics

---

## Development Workflow

All my interactive materials follow a consistent development workflow:

1. **Content Development** — Write in MyST Markdown or Jupyter Notebooks
2. **Version Control** — Track changes with Git
3. **Automated Testing** — Ensure code examples work correctly
4. **Continuous Deployment** — GitHub Actions build and deploy automatically
5. **User Feedback** — Iterate based on learner and educator input

---

## Open Source Philosophy

All my interactive educational materials are:

✅ **Open Source** — Available on GitHub with permissive licenses  
✅ **Community-Driven** — Accept contributions and feedback  
✅ **Accessible** — WCAG compliant where possible  
✅ **Free to Use** — No paywalls or subscriptions  
✅ **Modifiable** — Educators can adapt for their context

---

[← Back to Interactive Overview](overview.md) | [View Automation Tools →](../automation/overview.md)

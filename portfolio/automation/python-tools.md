# Featured Python Automation Tools

This page showcases automation tools I've developed to solve real-world problems, streamline workflows, and eliminate repetitive tasks. These projects demonstrate clean code, error handling, testing, and practical problem-solving skills.

---

## Project 1: Student Enrollment Data Processor

**Category:** Data Processing & Transformation  
**Language:** Python 3.11  
**Key Libraries:** Pandas, openpyxl, pathlib

### Problem Statement

Managing student enrollment data across multiple Excel files with inconsistent formats was time-consuming and error-prone. Manual processing of 50+ files per semester took 8+ hours and introduced errors.

### Solution

Developed an automated pipeline that:

✅ Reads multiple Excel files from a directory  
✅ Validates data format and completeness  
✅ Standardizes column names and data types  
✅ Merges data from multiple sources  
✅ Generates summary reports and statistics  
✅ Exports cleaned data in multiple formats (CSV, Excel, JSON)  
✅ Logs all operations and errors for debugging

### Technical Highlights

```python
# Key features demonstrated
- Path manipulation with pathlib
- Exception handling for corrupt files
- Data validation with custom functions
- Pandas operations (merge, groupby, pivot)
- Logging for troubleshooting
- Configuration files for flexibility
- Unit tests ensuring reliability
```

### Code Sample

```python
import pandas as pd
from pathlib import Path
import logging

class EnrollmentProcessor:
    def __init__(self, input_dir, output_dir):
        self.input_dir = Path(input_dir)
        self.output_dir = Path(output_dir)
        self.logger = self._setup_logging()
    
    def process_all_files(self):
        """Process all Excel files in input directory."""
        files = list(self.input_dir.glob("*.xlsx"))
        self.logger.info(f"Found {len(files)} files to process")
        
        all_data = []
        for file in files:
            try:
                df = self._process_single_file(file)
                all_data.append(df)
            except Exception as e:
                self.logger.error(f"Error processing {file.name}: {e}")
        
        return pd.concat(all_data, ignore_index=True)
```

### Impact

- **⏱️ Time Savings:** Reduced from 8 hours to 5 minutes (99% reduction)
- **🎯 Accuracy:** Eliminated human errors in data entry
- **📈 Scalability:** Handles 500+ files without modification
- **🔄 Reusability:** Adopted by colleagues for similar workflows

### Technologies

`Python` • `Pandas` • `openpyxl` • `pytest` • `logging`

---

## Project 2: Automated Email Report Generator

**Category:** Communication Automation  
**Language:** Python 3.11  
**Key Libraries:** smtplib, email, jinja2, pandas

### Problem Statement

Instructors needed weekly progress reports for 200+ students, requiring manual generation and individual emails. This consumed 4-6 hours weekly and reports were often delayed.

### Solution

Created an automated system that:

✅ Pulls student performance data from CSV files  
✅ Generates personalized HTML email reports using templates  
✅ Includes visualizations (grade charts, progress indicators)  
✅ Sends batch emails with error handling and retry logic  
✅ Tracks delivery status and generates send logs  
✅ Supports dry-run mode for testing  
✅ Configurable templates and schedule

### Technical Highlights

```python
# Key features demonstrated
- HTML email generation with Jinja2 templates
- SMTP email sending with authentication
- Batch processing with rate limiting
- Error handling and retry mechanisms
- Data visualization with matplotlib
- Configuration management
- Comprehensive logging
```

### Code Sample

```python
from jinja2 import Template
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

class ReportEmailer:
    def __init__(self, config):
        self.config = config
        self.template = self._load_template()
    
    def send_report(self, student_data):
        """Generate and send personalized report email."""
        html_content = self.template.render(**student_data)
        
        msg = MIMEMultipart('alternative')
        msg['Subject'] = f"Weekly Progress Report - {student_data['name']}"
        msg['From'] = self.config['sender_email']
        msg['To'] = student_data['email']
        
        msg.attach(MIMEText(html_content, 'html'))
        
        try:
            self._send_email(msg)
            return True
        except Exception as e:
            self.logger.error(f"Failed to send to {student_data['email']}: {e}")
            return False
```

### Impact

- **⏱️ Time Savings:** From 5 hours to 10 minutes per week
- **📧 Reliability:** 99.5% successful delivery rate
- **📊 Insights:** Better student engagement with timely feedback
- **✨ Professional:** Polished, branded email templates

### Technologies

`Python` • `smtplib` • `Jinja2` • `matplotlib` • `pandas`

---

## Project 3: GitHub Repository Analyzer

**Category:** API Integration & Reporting  
**Language:** Python 3.11  
**Key Libraries:** requests, pandas, matplotlib, github

### Problem Statement

Tracking student GitHub activity across 50+ repositories for assignment compliance was tedious. Manual checks were inconsistent and time-consuming.

### Solution

Built a comprehensive tool that:

✅ Authenticates with GitHub API  
✅ Fetches repository data (commits, branches, contributors)  
✅ Analyzes commit frequency and patterns  
✅ Checks for assignment completion criteria  
✅ Generates visual dashboards and reports  
✅ Identifies students needing assistance  
✅ Exports data for grade book import

### Technical Highlights

```python
# Key features demonstrated
- REST API integration with authentication
- Rate limiting and pagination handling
- Data analysis and visualization
- Concurrent API requests for speed
- Caching to reduce API calls
- Comprehensive error handling
```

### Code Sample

```python
import requests
from typing import List, Dict
import pandas as pd

class GitHubAnalyzer:
    def __init__(self, token):
        self.token = token
        self.base_url = "https://api.github.com"
        self.session = self._create_session()
    
    def analyze_repository(self, repo_full_name: str) -> Dict:
        """Analyze a single repository and return metrics."""
        commits = self._get_commits(repo_full_name)
        branches = self._get_branches(repo_full_name)
        
        return {
            'repo': repo_full_name,
            'commit_count': len(commits),
            'branch_count': len(branches),
            'last_commit_date': commits[0]['commit']['author']['date'],
            'contributors': self._count_contributors(commits)
        }
```

### Impact

- **⏱️ Time Savings:** From 3 hours to 2 minutes per class
- **📊 Better Insights:** Identify struggling students early
- **🔍 Compliance:** Automatic verification of requirements
- **📈 Analytics:** Track engagement patterns over semester

### Technologies

`Python` • `requests` • `PyGithub` • `pandas` • `matplotlib`

---

## Project 4: File Organization & Backup System

**Category:** Workflow Automation  
**Language:** Python 3.11  
**Key Libraries:** pathlib, shutil, schedule, watchdog

### Problem Statement

Managing hundreds of course files (syllabi, assignments, grades) across semesters was chaotic. Finding specific files was difficult and no systematic backup existed.

### Solution

Developed an intelligent file management system that:

✅ Monitors directories for new files  
✅ Automatically organizes files by type and date  
✅ Creates systematic folder structures  
✅ Performs incremental backups to cloud storage  
✅ Detects duplicate files  
✅ Archives old semesters automatically  
✅ Generates organization reports

### Technical Highlights

```python
# Key features demonstrated
- File system monitoring with watchdog
- Automated file organization logic
- Incremental backup strategies
- Duplicate detection using hashing
- Scheduled tasks with schedule library
- Logging and notification system
```

### Code Sample

```python
from pathlib import Path
import shutil
from datetime import datetime
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

class FileOrganizer(FileSystemEventHandler):
    def __init__(self, watch_dir, organized_dir):
        self.watch_dir = Path(watch_dir)
        self.organized_dir = Path(organized_dir)
    
    def on_created(self, event):
        """Handle new file creation event."""
        if event.is_directory:
            return
        
        file_path = Path(event.src_path)
        destination = self._determine_location(file_path)
        
        try:
            shutil.move(str(file_path), str(destination))
            print(f"Organized: {file_path.name} → {destination}")
        except Exception as e:
            print(f"Error organizing {file_path.name}: {e}")
```

### Impact

- **🗂️ Organization:** All files systematically organized
- **🔐 Data Safety:** Automated daily backups
- **⏱️ Time Savings:** No more manual file management
- **🔍 Findability:** Locate any file in seconds

### Technologies

`Python` • `pathlib` • `watchdog` • `schedule` • `hashlib`

---

## Project 5: Web Scraping Data Aggregator

**Category:** Web Scraping & Data Collection  
**Language:** Python 3.11  
**Key Libraries:** BeautifulSoup, requests, selenium, pandas

### Problem Statement

Gathering data from multiple education-related websites for research required manual copying and pasting from dozens of pages. This was tedious and introduced transcription errors.

### Solution

Created a flexible web scraping tool that:

✅ Scrapes data from multiple websites  
✅ Handles both static and dynamic (JavaScript) content  
✅ Respects robots.txt and implements polite scraping  
✅ Extracts structured data (tables, lists, text)  
✅ Cleans and normalizes collected data  
✅ Stores data in structured format (CSV, JSON, SQLite)  
✅ Runs on schedule or on-demand

### Technical Highlights

```python
# Key features demonstrated
- HTML parsing with BeautifulSoup
- Dynamic content handling with Selenium
- Rate limiting and politeness
- Data extraction and cleaning
- Error handling for network issues
- Database storage for persistence
```

### Code Sample

```python
import requests
from bs4 import BeautifulSoup
import pandas as pd

class WebScraper:
    def __init__(self, base_url, headers=None):
        self.base_url = base_url
        self.headers = headers or {'User-Agent': 'Educational Research Bot'}
        self.session = requests.Session()
    
    def scrape_table(self, url: str) -> pd.DataFrame:
        """Scrape HTML table from URL and return as DataFrame."""
        response = self.session.get(url, headers=self.headers)
        response.raise_for_status()
        
        soup = BeautifulSoup(response.content, 'html.parser')
        table = soup.find('table', class_='data-table')
        
        return pd.read_html(str(table))[0]
```

### Impact

- **⏱️ Time Savings:** From 6 hours to 15 minutes
- **🎯 Accuracy:** Eliminated transcription errors
- **🔄 Automation:** Scheduled daily data collection
- **📊 Scale:** Collecting from 30+ sources automatically

### Technologies

`Python` • `BeautifulSoup` • `Selenium` • `requests` • `pandas`

---

## Additional Automation Projects

### Other Tools in My Arsenal

- **Grade Calculator & Analytics** — Automated grade computation with statistical analysis
- **Canvas LMS Integration** — Bulk operations on Canvas Learning Management System
- **PDF Report Generator** — Automated creation of formatted PDF reports
- **Survey Data Processor** — Aggregate and analyze survey responses
- **Attendance Tracker** — Automated attendance recording and reporting

---

## Development Principles

All my automation tools follow these principles:

✅ **Robust Error Handling** — Gracefully handle edge cases and failures  
✅ **Comprehensive Logging** — Track operations for debugging and auditing  
✅ **Configuration Files** — Easy customization without code changes  
✅ **Documentation** — Clear README files and inline comments  
✅ **Testing** — Unit tests ensuring reliability  
✅ **Version Control** — Git history tracking all changes  
✅ **Type Hints** — Python type annotations for clarity

---

## Code Quality Standards

I maintain high code quality through:

- **Black** for consistent code formatting
- **Ruff** for linting and style checking
- **pytest** for comprehensive testing
- **mypy** for static type checking
- **pre-commit hooks** preventing bad commits
- **Documentation** with docstrings and README files

---

[← Back to Automation Overview](overview.md) | [View Curricular Materials →](../curricular/overview.md)

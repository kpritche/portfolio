.PHONY: help install build preview clean

# Ensure uv is in PATH
export PATH := $(HOME)/.local/bin:$(PATH)

# Default target
help:
	@echo "Available commands:"
	@echo "  make install  - Install dependencies using uv sync"
	@echo "  make build    - Build the Jupyter Book HTML"
	@echo "  make preview  - Start the live preview server (http://localhost:8000)"
	@echo "  make clean    - Remove build artifacts"

install:
	uv sync

build:
	cd portfolio && uv run jupyter-book build --html

preview:
	cd portfolio && PORT=8000 uv run jupyter-book start --port 8000

clean:
	uv run jupyter-book clean portfolio/

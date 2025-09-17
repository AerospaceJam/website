# List available commands
default:
    @just --list

# Build the static site
build:
    uv run build.py

# Install dependencies
install:
    uv sync

# Host the site locally
serve:
    python build.py --serve

# Build and host
dev: build serve
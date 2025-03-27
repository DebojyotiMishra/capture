#!/bin/bash

# Script to set up git hooks for the Capture project
# Run this script after cloning the repository

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Setting up git hooks for Capture project...${NC}"

# Create hooks directory if it doesn't exist
if [ ! -d ".git/hooks" ]; then
    echo -e "${YELLOW}Creating hooks directory...${NC}"
    mkdir -p .git/hooks
fi

# Copy commit-msg hook
echo -e "${YELLOW}Installing commit-msg hook...${NC}"
cp -f scripts/hooks/commit-msg .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo -e "${GREEN}Git hooks installed successfully!${NC}"
echo -e "${YELLOW}All commit messages must now follow the Conventional Commits format.${NC}"
echo -e "${YELLOW}See docs/COMMIT_CONVENTION.md for details.${NC}" 
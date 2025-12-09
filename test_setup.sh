#!/bin/bash

# Test script to check if everything is set up correctly
# Run with: bash test_setup.sh

echo "======================================"
echo "🔍 Checking Quarto Website Setup"
echo "======================================"
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Quarto is installed
echo "1. Checking Quarto installation..."
if command -v quarto &> /dev/null; then
    QUARTO_VERSION=$(quarto --version)
    echo -e "${GREEN}✓ Quarto is installed (version: $QUARTO_VERSION)${NC}"
else
    echo -e "${RED}✗ Quarto is not installed${NC}"
    echo "  Please install from: https://quarto.org/docs/get-started/"
fi
echo ""

# Check for required files
echo "2. Checking required files..."
REQUIRED_FILES=(
    "_quarto.yml"
    "index.qmd"
    "research.qmd"
    "education.qmd"
    "teaching.qmd"
    "skills.qmd"
    "contact.qmd"
    "styles.css"
    "photo.jpg"
    "Jiakun_Wang_CV.pdf"
)

ALL_FILES_PRESENT=true
for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$file" ]; then
        echo -e "${GREEN}✓ $file exists${NC}"
    else
        echo -e "${RED}✗ $file is missing${NC}"
        ALL_FILES_PRESENT=false
    fi
done
echo ""

# Try to render a preview
if $ALL_FILES_PRESENT && command -v quarto &> /dev/null; then
    echo "3. Testing Quarto render..."
    echo "  (This may take a moment...)"
    
    if quarto render index.qmd 2>/dev/null; then
        echo -e "${GREEN}✓ Quarto can render your files${NC}"
        
        # Check if docs folder was created
        if [ -d "docs" ]; then
            echo -e "${GREEN}✓ Output directory 'docs' created successfully${NC}"
        else
            echo -e "${YELLOW}⚠ Output directory 'docs' not found${NC}"
            echo "  Check your _quarto.yml configuration"
        fi
    else
        echo -e "${RED}✗ Error rendering Quarto files${NC}"
        echo "  Run 'quarto render' to see detailed error messages"
    fi
else
    echo -e "${YELLOW}⚠ Skipping render test${NC}"
fi
echo ""

# Summary
echo "======================================"
echo "📊 Summary"
echo "======================================"

if $ALL_FILES_PRESENT && command -v quarto &> /dev/null; then
    echo -e "${GREEN}✅ Your Quarto website is ready!${NC}"
    echo ""
    echo "Next steps:"
    echo "1. Preview locally: quarto preview"
    echo "2. Build website: quarto render"
    echo "3. Deploy to GitHub Pages or Quarto Pub"
    echo ""
    echo "For deployment instructions, see README.md"
else
    echo -e "${RED}❌ Some issues need to be fixed${NC}"
    echo ""
    echo "Please resolve the issues above before proceeding."
fi

echo ""
echo "======================================"
echo "Need help? Check the README.md file"
echo "======================================"

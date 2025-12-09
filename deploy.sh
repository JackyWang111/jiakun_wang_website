#!/bin/bash

# Deploy script for GitHub Pages
# Make this file executable: chmod +x deploy.sh
# Run with: ./deploy.sh

echo "🚀 Starting deployment to GitHub Pages..."

# Check if quarto is installed
if ! command -v quarto &> /dev/null; then
    echo "❌ Quarto is not installed. Please install it first."
    echo "Visit: https://quarto.org/docs/get-started/"
    exit 1
fi

# Render the website
echo "📝 Rendering website..."
quarto render

# Check if the docs folder exists
if [ ! -d "docs" ]; then
    echo "❌ docs folder not found. Check your _quarto.yml configuration."
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "🔧 Initializing git repository..."
    git init
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update website $(date +'%Y-%m-%d %H:%M:%S')"

# Check if remote origin exists
if git remote | grep -q "origin"; then
    echo "📤 Pushing to existing remote..."
    git push origin main
else
    echo "⚠️  No remote repository found."
    echo "Please add your GitHub repository:"
    echo "git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
    echo "Then run: git push -u origin main"
fi

echo "✅ Deployment complete!"
echo "🌐 Your site will be available at GitHub Pages in a few minutes."
echo ""
echo "Don't forget to enable GitHub Pages in your repository settings:"
echo "Settings → Pages → Source: Deploy from branch → Branch: main → Folder: /docs"

#!/bin/bash

# GitHub Setup Script for Airline Passengers Forecasting Project

echo "🚀 Setting up GitHub repository for Airline Passengers Forecasting"
echo "=================================================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Create .env from template if it doesn't exist
if [ ! -f ".env" ]; then
    echo "🔧 Creating .env file from template..."
    cp .env.example .env
    echo "✅ .env file created. Please edit it with your preferences."
else
    echo "✅ .env file already exists"
fi

# Add files to git
echo "📁 Adding files to Git..."
git add .
echo "✅ Files added to staging area"

# Show what will be committed
echo ""
echo "📋 Files to be committed:"
git status --porcelain

# Show what's ignored
echo ""
echo "🚫 Files that will be ignored:"
echo "- airline_forecasting_env/ (virtual environment)"
echo "- .env (environment variables)"
echo "- __pycache__/ (Python cache)"
echo "- .ipynb_checkpoints (Jupyter checkpoints)"
echo "- models/*.pkl (model artifacts)"

echo ""
echo "🎯 Next steps:"
echo "1. Review the files above"
echo "2. Commit your changes: git commit -m 'Initial commit: Airline passengers forecasting project'"
echo "3. Create a GitHub repository at: https://github.com/new"
echo "4. Add remote: git remote add origin https://github.com/yourusername/airline-passengers-forecasting.git"
echo "5. Push to GitHub: git push -u origin main"
echo ""
echo "📚 Don't forget to:"
echo "- Update README.md with your GitHub username"
echo "- Edit .env with your preferences"
echo "- Add collaborators if needed"
echo ""
echo "🔒 Security reminder:"
echo "- Never commit .env files with sensitive data"
echo "- Virtual environments are excluded from Git"
echo "- Model artifacts are gitignored (add manually if needed)"

echo ""
echo "=================================================================="
echo "✅ GitHub setup preparation complete!"

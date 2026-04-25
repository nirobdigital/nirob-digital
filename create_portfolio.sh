#!/bin/bash

# Base directory
BASE_DIR="$HOME/nirob-digital/NirobDigital-Portfolio"

# Array of main folders
folders=("Android-Projects/Apps/App1" "Android-Projects/Apps/App2" "Android-Projects/Apps/Sample-App" \
"Android-Projects/Libraries" "Android-Projects/Jetpack-Compose-Projects" \
"Termux-Scripts/Automation" "Termux-Scripts/Backup-Scripts" "Termux-Scripts/Network-Scripts" \
"Git-GitHub/Git-Commands-Examples" "Git-GitHub/GitHub-Actions" "Git-GitHub/Repo-Templates" \
"Google-Products/Google-Cloud-Scripts" "Google-Products/Firebase-Projects" "Google-Products/Google-Sheets-Automation" "Google-Products/Google-Docs-Templates" \
"Social-Media/Twitter-Bots" "Social-Media/Threads-Automation" "Social-Media/Instagram-Posts-Scripts" \
"ProtonMail/Proton-API" "ProtonMail/Email-Automation" \
"AI-Projects/ML-Models" "AI-Projects/NLP-Projects" "AI-Projects/Data-Processing" \
"Digital-Products/Podcast-Templates" "Digital-Products/Social-Media-Planners" "Digital-Products/Checklists" \
"Resources/Android-Notes" "Resources/Termux-Notes" "Resources/AI-Notes" "Resources/Git-Notes" \
"Portfolio-Assets/Mockups" "Portfolio-Assets/Screenshots" "Portfolio-Assets/Icons")

# Create folders and README.md in each
for folder in "${folders[@]}"
do
    mkdir -p "$BASE_DIR/$folder"
    touch "$BASE_DIR/$folder/README.md"
done

# Create main files
touch "$BASE_DIR/README.md"
touch "$BASE_DIR/LICENSE"
echo -e "*.apk\n*.aab\n*.log\n*.DS_Store" > "$BASE_DIR/.gitignore"

# Initialize git and push
cd "$BASE_DIR"
if [ ! -d ".git" ]; then
    git init
    echo "Enter your GitHub repository URL (HTTPS):"
    read GITHUB_REPO
    git remote add origin $GITHUB_REPO
fi

git add .
git commit -m "Initial commit: Full portfolio structure created"
git branch -M main
git push -u origin main

echo "✅ Full GitHub portfolio created and pushed!"

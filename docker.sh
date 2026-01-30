#!/bin/bash

# Step 1: Install GitHub CLI (gh)
sudo apt update
#sudo apt install gh -y


# Check install:

gh --version

# Step 2: Login to GitHub from terminal
gh auth login
git config --global user.email "mwagh5022@gmail.com"
git config --global user.name "Manish Wagh"

# Verify:

gh auth status

# Step 3: Go to your project folder
cd ~/devops-linux

# Step 4: Create new GitHub repository
gh repo create

# You’ll see prompts like:
<< EOF
Repository name: devops-linux
Description: DevOps practice repo
Visibility: Public / Private
Add remote? Yes
Push local commits? Yes

EOF
# 🎉 Repository is created on GitHub + connected to Ubuntu

# 🔹 Step 5: Push code (if not auto-pushed)
git push -u origin main


# (or your branch)

git push -u origin project_1

# ✅ METHOD 2: Create Repo on GitHub Website + Connect from Ubuntu
# 🔹 Step 1: Create repo on GitHub (browser)
<< EOF
GitHub → New Repository

Repo name

❌ Do NOT add README
Create Repository
EOF

# 🔹 Step 2: Connect Ubuntu project to GitHub
cd ~/devops-linux
git init
git branch -M main
git remote add origin https://github.com/Mwagh5022/REPO.git

# 🔹 Step 3: Push code
git add .
git commit -m "Initial commit"
git push -u origin main

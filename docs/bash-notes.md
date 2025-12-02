## Bash Notes

This file documents Bash commands practiced while working on this repo.\
It serves as a reproducible reference for learners exploring command line basics.

### Navigation

-   `pwd` → Print current working directory
-   `ls -a` → List all files, including hidden ones
-   `cd sql-advent-calendar-2025` → Enter the project folder
-   `cd ..` → Move back up one directory

*(Windows-specific)*\
- `cd /e` → Switch to E: drive root

### File Management

-   `mkdir day-01` → Create a new folder
-   `touch day-01/solution.sql` → Create an empty SQL file
-   `rm -i example.md` → Delete file with confirmation

### Git Basics

-   `git init` → Initialize a new repo
-   `git clone <repo-url>` → Clone an existing repo
-   `git add <file>` → Stage specific changes
-   `git add .` → Stage all changes
-   `git commit -m "message"` → Commit staged changes
-   `git push` → Push commits to GitHub
-   `git pull` → Fetch and merge changes from GitHub

### Editing Files (Nano)

-   `nano bash-notes.md` → Open file in Nano editor
-   `Ctrl + O` → Save
-   `Enter` → Confirm filename
-   `Ctrl + X` → Exit
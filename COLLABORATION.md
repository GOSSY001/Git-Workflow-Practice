# Collaborative Git Workflow Guide

This document outlines best practices for collaborative development using Git.

## Team Workflow

### 1. Feature Branch Development
- Create a feature branch from `main`: `git checkout -b feature/<feature-name>`
- Work on the branch locally
- Keep commits organized and meaningful

### 2. Before Pushing
- Fetch latest changes: `git fetch origin`
- Rebase on main to avoid merge conflicts: `git rebase origin/main`
- Push your branch: `git push -u origin feature/<feature-name>`

### 3. Code Review via Pull Request
- Create a PR on GitHub for team review
- Request reviews from team members
- Address feedback and push updates

### 4. Merging to Main
- Ensure CI/CD checks pass
- Require at least one approval
- Merge via PR (squash or merge commit)
- Delete feature branch after merge

## Communication Tips
- Use clear, descriptive commit messages
- Reference issue numbers in commits
- Add meaningful PR descriptions
- Communicate async with PR comments

## Conflict Resolution
- When conflicts occur, pull latest main: `git pull origin main`
- Resolve conflicts manually
- Commit and push the resolved changes
- Never force push to shared branches


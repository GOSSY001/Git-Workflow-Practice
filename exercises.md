# Exercises — Git Workflow Mastery

Work through these exercises in a new directory. Replace `<your-remote-url>` with your GitHub repo URL when needed.

1) Initialize and configure

```bash
mkdir git-workshop && cd git-workshop
git init
git config user.name "Your Name"
git config user.email "you@example.com"
```

2) Create initial file and commit

```bash
echo "# Git Workshop" > README.md
git add README.md
git commit -m "chore: add initial README"
```

3) Create a feature branch and make changes

```bash
git checkout -b feature/add-intro
echo "Intro text" > intro.txt
git add intro.txt
git commit -m "feat: add intro"
```

4) Push to remote and open PR

```bash
git remote add origin <your-remote-url>
git push -u origin feature/add-intro
# Then open a Pull Request on GitHub from this branch into main
```

5) Simulate and resolve a merge conflict

```bash
# On main
git checkout main
echo "Main line" > conflict.txt
git add conflict.txt
git commit -m "chore: main change"

# Back on feature branch
git checkout feature/add-intro
echo "Feature line" > conflict.txt
git add conflict.txt
git commit -m "feat: feature change causing conflict"

# Try merging
git checkout main
git merge feature/add-intro
# Resolve conflicts in conflict.txt, then:
git add conflict.txt
git commit -m "fix: resolve merge conflict"
```

6) Advanced: interactive rebase, revert, cherry-pick

```bash
# Rebase feature branch onto main
git checkout feature/add-intro
git rebase -i main

# Revert a commit
git checkout main
git revert <commit-hash>

# Cherry-pick a commit from another branch
git cherry-pick <commit-hash>
```

7) Cleanup

```bash
git branch -d feature/add-intro
git push origin --delete feature/add-intro
```

Notes:
- Use `git status` and `git log --oneline --graph --all` often.
- Replace placeholders like `<commit-hash>` and `<your-remote-url>` appropriately.

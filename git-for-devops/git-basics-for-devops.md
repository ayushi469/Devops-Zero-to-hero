# 📚 Git & GitHub Basics for DevOps Engineers

Git is one of the most important tools for a DevOps Engineer. It helps developers collaborate, track changes, and maintain the history of a project.

---

# Git vs GitHub

## 1. Git

**Git** is a **distributed version control system (VCS)** that tracks changes in your source code over time.

### Features

- Tracks every change made to files.
- Maintains the complete history of a project.
- Allows multiple developers to work simultaneously.
- Works locally without an internet connection.
- Supports branching and merging.

---

## 2. GitHub

**GitHub** is a cloud-based platform that hosts Git repositories.

Think of GitHub as **Google Drive for Git repositories**.

It allows developers to:

- Store repositories online.
- Collaborate with team members.
- Review code through Pull Requests.
- Track issues.
- Integrate CI/CD pipelines.

> **Note:** Git works independently of GitHub. GitHub simply provides remote storage and collaboration features.

---

# Git Terminology

## Repository (Repo)

A **Git Repository** is a project directory managed by Git.

It contains:

- Source Code
- Commit History
- Branches
- Git Configuration

---

## Commit

A **Commit** is a snapshot of your project at a specific point in time.

Every commit has a unique commit ID (SHA).

Example:

```text
A → B → C → D
```

Each letter represents a commit.

---

## Branch

A **Branch** is an independent line of development.

Developers create branches to work on new features or bug fixes without affecting the main codebase.

Example:

```text
main
 │
 ├── feature/login
 │
 ├── feature/payment
 │
 └── bugfix/header
```

---

## Clone

`git clone` downloads an existing GitHub repository to your local machine.

```bash
git clone <repository-url>
```

---

## Fork

A **Fork** creates a copy of someone else's GitHub repository under your own GitHub account.

After forking, you can clone your own copy and make changes without affecting the original repository.

```
Original Repository
          │
          ▼
     Fork to Your GitHub
          │
          ▼
      Clone Locally
```

---

# Git Architecture

Every change in Git goes through three stages.

```
Working Directory
        │
        ▼
 Staging Area (Index)
        │
        ▼
 Local Repository
        │
        ▼
 Remote Repository (GitHub)
```

### Working Directory

Where you edit your files.

---

### Staging Area

Stores the changes you want to include in the next commit.

Command:

```bash
git add .
```

---

### Local Repository

Stores all committed snapshots locally.

Command:

```bash
git commit -m "Commit message"
```

---

### Remote Repository

A repository hosted on GitHub, GitLab, or Bitbucket.

Command:

```bash
git push
```

---

# Common Git Commands

## View Commit History

```bash
git log
```

Displays the complete commit history.

---

## View Compact Commit History

```bash
git log --oneline
```

Shows each commit in a single line.

---

## Compare Changes

```bash
git diff
```

Shows the differences between modified files and the last commit.

---

## Remove a File from Staging Area

```bash
git restore --staged <file-name>
```

Removes the file from the staging area without deleting your changes.

---

## Discard Local Changes

```bash
git restore <file-name>
```

Restores the file to its last committed state.

> ⚠️ Any uncommitted changes to that file will be lost.

---

# Git Fetch vs Git Pull

## git fetch

```bash
git fetch
```

Downloads the latest changes from the remote repository **without merging** them into your current branch.

Useful when:

- You want to inspect changes before merging.
- You want to compare local and remote branches.

---

## git pull

```bash
git pull
```

Downloads the latest changes **and automatically merges** them into your current branch.

Equivalent to:

```bash
git fetch
git merge
```

---

# Git Merge

Used to combine changes from one branch into another.

Example:

```bash
git checkout main
git merge feature/login
```

### Result

```
        A
       / \
B ---- C   D
       \ /
        M
```

Git creates a **Merge Commit** (`M`) that preserves the history of both branches.

---

# Git Reset

`git reset` moves the current branch pointer to a previous commit.

It is commonly used on **local branches** before changes are shared.

---

## Soft Reset

```bash
git reset --soft HEAD~1
```

Removes the last commit but keeps all changes **staged**.

```
Commit ❌
Changes ✅
Staging ✅
```

---

## Mixed Reset (Default)

```bash
git reset --mixed HEAD~1
```

Removes the last commit and unstages the changes.

```
Commit ❌
Changes ✅
Staging ❌
```

---

## Hard Reset

```bash
git reset --hard HEAD~1
```

Removes the last commit **and permanently deletes all associated changes**.

```
Commit ❌
Changes ❌
```

> ⚠️ Be careful. This operation permanently discards uncommitted work.

---

# Git Revert

```bash
git revert <commit-id>
```

Instead of deleting history, Git creates a **new commit** that reverses the changes introduced by the specified commit.

Example:

```
A → B → C → D

Revert C

A → B → C → D → E
```

Here, commit **E** undoes the changes made in commit **C**.

### Why use `git revert`?

- Safe for shared branches.
- Does not rewrite commit history.
- Avoids conflicts for other developers.

This is the preferred way to undo changes that have already been pushed to a shared repository.

---

# Git Cherry-pick

```bash
git cherry-pick <commit-id>
```

Copies a specific commit from one branch and applies it to another branch.

### Common Use Case

A production bug is fixed in one branch, and you want only that fix in another branch without merging all other changes.

---

# Git Commit --amend

```bash
git commit --amend
```

Modifies the most recent commit.

You can:

- Update the commit message.
- Add forgotten files to the last commit.

Instead of creating:

```
A → B → C → D
```

Git updates commit **D**.

This keeps the history cleaner.

---

# Git Rebase

```bash
git rebase main
```

Replays your branch's commits on top of another branch.

### Benefits

- Cleaner, linear history.
- No unnecessary merge commits.
- Easier to read commit history.

Example:

Before:

```
A → B → C (main)
     \
      D → E (feature)
```

After Rebase:

```
A → B → C → D → E
```

The commit IDs of `D` and `E` change because they are recreated on top of the latest `main`.

> ⚠️ Avoid rebasing branches that have already been shared with other developers.

---

# Merge vs Rebase

| Feature | Merge | Rebase |
|----------|--------|---------|
| Creates Merge Commit | ✅ Yes | ❌ No |
| Keeps Original History | ✅ Yes | ❌ Rewrites History |
| Commit IDs Change | ❌ No | ✅ Yes |
| Linear History | ❌ No | ✅ Yes |
| Safe for Shared Branches | ✅ Yes | ⚠️ Use with Caution |

---

# Quick Summary

| Command | Description |
|----------|-------------|
| `git log` | View commit history |
| `git log --oneline` | Compact commit history |
| `git diff` | View changes |
| `git fetch` | Download remote changes without merging |
| `git pull` | Fetch and merge remote changes |
| `git merge` | Merge another branch into the current branch |
| `git restore` | Restore file changes |
| `git restore --staged` | Unstage a file |
| `git reset --soft` | Undo commit, keep staged changes |
| `git reset --mixed` | Undo commit, keep unstaged changes |
| `git reset --hard` | Undo commit and discard changes |
| `git revert` | Safely undo a commit by creating a new commit |
| `git cherry-pick` | Apply a specific commit to another branch |
| `git commit --amend` | Modify the last commit |
| `git rebase` | Replay commits on top of another branch |

---


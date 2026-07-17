##### 

1. Git: It is a version control system that keeps history of each change. It works without internet.
2. Github: It is like a googel drive for git repos. It stores repo online and developer can pull code from github.



#### Terminology

1. Repos: A folder managed by git.
2. Commit: A snapshot of your changes
3. Branch: A separate code of code.
4. clone: Download repos from github link into git
5. fork: You copy the github repo of other own into your account , and then clone it.



####### Git architecture:

Working directory -> Staging area -> Repository




#### Commands :

1. git log : To see the histroy
2. git log --oneline : To see the history in one line


3. git merge 
	process: git checkout main
		 git merge feature/demo-branch

4. git diff : To see the changes
5. git restore --staged <file-name>: remove staged file
6. git restore <file-name>: restore changes

7. git fetch: It only downloads the changes from the main but don't merge the changes into the wokring directory ( when you just want to see what changes has 
	      made manly in production )

8. git pull: It download and merge the changes into working directory.


########## Important :

1. git reset --soft HEAD~1: It undo one commit but keeps the changes into staging area. ( mostly do when we work on our local )
2. git reset --mixed HEAD~1: It undo one commit but keeps the changes unstaged.
3. git reset --hard HEAD~1: It undo one commit and also discard the changes from git.

4. git revert <revert-commit-id>: It doesn't undo the commit. It comes ont the commit which we want to remove and discard the changes and again create
				  new commit and merge it.

5. Mostly use git revert if something fails, so that not developer gets conflict , as when it will take new take new code, it won't see those changes

5. git cheerypick <commit-id>: When we want one changes to fix the other issue, we use this command. mainly in production for hot issue bug fixes.
6. git commit --amend: To don't craete a new commit and again and again commit on one commit.
7. git rebase: It will merge the changes but only merge the one commit and keeps the history clean
8. git merged: It merged the changes and also all the commit will be in main branch as well one extra commit merge.

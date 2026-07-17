# 👤 User Management Commands

User management commands help you create, modify, delete users and groups, manage passwords, and enforce security policies.

## Commands Covered

| Command | Description |
|---------|-------------|
| `useradd <username>` | Creates a new user. By default, it does not create a home directory (unless configured or `-m` is used). |
| `adduser <username>` | Creates a new user, home directory, default shell, and a group with the same name as the user (on most Linux distributions). |
| `passwd <username>` | Creates or changes the password of a user. |
| `groupadd <group-name>` | Creates a new group. |
| `userdel <username>` | Deletes the user but keeps the user's home directory. |
| `userdel -r <username>` | Deletes the user along with the user's home directory and mail spool. |
| `groupdel <group-name>` | Deletes the specified group. |
| `usermod -aG <group-name> <user-name>` | Adds a user to an additional group without removing the user's existing group memberships. |
| `id` | It shows the user id or group id information about user or group . |

---

# 📂 Important User Configuration Files

Linux stores user, group, and password information inside the following files.

## Files Covered

| File | Description |
|------|-------------|
| `/etc/passwd` | Stores user account information such as username, UID, GID, home directory, and default shell. |
| `/etc/group` | Stores information about groups and their members. |
| `/etc/shadow` | Stores encrypted (hashed) user passwords. Passwords cannot be recovered and must be reset if forgotten. |

---

# 🔐 File Permission Commands

These commands help manage file ownership and permissions.

Important notes: r=4, w=2, o=1

## Commands Covered

| Command | Description |
|---------|-------------|
| `chmod o=rwx <file>` | Gives read, write, and execute permissions to others. |
| `chmod 466 <file>` | Sets User = Read, Group = Read + Write, Others = Read + Write permissions. |
| `chown <owner>:<group> <file>` | Changes both the owner and group ownership of a file. |
| `chown <owner> <file>` | Changes only the owner of a file. |
| `chgrp <group-name> <file>` | Changes only the group ownership of a file. |
| `chmod -R 777 <directory>` | Recursively changes permissions for all files and directories inside the specified directory. |

---

# 🔒 User Security & Password Policies

These commands help enforce password policies and manage user accounts.

## Commands Covered

| Command | Description |
|---------|-------------|
| `chage -M 90 <user-name>` | Sets the maximum password validity to 90 days. |
| `passwd -l <user-name>` | Locks the user's password, preventing password-based login. |
| `passwd -u <user-name>` | Unlocks the user's password, allowing password-based login again. |

---

```

# ⚙️ Process Management Commands

Process management commands help you monitor, manage, and troubleshoot running processes in Linux.

## Commands Covered

| Command | Description |
|---------|-------------|
| `ps aux` | Lists all running processes without giving information about CPU and Memory |
| `ps -ef` | Lists all running processes and also inform about CPU and memory |
| `top` | Displays live information about running processes, including CPU and memory usage of each process or service or any shell inforamtion |
| `htop` | Interactive version of `top` with a more user-friendly interface. |
| `kill <PID>` | Gracefully terminates a process. |
| `kill -9 <PID>` | Forcefully terminates a process. |
| `kill -3 <PID>` | Generates a thread dump or core dump of a process for debugging without immediately killing the process. |
| `kill -STOP <PID>` | Pauses a running process. |
| `kill -CONT <PID>` | Resumes a paused process. |
| `renice -n <priority> -p <PID>` | Changes the priority (nice value) of a running process. |
| `vmstat` | Displays system performance statistics. |

### Priority Range (`renice`)

- `-20` → Highest priority (gets more CPU time)
- `20` → Lowest priority (gets less CPU time)

---

# 🔧 Service Management Commands

A **service** is a background process (daemon) that usually starts automatically when the system boots.

## Commands Covered

| Command | Description |
|---------|-------------|
| `systemctl list-units --type=service` | Lists all active services. |
| `systemctl start <service>` | Starts a service. |
| `systemctl stop <service>` | Stops a service. |
| `systemctl restart <service>` | Restarts a service. |

---

# 💾 Disk Management Commands

Disk management commands help monitor memory, CPU, storage, and mounted disks.

## Commands Covered

| Command | Description |
|---------|-------------|
| `free -mh` | Displays memory usage in a human-readable format. |
| `nproc` | Shows the number of available CPU cores. |
| `df -h` | Displays filesystem disk usage. |
| `du -sh` | Shows the size of a directory. |
| `du -sh *` | Shows the size of all files and directories in the current directory. |
| `lsblk` | Lists all block devices and partitions. |
| `fdisk -l` | Displays detailed disk partition information. |
| `umount` | Unmounts a mounted filesystem. |

---

# 📦 How to Mount a Disk

### Scenario

Suppose you have attached a **30 GB** disk to your Linux system and want to use it.

### Steps

1. Create a mount point.

```bash
mkdir -p /mnt/demo-space
```

2. Create a filesystem.

```bash
mkfs -t ext4 /dev/xvdf
```

3. Mount the disk.

```bash
mount /dev/xvdf /mnt/demo-space
```

> **Note:** Here, `/dev/xvdf` is the disk (block device) name.

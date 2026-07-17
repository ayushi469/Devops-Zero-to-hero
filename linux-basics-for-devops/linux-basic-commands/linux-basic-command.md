# 📁 Linux Commands Every DevOps Engineer Should Learn

These are some of the most commonly used Linux commands that every DevOps Engineer should know for day-to-day tasks.

---

# 📂 Navigation Commands

Navigation commands help you move around the filesystem and manage files and directories.

## Commands Covered

| Command | Description |
|---------|-------------|
| `pwd` | Displays the current working directory. |
| `ls` | Lists files and directories in the current directory. |
| `ls -ltr` | Lists files and directories in long format, sorted by modification time (oldest first, newest at the bottom). |
| `cd <directory>` | Changes the current working directory. |
| `touch <file>` | Creates a new empty file. |
| `mkdir <directory-name>` | Creates a new directory. |
| `rm -rf <file/directory>` | Recursively and forcefully deletes a file or directory. Use with caution. |
| `locate <filename>` | Quickly searches for a file using the locate database. If the file is not found, run `sudo updatedb` to update the database. |
| `find . -name "<filename>"` | Searches for a file in the current directory and its subdirectories. |
| `tail -n 10 <file>` | Displays the last 10 lines of a file. |
| `head -n 10 <file>` | Displays the first 10 lines of a file. |

---

# 🖥️ System Information Commands

These commands provide information about the current Linux system.

## Commands Covered

| Command | Description |
|---------|-------------|
| `whoami` | Displays the currently logged-in user. |
| `hostname` | Displays the hostname of the system. |
| `hostnamectl` | Displays detailed information about the hostname, operating system, and kernel. |
| `w` | Displays currently logged-in users and what they are doing. |
| `uname -r` | Displays the Linux kernel version. |
| `uname -a` | Displays complete system information, including the kernel version and architecture. |
| `cat /etc/os-release` | Displays information about the Linux distribution. |
| `hostnamectl set-hostname <new-hostname>` | Permanently changes the system hostname. |

---

# 📝 Text Processing Commands

Text processing commands help extract or manipulate specific parts of a file.

## Commands Covered

### Character-based Extraction

| Command | Description |
|---------|-------------|
| `cut -c 1-3 <file>` | Extracts characters from position 1 to 3.<br>Example: `Linux` → `Lin` |
| `cut -c 1- <file>` | Extracts characters from position 1 to the end.<br>Example: `Linux` → `Linux` |
| `cut -c 1,3 <file>` | Extracts only the 1st and 3rd characters.<br>Example: `Linux` → `Ln` |
| `cut -c 3- <file>` | Extracts characters starting from the 3rd position.<br>Example: `Linux` → `nux` |
| `cut -c -5 <file>` | Extracts the first five characters.<br>Example: `Linux` → `Linux` |

---

### Delimiter-based Extraction

Suppose the file contains:

```text
Ayushi:DevOps:Linux
```

| Command | Output |
|---------|--------|
| `cut -d ':' -f1 <file>` | `Ayushi` |
| `cut -d ':' -f2 <file>` | `DevOps` |
| `cut -d ':' -f3 <file>` | `Linux` |
| `cut -d ':' -f1,3 <file>` | `Ayushi:Linux` |
| `cut -d ':' -f1-3 <file>` | `Ayushi:DevOps:Linux` |

> **Note:** `-d` specifies the delimiter (separator), and `-f` specifies which field(s) to extract.

---

# 🔄 Unique Data Commands (`uniq`)

The `uniq` command removes or identifies duplicate **consecutive** lines in a file.

> **Note:** `uniq` works only on **adjacent (consecutive)** duplicate lines. If duplicate lines are scattered throughout the file, use `sort` before `uniq`.

### Example

```text
Ayushi
Linux
Ayushi
Linux
```

The command:

```bash
uniq file.txt
```

will produce the same output because the duplicate lines are **not consecutive**.

If you first sort the file:

```bash
sort file.txt | uniq
```

Output:

```text
Ayushi
Linux
```

## Commands Covered

| Command | Description |
|---------|-------------|
| `uniq <file>` | Removes consecutive duplicate lines. |
| `uniq -c <file>` | Displays each unique line along with the number of consecutive occurrences. |
| `uniq -d <file>` | Displays only the duplicate consecutive lines. |
| `uniq -u <file>` | Displays only the lines that appear exactly once. |
| `sort <file> \| uniq` | Sorts the file first, then removes duplicate lines even if they were not consecutive. |

---

# 📊 AWK Commands

`awk` is a powerful text-processing tool used to extract, filter, and format data from files.

## Commands Covered

| Command | Description |
|---------|-------------|
| `awk '{print $1}' <file>` | Prints the first column of each line. |
| `awk '{print $1, $3}' <file>` | Prints the first and third columns. |
| `awk '{print $NF}' <file>` | Prints the last column of each line (`NF` = Number of Fields). |
| `awk '{print NR, $1}' <file>` | Prints the line number (`NR`) along with the first column. |

### Example

Suppose the file contains:

```text
Ayushi DevOps Bangalore
John AWS Delhi
Bob Linux Pune
```

| Command | Output |
|---------|--------|
| `awk '{print $1}' file.txt` | `Ayushi`<br>`John`<br>`Bob` |
| `awk '{print $1,$3}' file.txt` | `Ayushi Bangalore`<br>`John Delhi`<br>`Bob Pune` |
| `awk '{print $NF}' file.txt` | `Bangalore`<br>`Delhi`<br>`Pune` |
| `awk '{print NR,$1}' file.txt` | `1 Ayushi`<br>`2 John`<br>`3 Bob` |

---

# ✏️ SED Commands

`sed` (Stream Editor) is used to search, replace, delete, print, and edit text in a file.

## Commands Covered

| Command | Description |
|---------|-------------|
| `sed 's/<old_text>/<new_text>/' <file>` | Replaces the first occurrence of a word in each line. |
| `sed 's/<old_text>/<new_text>/g' <file>` | Replaces all occurrences of a word in each line. |
| `sed -i 's/<old_text>/<new_text>/g' <file>` | Replaces all occurrences in the file and saves the changes. *(On macOS use `sed -i ''` instead.)* |
| `sed '2d' <file>` | Deletes the second line from the output. |
| `sed -n '5p' <file>` | Prints only the fifth line. |

### Example

Suppose the file contains:

```text
Linux is awesome
Linux is powerful
I love Linux
```

| Command | Output |
|---------|--------|
| `sed 's/Linux/Ubuntu/' file.txt` | Replaces only the first `Linux` in each line. |
| `sed 's/Linux/Ubuntu/g' file.txt` | Replaces every occurrence of `Linux` in each line. |
| `sed '2d' file.txt` | Removes the second line from the output. |
| `sed -n '2p' file.txt` | Prints only the second line. |

> **Note:** `sed -i` modifies the original file. If you only want to preview the changes, omit the `-i` option.

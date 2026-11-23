Automated Backup & Recovery System

1. Project Overview

The Automated Backup & Recovery System is a Linux-based project developed using Bash Shell Scripting.

The main purpose of this project is to protect important files from accidental deletion or data loss by creating backup copies and restoring them whenever required.

2. Project Objectives

- Automate the backup process.
- Create compressed backup archives.
- Restore deleted or lost files.
- Maintain backup and recovery logs.
- Reduce manual work and protect important data.

3. Technologies Used

- Operating System: Red Hat Enterprise Linux (RHEL 10)
- Scripting Language: Bash Shell Scripting
- Backup Utility: TAR
- Version Control: Git and GitHub
- Automation: Cron Jobs

4. Project Directory Structure

automated-backup-recovery-system/
│
├── 01-Documentation/
│   ├── README.md
│   └── Screenshots/
│
├── 02-Backup/
│   ├── Source/
│   ├── Archives/
│   └── backup.sh
│
├── 03-Recovery/
│   ├── Restored/
│   └── restore.sh
│
└── 04-Monitoring-Logs/
    ├── backup.log
    └── restore.log

5. Project Explanation (Step by Step)

Step 1: Create Source Files

Created sample files such as:

- company.txt
- server.txt
- test.txt

These files represent the original data that needs protection.

Step 2: Create Backup Script

Developed a Bash script to automate the backup process.

The script collects source files and prepares them for backup.

Step 3: Create Backup Archive

Used the TAR utility to create compressed backup archives in ".tar.gz" format.

Timestamp-based filenames help identify different backups.

Step 4: Maintain Logs

Created backup and recovery log files to record operations and track their status.

Step 5: Perform Recovery

When original files are deleted or unavailable, the backup archive can be used to recover the data.

Step 6: Execute Restore Script

Used a Bash restore script to extract files from the selected backup archive.

Step 7: Verify Restored Files

Checked the restored directory to confirm that the recovered files are available.

6. Key Features

- Automated file backup using Shell Scripting.
- Compressed backup archives using TAR.
- Timestamp-based backup naming.
- File restoration from backup archives.
- Backup and recovery log management.
- Organized project directory structure.

7. Linux Commands Used

Command| Purpose
mkdir| Create directories
touch| Create files
cp| Copy files
mv| Move files
tar| Create and extract archives
chmod| Change file permissions
ls| List files
cat| Display file content
tree| Display directory structure
crontab| Schedule automated tasks

8. Project Outcome

Successfully developed a Linux-based backup and recovery system using Bash Shell Scripting and TAR.

This project helped me gain practical knowledge of Linux commands, file management, shell scripting, backup operations, recovery processes and log management.

9. Learning Outcomes

- Linux Administration
- Bash Shell Scripting
- File and Directory Management
- Backup and Recovery Operations
- Cron Job Scheduling
- Git and GitHub

10. Author

Pranav Adhau

GitHub: https://github.com/pranavadhau-11

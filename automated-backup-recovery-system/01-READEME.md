Automated Backup & Recovery System

1. Project Overview

This project automates file backup and recovery in Linux using Bash scripting. It helps protect important data and restore files when required.

2. Project Objectives

- Automate file and directory backups.
- Compress backup files using TAR and GZIP.
- Restore files from backup archives.
- Schedule automatic backups using Cron.
- Maintain backup and recovery logs.

3. Technologies Used

- Operating System: RHEL 10
- Scripting: Bash Shell
- Backup Tool: TAR
- Scheduling: Cron
- Environment: VMware

4. Project Structure

automated-backup-recovery/
│
├── backup.sh
├── restore.sh
├── README.md
├── source/
├── backups/
├── logs/
├── restored/
└── screenshots/

5. Project Features

- Automated Backup
- File Compression
- Data Recovery
- Cron Job Scheduling
- Backup Activity Logging
- Recovery Activity Logging

6. How to Execute

Step 1: Clone the repository

git clone <repository-url>
cd automated-backup-recovery

Step 2: Give execution permissions

chmod +x backup.sh restore.sh

Step 3: Run backup

./backup.sh

Step 4: Restore backup

./restore.sh backups/backup_FILENAME.tar.gz

Replace the filename with the actual backup archive.

7. Learning Outcomes

- Practical Linux System Administration
- Bash Scripting
- Backup and Recovery Management
- Cron Job Automation
- File Compression and Management
- Linux Log Management

8. Conclusion

This project demonstrates practical Linux administration skills by implementing an automated backup and recovery solution using Bash scripting on RHEL 10.

---

Project Type: Linux System Administration
Level: Beginner to Intermediate

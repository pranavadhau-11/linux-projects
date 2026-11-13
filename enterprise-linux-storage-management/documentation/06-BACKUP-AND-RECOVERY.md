Backup and Recovery – Linux Storage Management

1. Introduction

Backup and Recovery are important tasks in Linux System Administration.

Backup helps protect important data before performing storage operations such as partition creation, filesystem modification and storage extension.

Recovery helps restore data from a previously created backup.

2. Backup Objectives

- Protect important system data.
- Prevent accidental data loss.
- Maintain data availability.
- Support recovery after storage failures.
- Verify backup integrity.

3. Backup Preparation

Before performing storage operations:

1. Identify the correct storage device.
2. Verify the source and destination.
3. Check available disk space.
4. Take a backup of important data.
5. Verify that the backup is readable.
6. Proceed only after backup verification.

4. Backup Commands

Create a Backup Directory

mkdir -p /backup

Create a Compressed Backup

tar -czvf /backup/data-backup.tar.gz /data

List Backup Contents

tar -tzvf /backup/data-backup.tar.gz

Check Backup File

ls -lh /backup/

5. Recovery Procedure

1. Identify the required backup.
2. Verify the backup archive.
3. Check the recovery destination.
4. Restore data to the appropriate location.
5. Verify restored files and directories.

Restore Backup

tar -xzvf /backup/data-backup.tar.gz -C /

Important: Verify the archive contents and restore destination before running a recovery command.

6. Safety Precautions

- Always take backups before modifying partitions.
- Never overwrite important data without verification.
- Keep backups separate from the source storage device.
- Check backup integrity.
- Use dedicated virtual disks for practical operations.

7. Conclusion

Backup and Recovery procedures help protect important data and improve storage reliability in Linux environments.

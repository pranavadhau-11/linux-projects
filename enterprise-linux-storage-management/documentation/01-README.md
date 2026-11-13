Enterprise Linux Storage Management

1. Project Overview

This project focuses on Linux Storage Management and Administration using Red Hat Enterprise Linux (RHEL 10).

The project demonstrates practical storage administration tasks and Bash shell scripting for disk monitoring.

It is designed to simulate common Linux System Administrator responsibilities in an enterprise environment.

2. Project Objectives

- Identify and manage storage devices.
- Create and manage disk partitions.
- Create and manage filesystems.
- Perform mounting and unmounting operations.
- Configure swap memory.
- Manage Logical Volume Management (LVM).
- Extend storage capacity.
- Monitor disk utilization using Bash scripting.
- Understand storage troubleshooting and backup procedures.

3. Environment & Technologies

Component| Details
Operating System| Red Hat Enterprise Linux 10
Virtualization| VMware Workstation
Shell| Bash
Platform| Linux Server
Access| Root / Sudo

4. Project Modules

Module 1: Disk Identification

- Identify available storage devices.
- Check disk information.
- Monitor disk utilization.

Module 2: Partition Management

- Create disk partitions.
- View partition tables.
- Manage partition information.

Module 3: Filesystem Management

- Create filesystems.
- Check filesystem types.
- Monitor filesystem usage.

Module 4: Mount Management

- Mount and unmount filesystems.
- Configure permanent mounting.
- Manage /etc/fstab.

Module 5: Swap Management

- Create swap space.
- Enable and disable swap.
- Monitor swap utilization.

Module 6: LVM Management

- Create Physical Volumes (PV).
- Create Volume Groups (VG).
- Create Logical Volumes (LV).
- Extend logical volumes.

Module 7: Storage Extension

- Increase storage capacity.
- Extend filesystems.
- Verify available storage.

5. Shell Scripting & Automation

Disk Monitoring Script

Script Name: "disk-monitor.sh"

Description:

A Bash shell script developed to monitor disk utilization and display storage status.

Features:

- Checks disk usage.
- Displays mount point information.
- Shows disk utilization percentage.
- Displays storage status.
- Identifies normal disk usage conditions.

Execution Command:

bash scripts/disk-monitor.sh

Sample Output:

===== DISK MONITOR =====

Mount Point: appdata
Disk Usage: 5%

STATUS: Disk usage is NORMAL

6. Linux Commands Used

Command| Purpose
lsblk| List block devices
fdisk| Partition management
blkid| Identify filesystem
df -h| Check disk usage
du -sh| Check directory size
mkfs| Create filesystem
mount| Mount filesystem
umount| Unmount filesystem
mkswap| Create swap
swapon| Enable swap
pvcreate| Create physical volume
vgcreate| Create volume group
lvcreate| Create logical volume
lvextend| Extend logical volume
xfs_growfs| Extend XFS filesystem

7. Project Directory Structure

enterprise-linux-storage-management/
│
├── README.md
├── PROJECT-REPORT.md
├── OBJECTIVES.md
├── COMMANDS-REFERENCE.md
│
├── scripts/
│   └── disk-monitor.sh
│
├── 01-disk-identification/
├── 02-partition-management/
├── 03-filesystem-management/
├── 04-mount-management/
├── 05-swap-management/
├── 06-lvm-management/
├── 07-storage-extension/
├── 08-troubleshooting/
│
├── screenshots/
└── documentation/

8. Backup & Safety Precautions

- Verify disk devices before performing operations.
- Take backups before modifying partitions.
- Check filesystem types before resizing.
- Verify mount configuration.
- Perform practical operations using dedicated virtual disks.

9. Learning Outcomes

- Practical knowledge of Linux storage administration.
- Understanding of disk partitioning and filesystems.
- Knowledge of swap and LVM management.
- Experience with Bash shell scripting.
- Understanding of storage monitoring and troubleshooting.

10. Conclusion

This project provides practical experience in Linux Storage Management using RHEL 10.

It combines storage administration concepts with Bash automation to develop skills useful for Linux System Administrator and Junior Cloud Engineer roles.

Author

Pranav Adhau

Technologies: RHEL 10 | VMware Workstation | Bash Shell Scripting | Linux Storage Management

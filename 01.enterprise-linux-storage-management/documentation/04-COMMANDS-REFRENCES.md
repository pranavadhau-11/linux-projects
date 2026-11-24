Linux Storage Management – Commands Reference

1. Disk Identification

Command| Description
"lsblk"| Display available block devices
"lsblk -f"| Display filesystem information
"fdisk -l"| List disk partitions
"blkid"| Display UUID and filesystem type
"df -h"| Display disk space usage
"du -sh"| Display directory size

2. Partition Management

Command| Description
"fdisk /dev/sdb"| Manage disk partitions
"partprobe"| Inform kernel about partition changes
"lsblk"| Verify partitions

3. Filesystem Management

Command| Description
"mkfs.xfs"| Create XFS filesystem
"mkfs.ext4"| Create EXT4 filesystem
"blkid"| Verify filesystem type
"df -Th"| Display filesystem type and usage

4. Mount Management

Command| Description
"mount"| Mount a filesystem
"umount"| Unmount a filesystem
"findmnt"| Display mount information
"mount -a"| Mount filesystems configured in fstab

5. Swap Management

Command| Description
"mkswap"| Prepare swap space
"swapon"| Enable swap
"swapoff"| Disable swap
"free -h"| Display memory and swap usage
"swapon --show"| Display active swap areas

6. LVM Management

Command| Description
"pvcreate"| Create Physical Volume
"pvs"| Display Physical Volumes
"vgcreate"| Create Volume Group
"vgs"| Display Volume Groups
"lvcreate"| Create Logical Volume
"lvs"| Display Logical Volumes
"lvextend"| Extend Logical Volume

7. Filesystem Extension

Command| Description
"xfs_growfs"| Grow an XFS filesystem
"resize2fs"| Resize an ext2/ext3/ext4 filesystem
"df -h"| Verify filesystem capacity
"lsblk"| Verify block device size

8. Storage Troubleshooting

Command| Description
"dmesg"| Display kernel messages
"journalctl"| View system logs
"findmnt"| Check mount information
"df -h"| Check available disk space
"du -sh"| Check directory size

9. Bash Scripting

Command| Description
"bash script.sh"| Execute a Bash script
"chmod +x script.sh"| Make a script executable
"./script.sh"| Run an executable script
"bash -n script.sh"| Check Bash syntax

Important Notes

- Always verify disk names before storage operations.
- Take backups before modifying partitions.
- Check filesystem types before resizing.
- Verify storage changes after every operation.
- Use dedicated virtual disks for practical exercises.

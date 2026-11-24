Linux Storage Architecture

1. Overview

Linux Storage Architecture explains how storage devices are organized and accessed in a Linux operating system.

It includes disks, partitions, filesystems, mount points and Logical Volume Management (LVM).

2. Standard Storage Architecture

       Physical Disk
       /dev/sdb
           |
           v
       Partition
       /dev/sdb1
           |
           v
       Filesystem
       XFS / EXT4
           |
           v
       Mount Point
       /data
           |
           v
       User Data

3. LVM Architecture

       Physical Disks
        /dev/sdb
        /dev/sdc
            |
            v
     Physical Volumes
          (PV)
            |
            v
      Volume Group
          (VG)
            |
            v
     Logical Volume
          (LV)
            |
            v
       Filesystem
            |
            v
       Mount Point
            |
            v
         Data

4. Storage Components

Physical Disk

A physical or virtual storage device used to store data.

Partition

A logical division of a disk.

Filesystem

A structure used by Linux to organize and store files.

Mount Point

A directory through which a filesystem is accessed.

Physical Volume (PV)

A disk or partition initialized for LVM.

Volume Group (VG)

A storage pool created from one or more physical volumes.

Logical Volume (LV)

A flexible virtual storage volume created from a volume group.

5. Storage Verification Commands

lsblk
lsblk -f
df -hT
blkid
pvs
vgs
lvs

6. Conclusion

Linux storage architecture provides a structured way to manage disks, partitions, filesystems and logical volumes.

LVM provides flexibility for storage allocation and expansion.

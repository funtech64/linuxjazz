http://www.techrepublic.com/blog/linux-and-open-source/drive-and-partition-backups-with-dd/

$ sudo dd if=/dev/sdg5 of=/acer.img


Likewise, partitions can be restored from these backup copies:

# dd if=/srv/boot.img of=/dev/sda1

or:

# bunzip2 -dc /srv/boot2.img.bz2 | dd of=/dev/sda1

If you wanted to duplicate an existing drive to another, you would obtain a drive of the same (or larger) size. Assuming the drive to copy is /dev/sda and the destination drive is /dev/sdb, first use fdisk to recreate the appropriately-sized partitions, then use dd to do the actual cloning:

# sfdisk -d /dev/sda | sfdisk /dev/sdbstatus

# fdisk -l /dev/sda; fdisk -l /dev/sdb

BEST UPDATE

# sudo dd status=progress if=/dev/sdg2 of=/media/chip/Jacob/os-image-files/DD/Lightning/Windows7.img


# sudo dd status=progress if=/dev/sdb5 of=/dev/sdc

RESTORING A PARTITION

$ sudo dd if=/media/chip/Jacob/os-image-files/DD/RebeccaII/TrustyMint12-10-16.img of=/dev/sdb7 bs=4K


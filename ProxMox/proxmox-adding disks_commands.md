lsblk - see drives

cfdisk
and/or cfdisk /dev/sda

# mkfs.ext4 /dev/sdb1        <-not needed for Proxmox

Proxmox VE Steps
--------------------
https://proxmoxve.blogspot.com/2013/12/how-to-add-extra-storage-in-proxmox-ve.html
-------------------

 Now a physical volume has to be created.



!!! STEP #1
- type pvcreate /dev/sdb1

            Create a volume group. The name "Data-Storage" is an example. You can name it 
            anyway you want. Consider a logical name, because this is the name that will be 
            used in the proxmox web interface:

!!! STEP #2:
Type: vgcreate [drive name] /dev/sdb1

Add the storage in ProxMox

 
-       In the webinterface click on the directory Datacenter and then click
        on tab Storage.

-       Click Add – LVM Group

o    Type an ID Name for example data-storage

o    Base Storage: Existing Volume Groups

o    Volume Group: Data-Storage

o    Enabled: Checked

o    Other options should be adjusted accordenly to what you want
      with it. 

Now the extra storage has been added in Proxmox and ready for use.

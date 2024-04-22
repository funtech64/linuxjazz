qm terminal <id>
pct console <id>

Import the Virtual Machine 
This will create a new virtual machine, using cores, memory and VM name as read from the OVF manifest, and import the disks to the local-lvm storage. You have to congure the network manually.

qm importovf 999 WinDev1709Eval.ovf local-lvm


MORE

10.6.2 Adding an external disk image to a Virtual Machine You can also add an existing disk image to a VM, either coming from a foreign hypervisor, or one that you created yourself. Suppose you created a Debian/Ubuntu disk image with the vmdebootstrap tool: vmdebootstrap --verbose \--size 10GiB --serial-console \--grub --no-extlinux \--package openssh-server \--package avahi-daemon \--package qemu-guest-agent \--hostname vm600 --enable-dhcp \--customize=./copy_pub_ssh.sh \--sparse --image vm600.raw You can now create a new target VM for this image. qm create 600 --net0 virtio,bridge=vmbr0 --name vm600 --serial0 ? socket \--bootdisk scsi0 --scsihw virtio-scsi-pci --ostype l26 Add the disk image as unused0 to the VM, using the storage pvedir: qm importdisk 600 vm600.raw pvedir Finally attach the unused disk to the SCSI controller of the VM: qm set 600 --scsi0 pvedir:600/vm-600-disk-1.raw The VMis ready to be started.



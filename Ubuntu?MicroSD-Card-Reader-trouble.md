https://bugs.launchpad.net/ubuntu/+source/linux/+bug/995743

Bug Description

If I start up the computer with no SD card in the reader, it will not recognise SD cards inserted.

WORKAROUND: If you start up the computer with an SD card inserted, all is good.

WORKAROUND: The following rescan will find the SD card.

sudo su -l1
echo 1 > /sys/bus/pci/rescan

ProblemType: Bug
DistroRelease: Ubuntu 12.04
Package: linux-image-3.2.0-24-generic 3.2.0-24.37
ProcVersionSignature: Ubuntu 3.2.0-24.37-generic 3.2.14
Uname: Linux 3.2.0-24-generic x86_64

==========================================
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/995743
===========================================================
RebeccaII ~ # echo 1 > /sys/bus/pci/rescan
RebeccaII ~ # ubuntu-bug
The program 'ubuntu-bug' is currently not installed. You can install it by typing:
apt-get install apport
RebeccaII ~ # install apport
install: missing destination file operand after ‘apport’
Try 'install --help' for more information.
RebeccaII ~ # install apport linux
install: cannot stat ‘apport’: No such file or directory
RebeccaII ~ # apt-get install apport
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  python3-apport python3-problem-report
Suggested packages:
  apport-gtk apport-kde python3-launchpadlib
Recommended packages:
  apport-symptoms
The following NEW packages will be installed:
  apport python3-apport python3-problem-report
0 upgraded, 3 newly installed, 0 to remove and 3 not upgraded.
Need to get 268 kB of archives.
After this operation, 2,045 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y

==========================================
ubuntu-bug is part of apport.... so...

apt-get install apport

apt-get install apport-symptoms


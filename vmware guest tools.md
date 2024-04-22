To update Ubuntu, run the commands below

# sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove

Restart the guest machine.

After logging in to the guest machine, select VM –> Install VMware Tools from VMware workstation menu. VMware Workstation application temporarily connects a virtual CD-Rom drive into the guest machine with the guest tool.

Next, open the terminal and run the commands below to copy the tool into a temporary location.

# tar -xvf /media/$USER/"VMware Tools"/VMwareTools*.gz -C /tmp

Finally, run the commands below to automatically install the guest tool using the default values. This is the easiest way to install the tool in Ubuntu.

# sudo /tmp/vmware-tools-distrib/vmware-install.pl -d

Wait for the installer to complete the installation. After installing the guest tool, you’ll be prompted to restart your machine, do it.

When you restart, the guest machine will behave differently (in a good way), than it used to. With more advanced settings from VMware Tools menu, you will enable files copy, drag n’ drop, faster graphics and seamless integration with the host.

That’s it! This is how to install VMware guest tool in Ubuntu, and possibly in other Linux operating systems.

----------------------------------------------------------------------------
https://www.liberiangeek.net/2015/06/installing-vmware-guest-tools-in-ubuntu-15-04/
----------------------------------------------------------------------------


Unknown Source:

How do I burn a DVD ISO using the terminal

There are several ways to do this, but here are just two ways that I use regularly. Please replace /dev/sr1 with the device identifier of your target drive (find out what it is with inxi -d), and replace myiso with your iso and its disk location if necessary.

    wodim -eject -tao speed=2 dev=/dev/sr1 -v -data myiso.iso

    growisofs -dvd-compat -Z /dev/sr1=myiso.iso

More information about the read and write capabilities of your drive can be found with the following command, again substututing my example /dev with your device identifier:



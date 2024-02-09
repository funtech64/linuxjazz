sudo apt-get install xrdp



sudo apt-get install ubuntu-desktop --no-install-recommends
sudo apt-get install xrdp


Step 5: Edit the xrdp.ini file so that the proper port, username and password are used by XRDP:

By default, XRDP will open new instances of a session upon each login. These instances will also utilize unique port numbers. To avoid mirroring sessions over multiple ports, the port number must be statically identified at the XRDP login screen (this can be done within the xrdp.ini file).

To edit this file, type:
sudo vim /etc/xrdp/xrdp.ini

At the end of the [xrdp1] code block, there is a line for defining the port number value. We are only concerned with the [xrdp1] block, as it contains default values for sesman-Xvnc type connections. By default, the port value is -1 which instructs the XRDP session to search for a newly available port on which to open the connection. We want to be able to specify the port at login. We also want to be able to specify the username and password (IP should be left at the loopback address). The bottom four lines of our code block for [xrdp1] should now read:

a. username=ask
b. password=ask
c. ip=127.0.0.1
d. port=ask -1

By changing the port to “ask -1” we instruct XRDP to prompt the user for the port number at login, and autofill its value to -1 (this is important and is needed for your first RDP login).


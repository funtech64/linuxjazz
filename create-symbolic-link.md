

Step 3. Create symbolic link between the new and old folder.

ln -s /pia/.pia_manager /home/yourusername/.pia_manager

Now reboot and PIA should connect. Does it work this time round or are you shown the same issue? Please let us know. With regards to your other linux system, can you provide more details? Are you using our app with it as well, or openVPN settings within your network manager? I await your reply and thank you for your patience while we help sort this out!

:-)chip@dale ~ $ ls -l
total 116
drwxr-xr-x  2 chip chip  4096 Oct 14 02:26 Desktop
drwxr-xr-x  8 chip chip  4096 Sep 29 10:54 Documents
drwxr-xr-x  2 chip chip  4096 Oct 14 02:16 Downloads
drwx------ 15 chip chip  4096 Oct 13 13:32 Dropbox
drwxr-xr-x  6 chip chip  4096 Sep 29 12:32 GNS3
-rw-r--r--  1 root root 58118 Sep 29 12:27 index.html
drwxr-xr-x  2 chip chip  4096 Sep 29 10:51 Music
drwxr-xr-x 12 chip chip 12288 Oct 14 00:21 Pictures
drwxr-xr-x  2 chip chip  4096 Sep 29 10:51 Public
drwxr-xr-x  2 chip chip  4096 Sep 29 10:51 Templates
drwxr-xr-x  2 chip chip  4096 Sep 29 10:51 Videos
drwxr-xr-x  2 chip chip  4096 Oct 14 03:09 vmware
chip@dale ~ $ ls -1
Desktop
Documents
Downloads
Dropbox
GNS3
index.html
Music
Pictures
Public
Templates
Videos
vmware


chip@dale ~ $ ls -s /home/chip/vmware /media/chip/Jacob/vmware
/home/chip/vmware:
total 0

/media/chip/Jacob/vmware:
total 36
 4 2015 Win 7-10   4 FreeNAS   4 GNS3 VM  24 vmare_UnityMode Help.odt
chip@dale ~ $ 







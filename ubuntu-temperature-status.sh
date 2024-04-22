#!/bin/sh

# Source: Ask Ubuntu 
# How do I get the CPU temperature?
# Install lm-sensors

apt-get install lm-sensors 

# After installation type the following in terminal:

sensors-detect

# You may also need to run:
# sudo service kmod start
# It will ask you few questions. Answer Yes for all of them. Finally to get your CPU temperature type sensors in your terminal.


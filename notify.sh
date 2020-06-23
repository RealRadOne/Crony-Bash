#!/bin/bash
sudo -u radone DISPLAY=:0 
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/X_userid/bus 
notify-send 'Hello world!' 'This is an example notification.'
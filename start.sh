#!/bin/bash

addgroup --gid $gid user
adduser --gid $gid --uid $uid --no-create-home --disabled-password --gecos ,,,,, user

# fix ipc channel bug, pass higher shm-size (>64M, 1GiB here) to firefox
su -p -c "/usr/bin/firefox-esr --shm-size 1000000000" - user

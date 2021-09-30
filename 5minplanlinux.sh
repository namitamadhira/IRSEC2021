#!/bin/bash
# IRSEC 2021 Linux 5 minute plan
# STEP 1: hydrate.
# STEP 2: treat this as just another day at work.
# STEP 3: get to work.

# getting root
sudo su

# make backup
mkdir /var/backups
cp -R /home/user/data /var/backups

cp -R /var/backups/config.txt /home/user/data

apt update
# installing and starting nginx
apt install nginx
nginx -v
nginx

# installing and starting ssh
apt install openssh-server
systemctl enable ssh
systemctl start ssh

# limiting sudo users
# cp /etc/passwd "users.txt"
# usernames="users.txt"
# users=$(cat $usernames)
# cuser=$(whoami)
# for u in $users
# do
# if [ $u != $cuser ]; then
# deluser $u
# fi
#done

# allowing ssh for only root users.
# vi /etc/ssh/sshd_config
# press i
# "AllowUsers root'

# viewing log files
cd /var/log
ls
